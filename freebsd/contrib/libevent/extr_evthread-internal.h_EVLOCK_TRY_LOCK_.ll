; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evthread-internal.h_EVLOCK_TRY_LOCK_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evthread-internal.h_EVLOCK_TRY_LOCK_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*)* }

@evthread_lock_fns_ = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EVTHREAD_TRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @EVLOCK_TRY_LOCK_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EVLOCK_TRY_LOCK_(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @evthread_lock_fns_, i32 0, i32 0), align 8
  %9 = icmp ne i32 (i32, i8*)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @evthread_lock_fns_, i32 0, i32 0), align 8
  %12 = load i32, i32* @EVTHREAD_TRY, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 %11(i32 %12, i8* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %20

19:                                               ; preds = %7, %1
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
