; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_roaming_partner_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_roaming_partner_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.roaming_partner = type { i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"Interworking: Comparing roaming_partner info fqdn='%s' exact_match=%d priority=%u country='%s'\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Interworking: Domain names\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.roaming_partner*, %struct.wpabuf*)* @roaming_partner_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roaming_partner_match(%struct.wpa_supplicant* %0, %struct.roaming_partner* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.roaming_partner*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.roaming_partner* %1, %struct.roaming_partner** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = load %struct.roaming_partner*, %struct.roaming_partner** %6, align 8
  %10 = getelementptr inbounds %struct.roaming_partner, %struct.roaming_partner* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.roaming_partner*, %struct.roaming_partner** %6, align 8
  %13 = getelementptr inbounds %struct.roaming_partner, %struct.roaming_partner* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.roaming_partner*, %struct.roaming_partner** %6, align 8
  %16 = getelementptr inbounds %struct.roaming_partner, %struct.roaming_partner* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.roaming_partner*, %struct.roaming_partner** %6, align 8
  %19 = getelementptr inbounds %struct.roaming_partner, %struct.roaming_partner* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20)
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %24 = call i32 @wpabuf_head(%struct.wpabuf* %23)
  %25 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %26 = call i32 @wpabuf_len(%struct.wpabuf* %25)
  %27 = call i32 @wpa_hexdump_ascii(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %29 = load %struct.roaming_partner*, %struct.roaming_partner** %6, align 8
  %30 = getelementptr inbounds %struct.roaming_partner, %struct.roaming_partner* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.roaming_partner*, %struct.roaming_partner** %6, align 8
  %33 = getelementptr inbounds %struct.roaming_partner, %struct.roaming_partner* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @domain_name_list_contains(%struct.wpabuf* %28, i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

38:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @domain_name_list_contains(%struct.wpabuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
