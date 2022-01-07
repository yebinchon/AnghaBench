; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_rx_anqp_vendor_specific.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_rx_anqp_vendor_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.anqp_query_info = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ANQP: Too short vendor specific ANQP Query element\00", align 1
@OUI_WFA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"ANQP: Unsupported vendor OUI %06x\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ANQP: Unsupported WFA vendor type %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i32*, i32*, %struct.anqp_query_info*)* @rx_anqp_vendor_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_anqp_vendor_specific(%struct.hostapd_data* %0, i32* %1, i32* %2, %struct.anqp_query_info* %3) #0 {
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.anqp_query_info*, align 8
  %9 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.anqp_query_info* %3, %struct.anqp_query_info** %8, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = ptrtoint i32* %10 to i64
  %13 = ptrtoint i32* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  %16 = icmp slt i64 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %40

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @WPA_GET_BE24(i32* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32* %24, i32** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @OUI_WFA, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %40

32:                                               ; preds = %20
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %35 [
  ]

35:                                               ; preds = %32
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %17, %28, %35
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @WPA_GET_BE24(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
