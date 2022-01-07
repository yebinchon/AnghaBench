; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_derive_eap_emsk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_derive_eap_emsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAP_TEAP_SIMCK_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Extended Session Key Generating Function\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EAP_EMSK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"EAP-TEAP: Derived key (EMSK)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_teap_derive_eap_emsk(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* @EAP_TEAP_SIMCK_LEN, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* @EAP_EMSK_LEN, align 4
  %10 = call i64 @eap_teap_tls_prf(i32* %6, i32 %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32* bitcast ([1 x i8]* @.str.1 to i32*), i32 0, i32* %8, i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @EAP_EMSK_LEN, align 4
  %17 = call i32 @wpa_hexdump_key(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %15, i32 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @eap_teap_tls_prf(i32*, i32, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
