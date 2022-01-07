; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_update_icmk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_update_icmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32*, i32*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"EAP-FAST: Deriving ICMK[%d] (S-IMCK and CMK)\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"EAP-FAST: ISK[j]\00", align 1
@EAP_FAST_SIMCK_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Inner Methods Compound Keys\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"EAP-FAST: S-IMCK[j]\00", align 1
@EAP_FAST_CMK_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"EAP-FAST: CMK[j]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*)* @eap_fast_update_icmk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_update_icmk(%struct.eap_sm* %0, %struct.eap_fast_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_fast_data*, align 8
  %6 = alloca [32 x i32], align 16
  %7 = alloca [60 x i32], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %5, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %10 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %15 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %17 = call i64 @eap_fast_get_phase2_key(%struct.eap_sm* %14, %struct.eap_fast_data* %15, i32* %16, i32 128)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load i32, i32* @MSG_MSGDUMP, align 4
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %23 = call i32 @wpa_hexdump_key(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %22, i32 128)
  %24 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @EAP_FAST_SIMCK_LEN, align 4
  %28 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %29 = getelementptr inbounds [60 x i32], [60 x i32]* %7, i64 0, i64 0
  %30 = call i32 @sha1_t_prf(i32* %26, i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %28, i32 128, i32* %29, i32 240)
  %31 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %32 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %36 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds [60 x i32], [60 x i32]* %7, i64 0, i64 0
  %39 = load i32, i32* @EAP_FAST_SIMCK_LEN, align 4
  %40 = call i32 @os_memcpy(i32* %37, i32* %38, i32 %39)
  %41 = load i32, i32* @MSG_MSGDUMP, align 4
  %42 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %43 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @EAP_FAST_SIMCK_LEN, align 4
  %46 = call i32 @wpa_hexdump_key(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %44, i32 %45)
  %47 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %48 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds [60 x i32], [60 x i32]* %7, i64 0, i64 0
  %51 = load i32, i32* @EAP_FAST_SIMCK_LEN, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* @EAP_FAST_CMK_LEN, align 4
  %55 = call i32 @os_memcpy(i32* %49, i32* %53, i32 %54)
  %56 = load i32, i32* @MSG_MSGDUMP, align 4
  %57 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %58 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @EAP_FAST_CMK_LEN, align 4
  %61 = call i32 @wpa_hexdump_key(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %20, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i64 @eap_fast_get_phase2_key(%struct.eap_sm*, %struct.eap_fast_data*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @sha1_t_prf(i32*, i32, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
