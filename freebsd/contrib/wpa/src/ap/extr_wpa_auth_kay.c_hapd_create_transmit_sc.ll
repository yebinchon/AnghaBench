; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_kay.c_hapd_create_transmit_sc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_kay.c_hapd_create_transmit_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transmit_sc = type { i32 }
%struct.hostapd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.transmit_sc*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.transmit_sc*, i32)* @hapd_create_transmit_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hapd_create_transmit_sc(i8* %0, %struct.transmit_sc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.transmit_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostapd_data*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.transmit_sc* %1, %struct.transmit_sc** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.hostapd_data*
  store %struct.hostapd_data* %10, %struct.hostapd_data** %8, align 8
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %12 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32, %struct.transmit_sc*, i32)*, i32 (i32, %struct.transmit_sc*, i32)** %14, align 8
  %16 = icmp ne i32 (i32, %struct.transmit_sc*, i32)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %31

18:                                               ; preds = %3
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, %struct.transmit_sc*, i32)*, i32 (i32, %struct.transmit_sc*, i32)** %22, align 8
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %25 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.transmit_sc*, %struct.transmit_sc** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @conf_offset_val(i32 %28)
  %30 = call i32 %23(i32 %26, %struct.transmit_sc* %27, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %18, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @conf_offset_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
