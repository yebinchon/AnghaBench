; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_rtld.c__thr_rtld_lock_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_rtld.c__thr_rtld_lock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }
%struct.rtld_lock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@URWLOCK_WRITE_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @_thr_rtld_lock_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_thr_rtld_lock_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca %struct.rtld_lock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %7, %struct.pthread** %3, align 8
  %8 = call i32 (...) @SAVE_ERRNO()
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.rtld_lock*
  store %struct.rtld_lock* %10, %struct.rtld_lock** %4, align 8
  %11 = load %struct.rtld_lock*, %struct.rtld_lock** %4, align 8
  %12 = getelementptr inbounds %struct.rtld_lock, %struct.rtld_lock* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rtld_lock*, %struct.rtld_lock** %4, align 8
  %16 = getelementptr inbounds %struct.rtld_lock, %struct.rtld_lock* %15, i32 0, i32 0
  %17 = call i64 @_thr_rwlock_unlock(%struct.TYPE_2__* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @URWLOCK_WRITE_OWNER, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.pthread*, %struct.pthread** %3, align 8
  %26 = getelementptr inbounds %struct.pthread, %struct.pthread* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.pthread*, %struct.pthread** %3, align 8
  %31 = call i32 @THR_CRITICAL_LEAVE(%struct.pthread* %30)
  br label %32

32:                                               ; preds = %29, %1
  %33 = call i32 (...) @RESTORE_ERRNO()
  ret void
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @SAVE_ERRNO(...) #1

declare dso_local i64 @_thr_rwlock_unlock(%struct.TYPE_2__*) #1

declare dso_local i32 @THR_CRITICAL_LEAVE(%struct.pthread*) #1

declare dso_local i32 @RESTORE_ERRNO(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
