; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_derive_mk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_derive_mk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAP_SIM_KC_LEN = common dso_local global i32 0, align 4
@EAP_SIM_NONCE_MT_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"EAP-SIM: MK\00", align 1
@EAP_SIM_MK_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_sim_derive_mk(i8* %0, i64 %1, i8* %2, i32 %3, i8* %4, i64 %5, i32 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [2 x i8], align 1
  %20 = alloca [5 x i8*], align 16
  %21 = alloca [5 x i64], align 16
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  store i8* %22, i8** %23, align 16
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds [5 x i64], [5 x i64]* %21, i64 0, i64 0
  store i64 %24, i64* %25, align 16
  %26 = load i8*, i8** %17, align 8
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 1
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* @EAP_SIM_KC_LEN, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %21, i64 0, i64 1
  store i64 %31, i64* %32, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 2
  store i8* %33, i8** %34, align 16
  %35 = load i64, i64* @EAP_SIM_NONCE_MT_LEN, align 8
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %21, i64 0, i64 2
  store i64 %35, i64* %36, align 16
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 3
  store i8* %37, i8** %38, align 8
  %39 = load i64, i64* %15, align 8
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %21, i64 0, i64 3
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 4
  store i8* %41, i8** %42, align 16
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %21, i64 0, i64 4
  store i64 2, i64* %43, align 16
  %44 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @WPA_PUT_BE16(i8* %44, i32 %45)
  %47 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  %48 = getelementptr inbounds [5 x i64], [5 x i64]* %21, i64 0, i64 0
  %49 = load i8*, i8** %18, align 8
  %50 = call i32 @sha1_vector(i32 5, i8** %47, i64* %48, i8* %49)
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load i8*, i8** %18, align 8
  %53 = load i32, i32* @EAP_SIM_MK_LEN, align 4
  %54 = call i32 @wpa_hexdump_key(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %53)
  ret void
}

declare dso_local i32 @WPA_PUT_BE16(i8*, i32) #1

declare dso_local i32 @sha1_vector(i32, i8**, i64*, i8*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
