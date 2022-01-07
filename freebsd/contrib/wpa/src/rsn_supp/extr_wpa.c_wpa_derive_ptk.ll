; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_derive_ptk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_derive_ptk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i32, i32, i32, i32, i32, i32, i64 }
%struct.wpa_eapol_key = type { i32 }
%struct.wpa_ptk = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Pairwise key expansion\00", align 1
@WPA_KEY_MGMT_DPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, i8*, %struct.wpa_eapol_key*, %struct.wpa_ptk*)* @wpa_derive_ptk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_derive_ptk(%struct.wpa_sm* %0, i8* %1, %struct.wpa_eapol_key* %2, %struct.wpa_ptk* %3) #0 {
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_eapol_key*, align 8
  %8 = alloca %struct.wpa_ptk*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpa_eapol_key* %2, %struct.wpa_eapol_key** %7, align 8
  store %struct.wpa_ptk* %3, %struct.wpa_ptk** %8, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %12 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %18 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %24 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %27 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wpa_ptk*, %struct.wpa_ptk** %8, align 8
  %30 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %34 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @wpa_pmk_to_ptk(i32 %13, i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28, %struct.wpa_ptk* %29, i64 %32, i32 %35, i32* %36, i64 %37)
  ret i32 %38
}

declare dso_local i32 @wpa_pmk_to_ptk(i32, i32, i8*, i32, i32, i32, i32, %struct.wpa_ptk*, i64, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
