; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_bss_load.c_get_bss_load_update_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_bss_load.c_get_bss_load_update_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"BSS Load: Invalid BSS load update configuration (period=%u beacon_int=%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i32*, i32*)* @get_bss_load_update_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bss_load_update_timeout(%struct.hostapd_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %12 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* @MSG_ERROR, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  store i32 -1, i32* %4, align 4
  br label %44

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = udiv i32 %35, 1000
  %37 = mul i32 %36, 1024
  %38 = udiv i32 %37, 1000
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = urem i32 %40, 1000
  %42 = mul i32 %41, 1024
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %31, %26
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
