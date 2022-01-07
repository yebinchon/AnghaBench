; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_send_ft_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_send_ft_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@PRIVSEP_EVENT_FT_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, %union.wpa_event_data*)* @wpa_priv_send_ft_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_send_ft_response(%struct.wpa_priv_interface* %0, %union.wpa_event_data* %1) #0 {
  %3 = alloca %struct.wpa_priv_interface*, align 8
  %4 = alloca %union.wpa_event_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %3, align 8
  store %union.wpa_event_data* %1, %union.wpa_event_data** %4, align 8
  %8 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %9 = icmp eq %union.wpa_event_data* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %12 = bitcast %union.wpa_event_data* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %2
  br label %69

17:                                               ; preds = %10
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 4, %19
  %21 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %22 = bitcast %union.wpa_event_data* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add i64 %20, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32* @os_malloc(i64 %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %69

32:                                               ; preds = %17
  %33 = load i32*, i32** %6, align 8
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %36 = bitcast %union.wpa_event_data* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = call i32 @os_memcpy(i32* %34, i32* %37, i32 4)
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %43 = bitcast %union.wpa_event_data* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @os_memcpy(i32* %41, i32* %45, i32 %46)
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %54 = bitcast %union.wpa_event_data* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %58 = bitcast %union.wpa_event_data* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @os_memcpy(i32* %52, i32* %56, i32 %60)
  %62 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %63 = load i32, i32* @PRIVSEP_EVENT_FT_RESPONSE, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @wpa_priv_send_event(%struct.wpa_priv_interface* %62, i32 %63, i32* %64, i64 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @os_free(i32* %67)
  br label %69

69:                                               ; preds = %32, %31, %16
  ret void
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wpa_priv_send_event(%struct.wpa_priv_interface*, i32, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
