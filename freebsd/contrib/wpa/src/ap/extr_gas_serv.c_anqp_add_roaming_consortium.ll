; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_roaming_consortium.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_roaming_consortium.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.hostapd_roaming_consortium* }
%struct.hostapd_roaming_consortium = type { i32, i32 }
%struct.wpabuf = type { i32 }

@ANQP_ROAMING_CONSORTIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.wpabuf*)* @anqp_add_roaming_consortium to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anqp_add_roaming_consortium(%struct.hostapd_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hostapd_roaming_consortium*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %10 = load i32, i32* @ANQP_ROAMING_CONSORTIUM, align 4
  %11 = call i64 @anqp_add_override(%struct.hostapd_data* %8, %struct.wpabuf* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %16 = load i32, i32* @ANQP_ROAMING_CONSORTIUM, align 4
  %17 = call i32* @gas_anqp_add_element(%struct.wpabuf* %15, i32 %16)
  store i32* %17, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %48, %14
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %21 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %19, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %18
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.hostapd_roaming_consortium*, %struct.hostapd_roaming_consortium** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hostapd_roaming_consortium, %struct.hostapd_roaming_consortium* %31, i64 %33
  store %struct.hostapd_roaming_consortium* %34, %struct.hostapd_roaming_consortium** %7, align 8
  %35 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %36 = load %struct.hostapd_roaming_consortium*, %struct.hostapd_roaming_consortium** %7, align 8
  %37 = getelementptr inbounds %struct.hostapd_roaming_consortium, %struct.hostapd_roaming_consortium* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wpabuf_put_u8(%struct.wpabuf* %35, i32 %38)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %41 = load %struct.hostapd_roaming_consortium*, %struct.hostapd_roaming_consortium** %7, align 8
  %42 = getelementptr inbounds %struct.hostapd_roaming_consortium, %struct.hostapd_roaming_consortium* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hostapd_roaming_consortium*, %struct.hostapd_roaming_consortium** %7, align 8
  %45 = getelementptr inbounds %struct.hostapd_roaming_consortium, %struct.hostapd_roaming_consortium* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @wpabuf_put_data(%struct.wpabuf* %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %26
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %18

51:                                               ; preds = %18
  %52 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @gas_anqp_set_element_len(%struct.wpabuf* %52, i32* %53)
  br label %55

55:                                               ; preds = %51, %13
  ret void
}

declare dso_local i64 @anqp_add_override(%struct.hostapd_data*, %struct.wpabuf*, i32) #1

declare dso_local i32* @gas_anqp_add_element(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @gas_anqp_set_element_len(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
