; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_parse_pac_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_parse_pac_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_pac = type { i64, i64, i32*, i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"EAP-FAST: PAC-Key\00", align 1
@EAP_FAST_PAC_KEY_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"EAP-FAST: Invalid PAC-Key length %lu\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"EAP-FAST: PAC-Opaque\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"EAP-FAST: PAC-Info\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"EAP-FAST: Ignored unknown PAC type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_fast_pac*, i32, i32*, i64, i32*)* @eap_fast_parse_pac_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_fast_parse_pac_tlv(%struct.eap_fast_pac* %0, i32 %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.eap_fast_pac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.eap_fast_pac* %0, %struct.eap_fast_pac** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 32767
  switch i32 %12, label %56 [
    i32 129, label %13
    i32 128, label %34
    i32 130, label %45
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @wpa_hexdump_key(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %15, i64 %16)
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @EAP_FAST_PAC_KEY_LEN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %60

26:                                               ; preds = %13
  %27 = load i32*, i32** %10, align 8
  store i32 1, i32* %27, align 4
  %28 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %29 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @os_memcpy(i32 %30, i32* %31, i64 %32)
  br label %60

34:                                               ; preds = %5
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @wpa_hexdump(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %36, i64 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %41 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %44 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %60

45:                                               ; preds = %5
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @wpa_hexdump(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %47, i64 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %52 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %55 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %60

56:                                               ; preds = %5
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %45, %34, %26, %21
  ret void
}

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
