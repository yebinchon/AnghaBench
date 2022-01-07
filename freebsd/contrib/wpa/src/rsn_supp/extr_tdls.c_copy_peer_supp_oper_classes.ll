; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_copy_peer_supp_oper_classes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_copy_peer_supp_oper_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_ie_parse = type { i64, i32 }
%struct.wpa_tdls_peer = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"TDLS: No supported operating classes received\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"TDLS: Peer Supported Operating Classes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_eapol_ie_parse*, %struct.wpa_tdls_peer*)* @copy_peer_supp_oper_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_peer_supp_oper_classes(%struct.wpa_eapol_ie_parse* %0, %struct.wpa_tdls_peer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_eapol_ie_parse*, align 8
  %5 = alloca %struct.wpa_tdls_peer*, align 8
  store %struct.wpa_eapol_ie_parse* %0, %struct.wpa_eapol_ie_parse** %4, align 8
  store %struct.wpa_tdls_peer* %1, %struct.wpa_tdls_peer** %5, align 8
  %6 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %7 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %67

13:                                               ; preds = %2
  %14 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %18, %13
  %27 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %28 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @os_free(i32* %29)
  %31 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32* @os_zalloc(i64 %33)
  %35 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %36 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %67

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %18
  %44 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %48 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %50 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %53 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %56 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @os_memcpy(i32* %51, i32 %54, i64 %57)
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %61 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %64 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @wpa_hexdump(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %62, i64 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %43, %41, %10
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_zalloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
