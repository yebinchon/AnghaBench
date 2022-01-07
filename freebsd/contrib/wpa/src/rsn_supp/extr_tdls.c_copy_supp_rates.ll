; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_copy_supp_rates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_copy_supp_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_ie_parse = type { i64, i32*, i64, i64 }
%struct.wpa_tdls_peer = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"TDLS: No supported rates received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_eapol_ie_parse*, %struct.wpa_tdls_peer*)* @copy_supp_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_supp_rates(%struct.wpa_eapol_ie_parse* %0, %struct.wpa_tdls_peer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_eapol_ie_parse*, align 8
  %5 = alloca %struct.wpa_tdls_peer*, align 8
  store %struct.wpa_eapol_ie_parse* %0, %struct.wpa_eapol_ie_parse** %4, align 8
  store %struct.wpa_tdls_peer* %1, %struct.wpa_tdls_peer** %5, align 8
  %6 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %7 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 2
  %21 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %22 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, 2
  %25 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  br label %35

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi i32* [ %33, %29 ], [ null, %34 ]
  %37 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %4, align 8
  %43 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 2
  br label %47

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %41
  %48 = phi i64 [ %45, %41 ], [ 0, %46 ]
  %49 = call i32 @merge_byte_arrays(i32 %16, i32 4, i64 %20, i64 %24, i32* %36, i64 %48)
  %50 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %10
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @merge_byte_arrays(i32, i32, i64, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
