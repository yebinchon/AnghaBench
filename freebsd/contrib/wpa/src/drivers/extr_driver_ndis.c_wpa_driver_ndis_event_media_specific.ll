; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_event_media_specific.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_event_media_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"NDIS: Media Specific Indication\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"NDIS: Unknown StatusType %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_driver_ndis_event_media_specific(%struct.wpa_driver_ndis_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_driver_ndis_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  br label %44

14:                                               ; preds = %10
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @wpa_hexdump(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %16, i64 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 8
  store i32* %22, i32** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %23, 8
  store i64 %24, i64* %6, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %38 [
    i32 129, label %28
    i32 128, label %33
  ]

28:                                               ; preds = %14
  %29 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @wpa_driver_ndis_event_auth(%struct.wpa_driver_ndis_data* %29, i32* %30, i64 %31)
  br label %44

33:                                               ; preds = %14
  %34 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @wpa_driver_ndis_event_pmkid(%struct.wpa_driver_ndis_data* %34, i32* %35, i64 %36)
  br label %44

38:                                               ; preds = %14
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %13, %38, %33, %28
  ret void
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_driver_ndis_event_auth(%struct.wpa_driver_ndis_data*, i32*, i64) #1

declare dso_local i32 @wpa_driver_ndis_event_pmkid(%struct.wpa_driver_ndis_data*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
