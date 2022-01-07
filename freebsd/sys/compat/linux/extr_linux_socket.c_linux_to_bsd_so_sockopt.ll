; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_to_bsd_so_sockopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_to_bsd_so_sockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SO_DEBUG = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@SO_DONTROUTE = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@SO_OOBINLINE = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@LOCAL_PEERCRED = common dso_local global i32 0, align 4
@SO_RCVLOWAT = common dso_local global i32 0, align 4
@SO_SNDLOWAT = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@SO_TIMESTAMP = common dso_local global i32 0, align 4
@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @linux_to_bsd_so_sockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_to_bsd_so_sockopt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %41 [
    i32 143, label %5
    i32 133, label %7
    i32 128, label %9
    i32 141, label %11
    i32 142, label %13
    i32 144, label %15
    i32 132, label %17
    i32 136, label %19
    i32 140, label %21
    i32 138, label %23
    i32 139, label %25
    i32 137, label %27
    i32 135, label %29
    i32 131, label %31
    i32 134, label %33
    i32 130, label %35
    i32 129, label %37
    i32 145, label %39
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @SO_DEBUG, align 4
  store i32 %6, i32* %2, align 4
  br label %42

7:                                                ; preds = %1
  %8 = load i32, i32* @SO_REUSEADDR, align 4
  store i32 %8, i32* %2, align 4
  br label %42

9:                                                ; preds = %1
  %10 = load i32, i32* @SO_TYPE, align 4
  store i32 %10, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load i32, i32* @SO_ERROR, align 4
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load i32, i32* @SO_DONTROUTE, align 4
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load i32, i32* @SO_BROADCAST, align 4
  store i32 %16, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load i32, i32* @SO_SNDBUF, align 4
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load i32, i32* @SO_RCVBUF, align 4
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %1
  %22 = load i32, i32* @SO_KEEPALIVE, align 4
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %1
  %24 = load i32, i32* @SO_OOBINLINE, align 4
  store i32 %24, i32* %2, align 4
  br label %42

25:                                               ; preds = %1
  %26 = load i32, i32* @SO_LINGER, align 4
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %1
  %28 = load i32, i32* @LOCAL_PEERCRED, align 4
  store i32 %28, i32* %2, align 4
  br label %42

29:                                               ; preds = %1
  %30 = load i32, i32* @SO_RCVLOWAT, align 4
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %1
  %32 = load i32, i32* @SO_SNDLOWAT, align 4
  store i32 %32, i32* %2, align 4
  br label %42

33:                                               ; preds = %1
  %34 = load i32, i32* @SO_RCVTIMEO, align 4
  store i32 %34, i32* %2, align 4
  br label %42

35:                                               ; preds = %1
  %36 = load i32, i32* @SO_SNDTIMEO, align 4
  store i32 %36, i32* %2, align 4
  br label %42

37:                                               ; preds = %1
  %38 = load i32, i32* @SO_TIMESTAMP, align 4
  store i32 %38, i32* %2, align 4
  br label %42

39:                                               ; preds = %1
  %40 = load i32, i32* @SO_ACCEPTCONN, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
