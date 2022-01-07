; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.c___thr_rwlock_rdlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.c___thr_rwlock_rdlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urwlock = type { i32 }
%struct.timespec = type { i32 }
%struct._umtx_time = type { i32, i32, %struct.timespec }

@UMTX_ABSTIME = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@UMTX_OP_RW_RDLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__thr_rwlock_rdlock(%struct.urwlock* %0, i32 %1, %struct.timespec* %2) #0 {
  %4 = alloca %struct.urwlock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca %struct._umtx_time, align 4
  %8 = alloca %struct._umtx_time*, align 8
  %9 = alloca i64, align 8
  store %struct.urwlock* %0, %struct.urwlock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %10 = load %struct.timespec*, %struct.timespec** %6, align 8
  %11 = icmp eq %struct.timespec* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct._umtx_time* null, %struct._umtx_time** %8, align 8
  store i64 0, i64* %9, align 8
  br label %22

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %7, i32 0, i32 2
  %15 = load %struct.timespec*, %struct.timespec** %6, align 8
  %16 = bitcast %struct.timespec* %14 to i8*
  %17 = bitcast %struct.timespec* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load i32, i32* @UMTX_ABSTIME, align 4
  %19 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %7, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @CLOCK_REALTIME, align 4
  %21 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  store %struct._umtx_time* %7, %struct._umtx_time** %8, align 8
  store i64 12, i64* %9, align 8
  br label %22

22:                                               ; preds = %13, %12
  %23 = load %struct.urwlock*, %struct.urwlock** %4, align 8
  %24 = load i32, i32* @UMTX_OP_RW_RDLOCK, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %9, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct._umtx_time*, %struct._umtx_time** %8, align 8
  %29 = call i32 @_umtx_op_err(%struct.urwlock* %23, i32 %24, i32 %25, i8* %27, %struct._umtx_time* %28)
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_umtx_op_err(%struct.urwlock*, i32, i32, i8*, %struct._umtx_time*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
