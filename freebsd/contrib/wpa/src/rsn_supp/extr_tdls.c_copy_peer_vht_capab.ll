; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_copy_peer_vht_capab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_copy_peer_vht_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_ie_parse = type { i32 }
%struct.wpa_tdls_peer = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"TDLS: No supported vht capabilities received\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"TDLS: Peer VHT capabilities\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_eapol_ie_parse*, %struct.wpa_tdls_peer*)* @copy_peer_vht_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_peer_vht_capab(%struct.wpa_eapol_ie_parse* %0, %struct.wpa_tdls_peer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_eapol_ie_parse*, align 8
  %5 = alloca %struct.wpa_tdls_peer*, align 8
  store %struct.wpa_eapol_ie_parse* %0, %struct.wpa_eapol_ie_parse** %4, align 8
  store %struct.wpa_tdls_peer* %1, %struct.wpa_tdls_peer** %5, align 8
  %6 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %7 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = call i32* @os_zalloc(i32 4)
  %20 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %23 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %41

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %30 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @os_memcpy(i32* %31, i32 %34, i32 4)
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @wpa_hexdump(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %39, i32 4)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %28, %26, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
