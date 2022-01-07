; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem_new.c_usem_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem_new.c_usem_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._usem2 = type { i32 }
%struct.timespec = type { i32 }
%struct.anon = type { %struct._umtx_time, %struct.timespec }
%struct._umtx_time = type { %struct.timespec, i32, i32 }

@TIMER_ABSTIME = common dso_local global i32 0, align 4
@UMTX_ABSTIME = common dso_local global i32 0, align 4
@UMTX_OP_SEM2_WAIT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._usem2*, i32, i32, %struct.timespec*, %struct.timespec*)* @usem_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usem_wait(%struct._usem2* %0, i32 %1, i32 %2, %struct.timespec* %3, %struct.timespec* %4) #0 {
  %6 = alloca %struct._usem2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca %struct.anon, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct._usem2* %0, %struct._usem2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.timespec* %3, %struct.timespec** %9, align 8
  store %struct.timespec* %4, %struct.timespec** %10, align 8
  %15 = load %struct.timespec*, %struct.timespec** %9, align 8
  %16 = icmp eq %struct.timespec* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  br label %39

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %21 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @TIMER_ABSTIME, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @UMTX_ABSTIME, align 4
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %32 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %34 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %33, i32 0, i32 0
  %35 = load %struct.timespec*, %struct.timespec** %9, align 8
  %36 = bitcast %struct.timespec* %34 to i8*
  %37 = bitcast %struct.timespec* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = bitcast %struct.anon* %11 to i8*
  store i8* %38, i8** %12, align 8
  store i64 16, i64* %13, align 8
  br label %39

39:                                               ; preds = %29, %17
  %40 = load %struct._usem2*, %struct._usem2** %6, align 8
  %41 = load i32, i32* @UMTX_OP_SEM2_WAIT, align 4
  %42 = load i64, i64* %13, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @_umtx_op(%struct._usem2* %40, i32 %41, i32 0, i8* %43, i8* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %68

48:                                               ; preds = %39
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @EINTR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @TIMER_ABSTIME, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.timespec*, %struct.timespec** %9, align 8
  %59 = icmp ne %struct.timespec* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.timespec*, %struct.timespec** %10, align 8
  %62 = icmp ne %struct.timespec* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.timespec*, %struct.timespec** %10, align 8
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %66 = bitcast %struct.timespec* %64 to i8*
  %67 = bitcast %struct.timespec* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  br label %68

68:                                               ; preds = %63, %60, %57, %52, %48, %39
  %69 = load i32, i32* %14, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_umtx_op(%struct._usem2*, i32, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
