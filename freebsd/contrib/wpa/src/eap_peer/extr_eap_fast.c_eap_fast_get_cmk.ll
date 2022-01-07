; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_get_cmk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_get_cmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"EAP-FAST: Determining CMK[%d] for Compound MIC calculation\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"EAP-FAST: ISK[j]\00", align 1
@EAP_FAST_SIMCK_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Inner Methods Compound Keys\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"EAP-FAST: S-IMCK[j]\00", align 1
@EAP_FAST_CMK_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"EAP-FAST: CMK[j]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*, i32*)* @eap_fast_get_cmk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_get_cmk(%struct.eap_sm* %0, %struct.eap_fast_data* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_fast_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [32 x i32], align 16
  %9 = alloca [60 x i32], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %12 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %17 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %19 = call i64 @eap_fast_get_phase2_key(%struct.eap_sm* %16, %struct.eap_fast_data* %17, i32* %18, i32 128)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %63

22:                                               ; preds = %3
  %23 = load i32, i32* @MSG_MSGDUMP, align 4
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %25 = call i32 @wpa_hexdump_key(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %24, i32 128)
  %26 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %27 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @EAP_FAST_SIMCK_LEN, align 4
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %31 = getelementptr inbounds [60 x i32], [60 x i32]* %9, i64 0, i64 0
  %32 = call i64 @sha1_t_prf(i32* %28, i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %30, i32 128, i32* %31, i32 240)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %63

35:                                               ; preds = %22
  %36 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %37 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %41 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds [60 x i32], [60 x i32]* %9, i64 0, i64 0
  %44 = load i32, i32* @EAP_FAST_SIMCK_LEN, align 4
  %45 = call i32 @os_memcpy(i32* %42, i32* %43, i32 %44)
  %46 = load i32, i32* @MSG_MSGDUMP, align 4
  %47 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %48 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @EAP_FAST_SIMCK_LEN, align 4
  %51 = call i32 @wpa_hexdump_key(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %49, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds [60 x i32], [60 x i32]* %9, i64 0, i64 0
  %54 = load i32, i32* @EAP_FAST_SIMCK_LEN, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @EAP_FAST_CMK_LEN, align 4
  %58 = call i32 @os_memcpy(i32* %52, i32* %56, i32 %57)
  %59 = load i32, i32* @MSG_MSGDUMP, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @EAP_FAST_CMK_LEN, align 4
  %62 = call i32 @wpa_hexdump_key(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %60, i32 %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %35, %34, %21
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i64 @eap_fast_get_phase2_key(%struct.eap_sm*, %struct.eap_fast_data*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i64 @sha1_t_prf(i32*, i32, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
