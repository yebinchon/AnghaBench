; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_fast_common.c_eap_fast_derive_master_secret.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_fast_common.c_eap_fast_derive_master_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"EAP-FAST: client_random\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"EAP-FAST: server_random\00", align 1
@EAP_FAST_PAC_KEY_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"PAC to master secret label hash\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"EAP-FAST: master_secret\00", align 1
@TLS_MASTER_SECRET_LEN = common dso_local global i32 0, align 4
@TLS_RANDOM_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_fast_derive_master_secret(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [64 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @wpa_hexdump(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %11, i32 32)
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @wpa_hexdump(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %14, i32 32)
  %16 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @os_memcpy(i32* %16, i32* %17, i32 32)
  %19 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %20 = getelementptr inbounds i32, i32* %19, i64 32
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @os_memcpy(i32* %20, i32* %21, i32 32)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %25 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @sha1_t_prf(i32* %23, i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32* %25, i32 256, i32* %26, i32 48)
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @wpa_hexdump_key(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %29, i32 48)
  ret void
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sha1_t_prf(i32*, i32, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
