; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_venue_url.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_venue_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.hostapd_venue_url* }
%struct.hostapd_venue_url = type { i64, i32, i64 }
%struct.wpabuf = type { i32 }

@ANQP_VENUE_URL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.wpabuf*)* @anqp_add_venue_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anqp_add_venue_url(%struct.hostapd_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_venue_url*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %10 = load i32, i32* @ANQP_VENUE_URL, align 4
  %11 = call i64 @anqp_add_override(%struct.hostapd_data* %8, %struct.wpabuf* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %68

14:                                               ; preds = %2
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.hostapd_venue_url*, %struct.hostapd_venue_url** %18, align 8
  %20 = icmp ne %struct.hostapd_venue_url* %19, null
  br i1 %20, label %21, label %68

21:                                               ; preds = %14
  %22 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %23 = load i32, i32* @ANQP_VENUE_URL, align 4
  %24 = call i32* @gas_anqp_add_element(%struct.wpabuf* %22, i32 %23)
  store i32* %24, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %61, %21
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %26, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %25
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %35 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.hostapd_venue_url*, %struct.hostapd_venue_url** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hostapd_venue_url, %struct.hostapd_venue_url* %38, i64 %40
  store %struct.hostapd_venue_url* %41, %struct.hostapd_venue_url** %7, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %43 = load %struct.hostapd_venue_url*, %struct.hostapd_venue_url** %7, align 8
  %44 = getelementptr inbounds %struct.hostapd_venue_url, %struct.hostapd_venue_url* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 1, %45
  %47 = call i32 @wpabuf_put_u8(%struct.wpabuf* %42, i64 %46)
  %48 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %49 = load %struct.hostapd_venue_url*, %struct.hostapd_venue_url** %7, align 8
  %50 = getelementptr inbounds %struct.hostapd_venue_url, %struct.hostapd_venue_url* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @wpabuf_put_u8(%struct.wpabuf* %48, i64 %51)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %54 = load %struct.hostapd_venue_url*, %struct.hostapd_venue_url** %7, align 8
  %55 = getelementptr inbounds %struct.hostapd_venue_url, %struct.hostapd_venue_url* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.hostapd_venue_url*, %struct.hostapd_venue_url** %7, align 8
  %58 = getelementptr inbounds %struct.hostapd_venue_url, %struct.hostapd_venue_url* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @wpabuf_put_data(%struct.wpabuf* %53, i32 %56, i64 %59)
  br label %61

61:                                               ; preds = %33
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %25

64:                                               ; preds = %25
  %65 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @gas_anqp_set_element_len(%struct.wpabuf* %65, i32* %66)
  br label %68

68:                                               ; preds = %13, %64, %14
  ret void
}

declare dso_local i64 @anqp_add_override(%struct.hostapd_data*, %struct.wpabuf*, i32) #1

declare dso_local i32* @gas_anqp_add_element(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i64) #1

declare dso_local i32 @gas_anqp_set_element_len(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
