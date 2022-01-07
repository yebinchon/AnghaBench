; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_copy_peer_ext_capab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_copy_peer_ext_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_ie_parse = type { i32, i64 }
%struct.wpa_tdls_peer = type { i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TDLS: No extended capabilities received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_eapol_ie_parse*, %struct.wpa_tdls_peer*)* @copy_peer_ext_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_peer_ext_capab(%struct.wpa_eapol_ie_parse* %0, %struct.wpa_tdls_peer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_eapol_ie_parse*, align 8
  %5 = alloca %struct.wpa_tdls_peer*, align 8
  store %struct.wpa_eapol_ie_parse* %0, %struct.wpa_eapol_ie_parse** %4, align 8
  store %struct.wpa_tdls_peer* %1, %struct.wpa_tdls_peer** %5, align 8
  %6 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %7 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

13:                                               ; preds = %2
  %14 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 2
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %18, %13
  %28 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %29 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @os_free(i32* %30)
  %32 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %33 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 2
  %36 = call i32* @os_zalloc(i32 %35)
  %37 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %63

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %47 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 2
  %50 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %53 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %56 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 2
  %59 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %60 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @os_memcpy(i32* %54, i64 %58, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %45, %43, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
