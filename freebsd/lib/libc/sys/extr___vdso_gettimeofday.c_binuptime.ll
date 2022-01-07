; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sys/extr___vdso_gettimeofday.c_binuptime.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sys/extr___vdso_gettimeofday.c_binuptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bintime = type { i32 }
%struct.vdso_timekeep = type { i64, %struct.vdso_timehands*, i32 }
%struct.vdso_timehands = type { i64, i32, i32, %struct.bintime }

@ENOSYS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bintime*, %struct.vdso_timekeep*, i32)* @binuptime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binuptime(%struct.bintime* %0, %struct.vdso_timekeep* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bintime*, align 8
  %6 = alloca %struct.vdso_timekeep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vdso_timehands*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bintime* %0, %struct.bintime** %5, align 8
  store %struct.vdso_timekeep* %1, %struct.vdso_timekeep** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %13

13:                                               ; preds = %80, %3
  %14 = load %struct.vdso_timekeep*, %struct.vdso_timekeep** %6, align 8
  %15 = getelementptr inbounds %struct.vdso_timekeep, %struct.vdso_timekeep* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOSYS, align 4
  store i32 %19, i32* %4, align 4
  br label %83

20:                                               ; preds = %13
  %21 = load %struct.vdso_timekeep*, %struct.vdso_timekeep** %6, align 8
  %22 = getelementptr inbounds %struct.vdso_timekeep, %struct.vdso_timekeep* %21, i32 0, i32 0
  %23 = call i64 @atomic_load_acq_32(i64* %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.vdso_timekeep*, %struct.vdso_timekeep** %6, align 8
  %25 = getelementptr inbounds %struct.vdso_timekeep, %struct.vdso_timekeep* %24, i32 0, i32 1
  %26 = load %struct.vdso_timehands*, %struct.vdso_timehands** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %26, i64 %27
  store %struct.vdso_timehands* %28, %struct.vdso_timehands** %8, align 8
  %29 = load %struct.vdso_timehands*, %struct.vdso_timehands** %8, align 8
  %30 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %29, i32 0, i32 0
  %31 = call i64 @atomic_load_acq_32(i64* %30)
  store i64 %31, i64* %10, align 8
  %32 = load %struct.bintime*, %struct.bintime** %5, align 8
  %33 = load %struct.vdso_timehands*, %struct.vdso_timehands** %8, align 8
  %34 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %33, i32 0, i32 3
  %35 = bitcast %struct.bintime* %32 to i8*
  %36 = bitcast %struct.bintime* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 8 %36, i64 4, i1 false)
  %37 = load %struct.vdso_timehands*, %struct.vdso_timehands** %8, align 8
  %38 = call i32 @tc_delta(%struct.vdso_timehands* %37, i32* %11)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  br label %65

43:                                               ; preds = %20
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %4, align 4
  br label %83

48:                                               ; preds = %43
  %49 = load %struct.bintime*, %struct.bintime** %5, align 8
  %50 = load %struct.vdso_timehands*, %struct.vdso_timehands** %8, align 8
  %51 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %52, %53
  %55 = call i32 @bintime_addx(%struct.bintime* %49, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.bintime*, %struct.bintime** %5, align 8
  %60 = load %struct.vdso_timehands*, %struct.vdso_timehands** %8, align 8
  %61 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %60, i32 0, i32 2
  %62 = call i32 @bintime_add(%struct.bintime* %59, i32* %61)
  br label %63

63:                                               ; preds = %58, %48
  %64 = call i32 (...) @atomic_thread_fence_acq()
  br label %65

65:                                               ; preds = %63, %42
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.vdso_timekeep*, %struct.vdso_timekeep** %6, align 8
  %68 = getelementptr inbounds %struct.vdso_timekeep, %struct.vdso_timekeep* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* %10, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.vdso_timehands*, %struct.vdso_timehands** %8, align 8
  %77 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br label %80

80:                                               ; preds = %74, %71, %65
  %81 = phi i1 [ true, %71 ], [ true, %65 ], [ %79, %74 ]
  br i1 %81, label %13, label %82

82:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %46, %18
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @atomic_load_acq_32(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tc_delta(%struct.vdso_timehands*, i32*) #1

declare dso_local i32 @bintime_addx(%struct.bintime*, i32) #1

declare dso_local i32 @bintime_add(%struct.bintime*, i32*) #1

declare dso_local i32 @atomic_thread_fence_acq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
