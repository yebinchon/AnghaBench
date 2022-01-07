; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_get_capa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_privsep.c_wpa_driver_privsep_get_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_capa = type { i64, i32*, i32* }
%struct.wpa_driver_privsep_data = type { i32 }

@PRIVSEP_CMD_GET_CAPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.wpa_driver_capa*)* @wpa_driver_privsep_get_capa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_privsep_get_capa(i8* %0, %struct.wpa_driver_capa* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_driver_capa*, align 8
  %6 = alloca %struct.wpa_driver_privsep_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wpa_driver_capa* %1, %struct.wpa_driver_capa** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wpa_driver_privsep_data*
  store %struct.wpa_driver_privsep_data* %10, %struct.wpa_driver_privsep_data** %6, align 8
  store i64 24, i64* %8, align 8
  %11 = load %struct.wpa_driver_privsep_data*, %struct.wpa_driver_privsep_data** %6, align 8
  %12 = load i32, i32* @PRIVSEP_CMD_GET_CAPA, align 4
  %13 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %14 = call i32 @wpa_priv_cmd(%struct.wpa_driver_privsep_data* %11, i32 %12, i32* null, i32 0, %struct.wpa_driver_capa* %13, i64* %8)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 24
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 -1, i32* %3, align 4
  br label %28

21:                                               ; preds = %17
  %22 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %23 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %25 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %20
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @wpa_priv_cmd(%struct.wpa_driver_privsep_data*, i32, i32*, i32, %struct.wpa_driver_capa*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
