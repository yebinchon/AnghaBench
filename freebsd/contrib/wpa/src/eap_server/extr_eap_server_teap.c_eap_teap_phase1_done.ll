; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_phase1_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_phase1_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"EAP-TEAP: Phase 1 done, starting Phase 2\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"EAP-TEAP: TLS cipher suite 0x%04x\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"EAP-TEAP: Failed to get cipher information\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ADH\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"EAP-TEAP: Anonymous provisioning\00", align 1
@PHASE2_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_teap_data*)* @eap_teap_phase1_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_phase1_done(%struct.eap_sm* %0, %struct.eap_teap_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_teap_data*, align 8
  %6 = alloca [64 x i8], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %5, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = call i32 (i32, i8*, ...) @wpa_printf(i32 %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %10 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @tls_connection_get_cipher_suite(i32 %12)
  %14 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %15 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %18 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %29 = call i64 @tls_get_cipher(i32 %23, i32 %27, i8* %28, i32 64)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %35 = load i32, i32* @FAILURE, align 4
  %36 = call i32 @eap_teap_state(%struct.eap_teap_data* %34, i32 %35)
  store i32 -1, i32* %3, align 4
  br label %64

37:                                               ; preds = %2
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %39 = call i32* @os_strstr(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %43 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %45 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %37
  %52 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %53 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %54 = call i64 @eap_teap_derive_key_auth(%struct.eap_sm* %52, %struct.eap_teap_data* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %58 = load i32, i32* @FAILURE, align 4
  %59 = call i32 @eap_teap_state(%struct.eap_teap_data* %57, i32 %58)
  store i32 -1, i32* %3, align 4
  br label %64

60:                                               ; preds = %51
  %61 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %62 = load i32, i32* @PHASE2_START, align 4
  %63 = call i32 @eap_teap_state(%struct.eap_teap_data* %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %56, %31
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tls_connection_get_cipher_suite(i32) #1

declare dso_local i64 @tls_get_cipher(i32, i32, i8*, i32) #1

declare dso_local i32 @eap_teap_state(%struct.eap_teap_data*, i32) #1

declare dso_local i32* @os_strstr(i8*, i8*) #1

declare dso_local i64 @eap_teap_derive_key_auth(%struct.eap_sm*, %struct.eap_teap_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
