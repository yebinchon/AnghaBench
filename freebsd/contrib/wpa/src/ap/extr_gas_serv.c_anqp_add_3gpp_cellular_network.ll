; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_3gpp_cellular_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_3gpp_cellular_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.wpabuf = type { i32 }

@ANQP_3GPP_CELLULAR_NETWORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.wpabuf*)* @anqp_add_3gpp_cellular_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anqp_add_3gpp_cellular_network(%struct.hostapd_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %5 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %6 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %7 = load i32, i32* @ANQP_3GPP_CELLULAR_NETWORK, align 4
  %8 = call i64 @anqp_add_override(%struct.hostapd_data* %5, %struct.wpabuf* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %41

11:                                               ; preds = %2
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %11
  %19 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %20 = load i32, i32* @ANQP_3GPP_CELLULAR_NETWORK, align 4
  %21 = call i32 @wpabuf_put_le16(%struct.wpabuf* %19, i32 %20)
  %22 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %24 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @wpabuf_put_le16(%struct.wpabuf* %22, i32 %27)
  %29 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %30 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %31 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %36 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @wpabuf_put_data(%struct.wpabuf* %29, i64 %34, i32 %39)
  br label %41

41:                                               ; preds = %10, %18, %11
  ret void
}

declare dso_local i64 @anqp_add_override(%struct.hostapd_data*, %struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
