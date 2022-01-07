; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_query_ap.c_gas_query_rx_comeback_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_query_ap.c_gas_query_rx_comeback_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gas_query_ap = type { %struct.gas_query_pending* }
%struct.gas_query_pending = type { i32, i32, i32*, i64, i64, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"GAS: No response to comeback request received (retry=%u)\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"GAS: Retry GAS query due to comeback response timeout\00", align 1
@gas_query_tx_comeback_timeout = common dso_local global i32 0, align 4
@gas_query_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @gas_query_rx_comeback_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gas_query_rx_comeback_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gas_query_ap*, align 8
  %6 = alloca %struct.gas_query_pending*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.gas_query_ap*
  store %struct.gas_query_ap* %9, %struct.gas_query_ap** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.gas_query_pending*
  store %struct.gas_query_pending* %11, %struct.gas_query_pending** %6, align 8
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %14 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.gas_query_ap*, %struct.gas_query_ap** %5, align 8
  %18 = getelementptr inbounds %struct.gas_query_ap, %struct.gas_query_ap* %17, i32 0, i32 0
  %19 = load %struct.gas_query_pending*, %struct.gas_query_pending** %18, align 8
  %20 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %21 = icmp ne %struct.gas_query_pending* %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %24 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %2
  br label %72

28:                                               ; preds = %22
  %29 = load %struct.gas_query_ap*, %struct.gas_query_ap** %5, align 8
  %30 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %31 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gas_query_new_dialog_token(%struct.gas_query_ap* %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %72

37:                                               ; preds = %28
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %41 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %44 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %47 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32* @wpabuf_mhead_u8(i32 %48)
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %45, i32* %50, align 4
  %51 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %52 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %54 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %56 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @wpabuf_free(i32* %57)
  %59 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %60 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* @gas_query_tx_comeback_timeout, align 4
  %62 = load %struct.gas_query_ap*, %struct.gas_query_ap** %5, align 8
  %63 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %64 = call i32 @eloop_cancel_timeout(i32 %61, %struct.gas_query_ap* %62, %struct.gas_query_pending* %63)
  %65 = load i32, i32* @gas_query_timeout, align 4
  %66 = load %struct.gas_query_ap*, %struct.gas_query_ap** %5, align 8
  %67 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %68 = call i32 @eloop_cancel_timeout(i32 %65, %struct.gas_query_ap* %66, %struct.gas_query_pending* %67)
  %69 = load %struct.gas_query_ap*, %struct.gas_query_ap** %5, align 8
  %70 = load %struct.gas_query_pending*, %struct.gas_query_pending** %6, align 8
  %71 = call i32 @gas_query_tx_initial_req(%struct.gas_query_ap* %69, %struct.gas_query_pending* %70)
  br label %72

72:                                               ; preds = %37, %36, %27
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @gas_query_new_dialog_token(%struct.gas_query_ap*, i32) #1

declare dso_local i32* @wpabuf_mhead_u8(i32) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.gas_query_ap*, %struct.gas_query_pending*) #1

declare dso_local i32 @gas_query_tx_initial_req(%struct.gas_query_ap*, %struct.gas_query_pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
