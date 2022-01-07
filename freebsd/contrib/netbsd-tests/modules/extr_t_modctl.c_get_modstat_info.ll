; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/modules/extr_t_modctl.c_get_modstat_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/modules/extr_t_modctl.c_get_modstat_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.iovec = type { i64, i64 }

@errno = common dso_local global i32 0, align 4
@MODCTL_STAT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"modctl(MODCTL_STAT) failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to query module status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*)* @get_modstat_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_modstat_info(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.iovec, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = call i32 (...) @check_permission()
  store i64 4096, i64* %6, align 8
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @malloc(i64 %12)
  %14 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  store i32 0, i32* @errno, align 4
  %17 = load i32, i32* @MODCTL_STAT, align 4
  %18 = call i64 @modctl(i32 %17, %struct.iovec* %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @strerror(i32 %23)
  %25 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %20, %11
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp uge i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %39

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @free(i64 %35)
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  br label %11

39:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = udiv i64 %41, 4
  store i64 %42, i64* %6, align 8
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %8, align 8
  br label %46

46:                                               ; preds = %72, %39
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %77

55:                                               ; preds = %53
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = call i64 @strcmp(i32 %58, i8* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = icmp ne %struct.TYPE_3__* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = bitcast %struct.TYPE_3__* %66 to i8*
  %69 = bitcast %struct.TYPE_3__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  br label %70

70:                                               ; preds = %65, %62
  store i32 1, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 1
  store %struct.TYPE_3__* %74, %struct.TYPE_3__** %8, align 8
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* %6, align 8
  br label %46

77:                                               ; preds = %53
  %78 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @free(i64 %79)
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @check_permission(...) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @modctl(i32, %struct.iovec*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
