; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_fptr_wlist.c_fptr_whitelist_comm_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_fptr_wlist.c_fptr_whitelist_comm_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fptr_whitelist_comm_timer(void (i8*)* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca void (i8*)*, align 8
  store void (i8*)* %0, void (i8*)** %3, align 8
  %4 = load void (i8*)*, void (i8*)** %3, align 8
  %5 = icmp eq void (i8*)* %4, @pending_udp_timer_cb
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %43

7:                                                ; preds = %1
  %8 = load void (i8*)*, void (i8*)** %3, align 8
  %9 = icmp eq void (i8*)* %8, @outnet_tcptimer
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %43

11:                                               ; preds = %7
  %12 = load void (i8*)*, void (i8*)** %3, align 8
  %13 = icmp eq void (i8*)* %12, @pending_udp_timer_delay_cb
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %43

15:                                               ; preds = %11
  %16 = load void (i8*)*, void (i8*)** %3, align 8
  %17 = icmp eq void (i8*)* %16, @worker_stat_timer_cb
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %43

19:                                               ; preds = %15
  %20 = load void (i8*)*, void (i8*)** %3, align 8
  %21 = icmp eq void (i8*)* %20, @worker_probe_timer_cb
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %43

23:                                               ; preds = %19
  %24 = load void (i8*)*, void (i8*)** %3, align 8
  %25 = icmp eq void (i8*)* %24, @auth_xfer_timer
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %43

27:                                               ; preds = %23
  %28 = load void (i8*)*, void (i8*)** %3, align 8
  %29 = icmp eq void (i8*)* %28, @auth_xfer_probe_timer_callback
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %43

31:                                               ; preds = %27
  %32 = load void (i8*)*, void (i8*)** %3, align 8
  %33 = icmp eq void (i8*)* %32, @auth_xfer_transfer_timer_callback
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %43

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %34, %30, %26, %22, %18, %14, %10, %6
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local void @pending_udp_timer_cb(i8*) #1

declare dso_local void @outnet_tcptimer(i8*) #1

declare dso_local void @pending_udp_timer_delay_cb(i8*) #1

declare dso_local void @worker_stat_timer_cb(i8*) #1

declare dso_local void @worker_probe_timer_cb(i8*) #1

declare dso_local void @auth_xfer_timer(i8*) #1

declare dso_local void @auth_xfer_probe_timer_callback(i8*) #1

declare dso_local void @auth_xfer_transfer_timer_callback(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
