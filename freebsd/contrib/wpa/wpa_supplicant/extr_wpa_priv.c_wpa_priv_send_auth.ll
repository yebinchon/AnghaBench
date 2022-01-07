; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_send_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_send_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.privsep_event_auth = type { i32, i32, i32, i32, i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@PRIVSEP_EVENT_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, %union.wpa_event_data*)* @wpa_priv_send_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_send_auth(%struct.wpa_priv_interface* %0, %union.wpa_event_data* %1) #0 {
  %3 = alloca %struct.wpa_priv_interface*, align 8
  %4 = alloca %union.wpa_event_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.privsep_event_auth*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %3, align 8
  store %union.wpa_event_data* %1, %union.wpa_event_data** %4, align 8
  %9 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %10 = bitcast %union.wpa_event_data* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 32, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32* @os_zalloc(i64 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %92

20:                                               ; preds = %2
  %21 = load i32*, i32** %7, align 8
  %22 = bitcast i32* %21 to %struct.privsep_event_auth*
  store %struct.privsep_event_auth* %22, %struct.privsep_event_auth** %6, align 8
  %23 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %6, align 8
  %24 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %23, i64 1
  %25 = bitcast %struct.privsep_event_auth* %24 to i32*
  store i32* %25, i32** %8, align 8
  %26 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %6, align 8
  %27 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %30 = bitcast %union.wpa_event_data* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @os_memcpy(i32* %28, i32 %32, i32 %33)
  %35 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %6, align 8
  %36 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %39 = bitcast %union.wpa_event_data* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @os_memcpy(i32* %37, i32 %41, i32 %42)
  %44 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %45 = bitcast %union.wpa_event_data* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %6, align 8
  %49 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %51 = bitcast %union.wpa_event_data* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %6, align 8
  %55 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %57 = bitcast %union.wpa_event_data* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %6, align 8
  %61 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %63 = bitcast %union.wpa_event_data* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %20
  %68 = load i32*, i32** %8, align 8
  %69 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %70 = bitcast %union.wpa_event_data* %69 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %74 = bitcast %union.wpa_event_data* %73 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @os_memcpy(i32* %68, i32 %72, i32 %76)
  %78 = load %union.wpa_event_data*, %union.wpa_event_data** %4, align 8
  %79 = bitcast %union.wpa_event_data* %78 to %struct.TYPE_2__*
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.privsep_event_auth*, %struct.privsep_event_auth** %6, align 8
  %83 = getelementptr inbounds %struct.privsep_event_auth, %struct.privsep_event_auth* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %67, %20
  %85 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %3, align 8
  %86 = load i32, i32* @PRIVSEP_EVENT_AUTH, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @wpa_priv_send_event(%struct.wpa_priv_interface* %85, i32 %86, i32* %87, i64 %88)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @os_free(i32* %90)
  br label %92

92:                                               ; preds = %84, %19
  ret void
}

declare dso_local i32* @os_zalloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @wpa_priv_send_event(%struct.wpa_priv_interface*, i32, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
