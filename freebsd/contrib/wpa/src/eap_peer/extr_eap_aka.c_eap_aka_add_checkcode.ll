; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_add_checkcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_add_checkcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_aka_data = type { i64, i32* }
%struct.eap_sim_msg = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"   AT_CHECKCODE\00", align 1
@EAP_SIM_AT_CHECKCODE = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"EAP-AKA: AT_CHECKCODE data\00", align 1
@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@EAP_AKA_PRIME_CHECKCODE_LEN = common dso_local global i32 0, align 4
@EAP_AKA_CHECKCODE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_aka_data*, %struct.eap_sim_msg*)* @eap_aka_add_checkcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_aka_add_checkcode(%struct.eap_aka_data* %0, %struct.eap_sim_msg* %1) #0 {
  %3 = alloca %struct.eap_aka_data*, align 8
  %4 = alloca %struct.eap_sim_msg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.eap_aka_data* %0, %struct.eap_aka_data** %3, align 8
  store %struct.eap_sim_msg* %1, %struct.eap_sim_msg** %4, align 8
  %10 = load i32, i32* @SHA256_MAC_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.eap_aka_data*, %struct.eap_aka_data** %3, align 8
  %17 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %4, align 8
  %22 = load i32, i32* @EAP_SIM_AT_CHECKCODE, align 4
  %23 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %21, i32 %22, i32 0, i32* null, i32 0)
  store i32 1, i32* %9, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.eap_aka_data*, %struct.eap_aka_data** %3, align 8
  %26 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32* @wpabuf_head(i32* %27)
  store i32* %28, i32** %5, align 8
  %29 = load %struct.eap_aka_data*, %struct.eap_aka_data** %3, align 8
  %30 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @wpabuf_len(i32* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i32, i32* @MSG_MSGDUMP, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @wpa_hexdump(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %34, i64 %35)
  %37 = call i32 @sha1_vector(i32 1, i32** %5, i64* %6, i32* %13)
  %38 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %4, align 8
  %39 = load i32, i32* @EAP_SIM_AT_CHECKCODE, align 4
  %40 = load %struct.eap_aka_data*, %struct.eap_aka_data** %3, align 8
  %41 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %24
  %46 = load i32, i32* @EAP_AKA_PRIME_CHECKCODE_LEN, align 4
  br label %49

47:                                               ; preds = %24
  %48 = load i32, i32* @EAP_AKA_CHECKCODE_LEN, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %38, i32 %39, i32 0, i32* %13, i32 %50)
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %20
  %53 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %56 [
    i32 0, label %55
    i32 1, label %55
  ]

55:                                               ; preds = %52, %52
  ret void

56:                                               ; preds = %52
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #2

declare dso_local i32* @wpabuf_head(i32*) #2

declare dso_local i64 @wpabuf_len(i32*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

declare dso_local i32 @sha1_vector(i32, i32**, i64*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
