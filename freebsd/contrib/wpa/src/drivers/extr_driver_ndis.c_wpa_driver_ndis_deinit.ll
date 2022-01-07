; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data*, i64, i32*, i64, i32 }

@wpa_driver_ndis_scan_timeout = common dso_local global i32 0, align 4
@wpa_driver_ndis_poll_timeout = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"NDIS: failed to disassociate and turn radio off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wpa_driver_ndis_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_driver_ndis_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wpa_driver_ndis_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.wpa_driver_ndis_data*
  store %struct.wpa_driver_ndis_data* %5, %struct.wpa_driver_ndis_data** %3, align 8
  %6 = load i32, i32* @wpa_driver_ndis_scan_timeout, align 4
  %7 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %8 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @eloop_cancel_timeout(i32 %6, %struct.wpa_driver_ndis_data* %7, i32* %10)
  %12 = load i32, i32* @wpa_driver_ndis_poll_timeout, align 4
  %13 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %14 = call i32 @eloop_cancel_timeout(i32 %12, %struct.wpa_driver_ndis_data* %13, i32* null)
  %15 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %16 = call i32 @wpa_driver_ndis_flush_pmkid(%struct.wpa_driver_ndis_data* %15)
  %17 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %18 = call i32 @wpa_driver_ndis_disconnect(%struct.wpa_driver_ndis_data* %17)
  %19 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %20 = call i64 @wpa_driver_ndis_radio_off(%struct.wpa_driver_ndis_data* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %27 = call i32 @wpa_driver_ndis_adapter_close(%struct.wpa_driver_ndis_data* %26)
  %28 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %34 = call i32 @wpa_driver_ndis_set_wzc(%struct.wpa_driver_ndis_data* %33, i32 1)
  br label %35

35:                                               ; preds = %32, %25
  %36 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %37 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %36, i32 0, i32 0
  %38 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %37, align 8
  %39 = call i32 @os_free(%struct.wpa_driver_ndis_data* %38)
  %40 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %41 = call i32 @os_free(%struct.wpa_driver_ndis_data* %40)
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_driver_ndis_data*, i32*) #1

declare dso_local i32 @wpa_driver_ndis_flush_pmkid(%struct.wpa_driver_ndis_data*) #1

declare dso_local i32 @wpa_driver_ndis_disconnect(%struct.wpa_driver_ndis_data*) #1

declare dso_local i64 @wpa_driver_ndis_radio_off(%struct.wpa_driver_ndis_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_driver_ndis_adapter_close(%struct.wpa_driver_ndis_data*) #1

declare dso_local i32 @wpa_driver_ndis_set_wzc(%struct.wpa_driver_ndis_data*, i32) #1

declare dso_local i32 @os_free(%struct.wpa_driver_ndis_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
