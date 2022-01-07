; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_reconcli.c_closer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_reconcli.c_closer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@closermtx = common dso_local global i32 0, align 4
@quit = common dso_local global i32 0, align 4
@riseandwhine = common dso_local global i64 0, align 8
@closercv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @closer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @closer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @pthread_mutex_lock(i32* @closermtx)
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32, i32* @quit, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %13, %8
  %10 = load i64, i64* @riseandwhine, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @pthread_cond_wait(i32* @closercv, i32* @closermtx)
  br label %9

15:                                               ; preds = %9
  store i64 0, i64* @riseandwhine, align 8
  %16 = call i32 @pthread_mutex_unlock(i32* @closermtx)
  %17 = call i32 (...) @random()
  %18 = srem i32 %17, 100000
  %19 = call i32 @usleep(i32 %18)
  %20 = call i32 @closefrom(i32 3)
  %21 = call i32 @pthread_mutex_lock(i32* @closermtx)
  br label %4

22:                                               ; preds = %4
  %23 = call i32 @pthread_mutex_unlock(i32* @closermtx)
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @closefrom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
