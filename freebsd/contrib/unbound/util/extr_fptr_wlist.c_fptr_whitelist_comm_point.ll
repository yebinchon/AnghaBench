; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_fptr_wlist.c_fptr_whitelist_comm_point.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_fptr_wlist.c_fptr_whitelist_comm_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@worker_handle_request = common dso_local global i32 0, align 4
@outnet_udp_cb = common dso_local global i32 0, align 4
@outnet_tcp_cb = common dso_local global i32 0, align 4
@tube_handle_listen = common dso_local global i32 0, align 4
@auth_xfer_probe_udp_callback = common dso_local global i32 0, align 4
@auth_xfer_transfer_tcp_callback = common dso_local global i32 0, align 4
@auth_xfer_transfer_http_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fptr_whitelist_comm_point(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp eq i32* %4, @worker_handle_request
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %38

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, @outnet_udp_cb
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %38

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, @outnet_tcp_cb
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %38

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %16, @tube_handle_listen
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %38

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = icmp eq i32* %20, @auth_xfer_probe_udp_callback
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %38

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = icmp eq i32* %24, @auth_xfer_transfer_tcp_callback
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %38

27:                                               ; preds = %23
  %28 = load i32*, i32** %3, align 8
  %29 = icmp eq i32* %28, @auth_xfer_transfer_http_callback
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %38

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %30, %26, %22, %18, %14, %10, %6
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
