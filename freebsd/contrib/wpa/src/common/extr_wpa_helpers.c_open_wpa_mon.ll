; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_helpers.c_open_wpa_mon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_helpers.c_open_wpa_mon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_ctrl* @open_wpa_mon(i8* %0) #0 {
  %2 = alloca %struct.wpa_ctrl*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpa_ctrl*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.wpa_ctrl* @wpa_open_ctrl(i8* %5)
  store %struct.wpa_ctrl* %6, %struct.wpa_ctrl** %4, align 8
  %7 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %4, align 8
  %8 = icmp eq %struct.wpa_ctrl* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.wpa_ctrl* null, %struct.wpa_ctrl** %2, align 8
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %4, align 8
  %12 = call i64 @wpa_ctrl_attach(%struct.wpa_ctrl* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %4, align 8
  %16 = call i32 @wpa_ctrl_close(%struct.wpa_ctrl* %15)
  store %struct.wpa_ctrl* null, %struct.wpa_ctrl** %2, align 8
  br label %19

17:                                               ; preds = %10
  %18 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %4, align 8
  store %struct.wpa_ctrl* %18, %struct.wpa_ctrl** %2, align 8
  br label %19

19:                                               ; preds = %17, %14, %9
  %20 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %2, align 8
  ret %struct.wpa_ctrl* %20
}

declare dso_local %struct.wpa_ctrl* @wpa_open_ctrl(i8*) #1

declare dso_local i64 @wpa_ctrl_attach(%struct.wpa_ctrl*) #1

declare dso_local i32 @wpa_ctrl_close(%struct.wpa_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
