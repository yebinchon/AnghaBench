; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd_fbsd.c_auditd_relay_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd_fbsd.c_auditd_relay_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGHUP = common dso_local global i32 0, align 4
@sighups = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterms = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@sigchlds = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@sigalrms = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auditd_relay_signal(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @SIGHUP, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @sighups, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @sighups, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @SIGTERM, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @sigterms, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @sigterms, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @SIGCHLD, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @sigchlds, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @sigchlds, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @SIGALRM, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @sigalrms, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @sigalrms, align 4
  br label %30

30:                                               ; preds = %27, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
