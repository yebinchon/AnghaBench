; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis_.c_wpa_driver_ndis_event_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis_.c_wpa_driver_ndis_event_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"NDIS: received event data\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"NDIS: event - type %d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"NDIS: event data overflow\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"NDIS: event data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_ndis_data*, i32*, i64)* @wpa_driver_ndis_event_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_driver_ndis_event_process(%struct.wpa_driver_ndis_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_driver_ndis_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @MSG_MSGDUMP, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @wpa_hexdump(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %12, i64 %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %85

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32*, i32** %7, align 8
  %30 = ptrtoint i32* %28 to i64
  %31 = ptrtoint i32* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = icmp sgt i64 %33, 2
  br i1 %34, label %35, label %66

35:                                               ; preds = %18
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  %38 = load i32, i32* %36, align 4
  %39 = shl i32 %38, 8
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %10, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  %43 = load i32, i32* %41, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32*, i32** %7, align 8
  %52 = ptrtoint i32* %50 to i64
  %53 = ptrtoint i32* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  %56 = icmp ugt i64 %47, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %85

60:                                               ; preds = %35
  %61 = load i32*, i32** %7, align 8
  store i32* %61, i32** %8, align 8
  %62 = load i32, i32* @MSG_MSGDUMP, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @wpa_hexdump(i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %63, i64 %64)
  br label %66

66:                                               ; preds = %60, %18
  %67 = load i32, i32* %9, align 4
  switch i32 %67, label %85 [
    i32 130, label %68
    i32 129, label %71
    i32 128, label %74
    i32 132, label %79
    i32 131, label %82
  ]

68:                                               ; preds = %66
  %69 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %70 = call i32 @wpa_driver_ndis_event_connect(%struct.wpa_driver_ndis_data* %69)
  br label %85

71:                                               ; preds = %66
  %72 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %73 = call i32 @wpa_driver_ndis_event_disconnect(%struct.wpa_driver_ndis_data* %72)
  br label %85

74:                                               ; preds = %66
  %75 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @wpa_driver_ndis_event_media_specific(%struct.wpa_driver_ndis_data* %75, i32* %76, i64 %77)
  br label %85

79:                                               ; preds = %66
  %80 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %81 = call i32 @wpa_driver_ndis_event_adapter_arrival(%struct.wpa_driver_ndis_data* %80)
  br label %85

82:                                               ; preds = %66
  %83 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %84 = call i32 @wpa_driver_ndis_event_adapter_removal(%struct.wpa_driver_ndis_data* %83)
  br label %85

85:                                               ; preds = %17, %57, %66, %82, %79, %74, %71, %68
  ret void
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_driver_ndis_event_connect(%struct.wpa_driver_ndis_data*) #1

declare dso_local i32 @wpa_driver_ndis_event_disconnect(%struct.wpa_driver_ndis_data*) #1

declare dso_local i32 @wpa_driver_ndis_event_media_specific(%struct.wpa_driver_ndis_data*, i32*, i64) #1

declare dso_local i32 @wpa_driver_ndis_event_adapter_arrival(%struct.wpa_driver_ndis_data*) #1

declare dso_local i32 @wpa_driver_ndis_event_adapter_removal(%struct.wpa_driver_ndis_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
