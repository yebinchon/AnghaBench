; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_gas_query.c_gas_query_start_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_gas_query.c_gas_query_start_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_radio_work = type { i64, %struct.gas_query_pending* }
%struct.gas_query_pending = type { %struct.gas_query* }
%struct.gas_query = type { %struct.wpa_radio_work*, %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { i32 }

@GAS_QUERY_DELETED_AT_DEINIT = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to assign random MAC address for GAS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_radio_work*, i32)* @gas_query_start_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gas_query_start_cb(%struct.wpa_radio_work* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_radio_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gas_query_pending*, align 8
  %6 = alloca %struct.gas_query*, align 8
  %7 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_radio_work* %0, %struct.wpa_radio_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %8, i32 0, i32 1
  %10 = load %struct.gas_query_pending*, %struct.gas_query_pending** %9, align 8
  store %struct.gas_query_pending* %10, %struct.gas_query_pending** %5, align 8
  %11 = load %struct.gas_query_pending*, %struct.gas_query_pending** %5, align 8
  %12 = getelementptr inbounds %struct.gas_query_pending, %struct.gas_query_pending* %11, i32 0, i32 0
  %13 = load %struct.gas_query*, %struct.gas_query** %12, align 8
  store %struct.gas_query* %13, %struct.gas_query** %6, align 8
  %14 = load %struct.gas_query*, %struct.gas_query** %6, align 8
  %15 = getelementptr inbounds %struct.gas_query, %struct.gas_query* %14, i32 0, i32 1
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  store %struct.wpa_supplicant* %16, %struct.wpa_supplicant** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %21 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.gas_query*, %struct.gas_query** %6, align 8
  %26 = getelementptr inbounds %struct.gas_query, %struct.gas_query* %25, i32 0, i32 0
  store %struct.wpa_radio_work* null, %struct.wpa_radio_work** %26, align 8
  %27 = load %struct.gas_query*, %struct.gas_query** %6, align 8
  %28 = load %struct.gas_query_pending*, %struct.gas_query_pending** %5, align 8
  %29 = load i32, i32* @GAS_QUERY_DELETED_AT_DEINIT, align 4
  %30 = call i32 @gas_query_done(%struct.gas_query* %27, %struct.gas_query_pending* %28, i32 %29)
  br label %53

31:                                               ; preds = %19
  %32 = load %struct.gas_query_pending*, %struct.gas_query_pending** %5, align 8
  %33 = call i32 @gas_query_free(%struct.gas_query_pending* %32, i32 1)
  br label %53

34:                                               ; preds = %2
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %36 = call i64 @wpas_update_random_addr_disassoc(%struct.wpa_supplicant* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = call i32 @wpa_msg(%struct.wpa_supplicant* %39, i32 %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.gas_query_pending*, %struct.gas_query_pending** %5, align 8
  %43 = call i32 @gas_query_free(%struct.gas_query_pending* %42, i32 1)
  %44 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %45 = call i32 @radio_work_done(%struct.wpa_radio_work* %44)
  br label %53

46:                                               ; preds = %34
  %47 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %48 = load %struct.gas_query*, %struct.gas_query** %6, align 8
  %49 = getelementptr inbounds %struct.gas_query, %struct.gas_query* %48, i32 0, i32 0
  store %struct.wpa_radio_work* %47, %struct.wpa_radio_work** %49, align 8
  %50 = load %struct.gas_query*, %struct.gas_query** %6, align 8
  %51 = load %struct.gas_query_pending*, %struct.gas_query_pending** %5, align 8
  %52 = call i32 @gas_query_tx_initial_req(%struct.gas_query* %50, %struct.gas_query_pending* %51)
  br label %53

53:                                               ; preds = %46, %38, %31, %24
  ret void
}

declare dso_local i32 @gas_query_done(%struct.gas_query*, %struct.gas_query_pending*, i32) #1

declare dso_local i32 @gas_query_free(%struct.gas_query_pending*, i32) #1

declare dso_local i64 @wpas_update_random_addr_disassoc(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @radio_work_done(%struct.wpa_radio_work*) #1

declare dso_local i32 @gas_query_tx_initial_req(%struct.gas_query*, %struct.gas_query_pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
