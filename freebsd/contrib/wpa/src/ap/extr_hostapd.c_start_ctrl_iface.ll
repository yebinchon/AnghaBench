; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_start_ctrl_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_start_ctrl_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, %struct.TYPE_4__*, %struct.hostapd_data** }
%struct.TYPE_4__ = type { i64 (%struct.hostapd_data*)* }
%struct.hostapd_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to setup control interface for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*)* @start_ctrl_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_ctrl_iface(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %6 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %12 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64 (%struct.hostapd_data*)*, i64 (%struct.hostapd_data*)** %14, align 8
  %16 = icmp ne i64 (%struct.hostapd_data*)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %53

18:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %49, %18
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %22 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %19
  %26 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %27 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %26, i32 0, i32 2
  %28 = load %struct.hostapd_data**, %struct.hostapd_data*** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %28, i64 %29
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %30, align 8
  store %struct.hostapd_data* %31, %struct.hostapd_data** %5, align 8
  %32 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %33 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64 (%struct.hostapd_data*)*, i64 (%struct.hostapd_data*)** %35, align 8
  %37 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %38 = call i64 %36(%struct.hostapd_data* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %25
  %41 = load i32, i32* @MSG_ERROR, align 4
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %43 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 -1, i32* %2, align 4
  br label %53

48:                                               ; preds = %25
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %4, align 8
  br label %19

52:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %40, %17
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
