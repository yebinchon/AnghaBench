; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_copy_peer_wmm_capab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_copy_peer_wmm_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_ie_parse = type { i32, i64 }
%struct.wpa_tdls_peer = type { i32, i32 }
%struct.wmm_information_element = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"TDLS: No supported WMM capabilities received\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"TDLS: Invalid supported WMM capabilities received\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"TDLS: Peer WMM QOS Info 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_eapol_ie_parse*, %struct.wpa_tdls_peer*)* @copy_peer_wmm_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_peer_wmm_capab(%struct.wpa_eapol_ie_parse* %0, %struct.wpa_tdls_peer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_eapol_ie_parse*, align 8
  %5 = alloca %struct.wpa_tdls_peer*, align 8
  %6 = alloca %struct.wmm_information_element*, align 8
  store %struct.wpa_eapol_ie_parse* %0, %struct.wpa_eapol_ie_parse** %4, align 8
  store %struct.wpa_tdls_peer* %1, %struct.wpa_tdls_peer** %5, align 8
  %7 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %40

23:                                               ; preds = %14
  %24 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.wmm_information_element*
  store %struct.wmm_information_element* %27, %struct.wmm_information_element** %6, align 8
  %28 = load %struct.wmm_information_element*, %struct.wmm_information_element** %6, align 8
  %29 = getelementptr inbounds %struct.wmm_information_element, %struct.wmm_information_element* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %32 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %34 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %23, %20, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
