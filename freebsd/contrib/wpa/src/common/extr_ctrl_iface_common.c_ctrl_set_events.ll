; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ctrl_iface_common.c_ctrl_set_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ctrl_iface_common.c_ctrl_set_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ctrl_dst = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"probe_rx_events=\00", align 1
@WPA_EVENT_RX_PROBE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ctrl_dst*, i8*)* @ctrl_set_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_events(%struct.wpa_ctrl_dst* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_ctrl_dst*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_ctrl_dst* %0, %struct.wpa_ctrl_dst** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @os_strchr(i8* %12, i8 signext 61)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %50

17:                                               ; preds = %11
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @atoi(i8* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %17
  store i32 -1, i32* %3, align 4
  br label %50

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @str_starts(i8* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @WPA_EVENT_RX_PROBE_REQUEST, align 4
  %37 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %48

41:                                               ; preds = %32
  %42 = load i32, i32* @WPA_EVENT_RX_PROBE_REQUEST, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.wpa_ctrl_dst*, %struct.wpa_ctrl_dst** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_ctrl_dst, %struct.wpa_ctrl_dst* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %41, %35
  br label %49

49:                                               ; preds = %48, %28
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %27, %16, %10
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @str_starts(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
