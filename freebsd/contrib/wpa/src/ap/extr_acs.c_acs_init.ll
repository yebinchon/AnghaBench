; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"ACS: Automatic channel selection started, this may take a bit\00", align 1
@WPA_DRIVER_FLAGS_ACS_OFFLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ACS: Offloading to driver\00", align 1
@HOSTAPD_CHAN_INVALID = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_ACS = common dso_local global i32 0, align 4
@HAPD_IFACE_ACS = common dso_local global i32 0, align 4
@ACS_EVENT_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acs_init(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %4 = load i32, i32* @MSG_INFO, align 4
  %5 = call i32 @wpa_printf(i32 %4, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @WPA_DRIVER_FLAGS_ACS_OFFLOAD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i32, i32* @MSG_INFO, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %16 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i64 @hostapd_drv_do_acs(%struct.TYPE_2__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @HOSTAPD_CHAN_INVALID, align 4
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %12
  %25 = load i32, i32* @HOSTAPD_CHAN_ACS, align 4
  store i32 %25, i32* %2, align 4
  br label %56

26:                                               ; preds = %1
  %27 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %28 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @HOSTAPD_CHAN_INVALID, align 4
  store i32 %32, i32* %2, align 4
  br label %56

33:                                               ; preds = %26
  %34 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %35 = call i32 @acs_cleanup(%struct.hostapd_iface* %34)
  %36 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %37 = call i64 @acs_request_scan(%struct.hostapd_iface* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @HOSTAPD_CHAN_INVALID, align 4
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %33
  %42 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %43 = load i32, i32* @HAPD_IFACE_ACS, align 4
  %44 = call i32 @hostapd_set_state(%struct.hostapd_iface* %42, i32 %43)
  %45 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %46 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MSG_INFO, align 4
  %53 = load i32, i32* @ACS_EVENT_STARTED, align 4
  %54 = call i32 @wpa_msg(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @HOSTAPD_CHAN_ACS, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %41, %39, %31, %24, %22
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @hostapd_drv_do_acs(%struct.TYPE_2__*) #1

declare dso_local i32 @acs_cleanup(%struct.hostapd_iface*) #1

declare dso_local i64 @acs_request_scan(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_set_state(%struct.hostapd_iface*, i32) #1

declare dso_local i32 @wpa_msg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
