; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_get_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_get_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_privsep_data = type { i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@PRIVSEP_CMD_GET_BSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @wpa_driver_privsep_get_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_privsep_get_bssid(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpa_driver_privsep_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wpa_driver_privsep_data*
  store %struct.wpa_driver_privsep_data* %10, %struct.wpa_driver_privsep_data** %6, align 8
  %11 = load i64, i64* @ETH_ALEN, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %6, align 8
  %13 = load i32, i32* @PRIVSEP_CMD_GET_BSSID, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @wpa_priv_cmd(%struct.wpa_driver_privsep_data* %12, i32 %13, i32* null, i32 0, i32* %14, i64* %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @ETH_ALEN, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %2
  store i32 -1, i32* %3, align 4
  br label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @wpa_priv_cmd(%struct.wpa_driver_privsep_data*, i32, i32*, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
