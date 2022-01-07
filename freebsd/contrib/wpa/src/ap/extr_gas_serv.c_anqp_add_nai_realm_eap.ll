; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_nai_realm_eap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_nai_realm_eap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.hostapd_nai_realm_data = type { i32, %struct.hostapd_nai_realm_eap* }
%struct.hostapd_nai_realm_eap = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*, %struct.hostapd_nai_realm_data*)* @anqp_add_nai_realm_eap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anqp_add_nai_realm_eap(%struct.wpabuf* %0, %struct.hostapd_nai_realm_data* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.hostapd_nai_realm_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_nai_realm_eap*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store %struct.hostapd_nai_realm_data* %1, %struct.hostapd_nai_realm_data** %4, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %9 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %4, align 8
  %10 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @wpabuf_put_u8(%struct.wpabuf* %8, i32 %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %74, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %4, align 8
  %16 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %13
  %20 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %4, align 8
  %21 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %20, i32 0, i32 1
  %22 = load %struct.hostapd_nai_realm_eap*, %struct.hostapd_nai_realm_eap** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.hostapd_nai_realm_eap, %struct.hostapd_nai_realm_eap* %22, i64 %24
  store %struct.hostapd_nai_realm_eap* %25, %struct.hostapd_nai_realm_eap** %7, align 8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %27 = load %struct.hostapd_nai_realm_eap*, %struct.hostapd_nai_realm_eap** %7, align 8
  %28 = getelementptr inbounds %struct.hostapd_nai_realm_eap, %struct.hostapd_nai_realm_eap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 3, %29
  %31 = add nsw i32 2, %30
  %32 = call i32 @wpabuf_put_u8(%struct.wpabuf* %26, i32 %31)
  %33 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %34 = load %struct.hostapd_nai_realm_eap*, %struct.hostapd_nai_realm_eap** %7, align 8
  %35 = getelementptr inbounds %struct.hostapd_nai_realm_eap, %struct.hostapd_nai_realm_eap* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wpabuf_put_u8(%struct.wpabuf* %33, i32 %36)
  %38 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %39 = load %struct.hostapd_nai_realm_eap*, %struct.hostapd_nai_realm_eap** %7, align 8
  %40 = getelementptr inbounds %struct.hostapd_nai_realm_eap, %struct.hostapd_nai_realm_eap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @wpabuf_put_u8(%struct.wpabuf* %38, i32 %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %70, %19
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.hostapd_nai_realm_eap*, %struct.hostapd_nai_realm_eap** %7, align 8
  %46 = getelementptr inbounds %struct.hostapd_nai_realm_eap, %struct.hostapd_nai_realm_eap* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %51 = load %struct.hostapd_nai_realm_eap*, %struct.hostapd_nai_realm_eap** %7, align 8
  %52 = getelementptr inbounds %struct.hostapd_nai_realm_eap, %struct.hostapd_nai_realm_eap* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @wpabuf_put_u8(%struct.wpabuf* %50, i32 %57)
  %59 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %60 = call i32 @wpabuf_put_u8(%struct.wpabuf* %59, i32 1)
  %61 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %62 = load %struct.hostapd_nai_realm_eap*, %struct.hostapd_nai_realm_eap** %7, align 8
  %63 = getelementptr inbounds %struct.hostapd_nai_realm_eap, %struct.hostapd_nai_realm_eap* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wpabuf_put_u8(%struct.wpabuf* %61, i32 %68)
  br label %70

70:                                               ; preds = %49
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %43

73:                                               ; preds = %43
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %13

77:                                               ; preds = %13
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
