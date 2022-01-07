; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_build_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_build_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, i32 }
%struct.eap_sake_data = type { i32, i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EAP-SAKE: Request/Challenge\00", align 1
@EAP_SAKE_RAND_LEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"EAP-SAKE: Failed to get random data\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"EAP-SAKE: RAND_S (server rand)\00", align 1
@EAP_SAKE_SUBTYPE_CHALLENGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"EAP-SAKE: * AT_RAND_S\00", align 1
@EAP_SAKE_AT_RAND_S = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"EAP-SAKE: * AT_SERVERID\00", align 1
@EAP_SAKE_AT_SERVERID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sake_data*, i32)* @eap_sake_build_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sake_build_challenge(%struct.eap_sm* %0, %struct.eap_sake_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_sake_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_sake_data* %1, %struct.eap_sake_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %13 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %16 = call i64 @random_get_bytes(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @MSG_ERROR, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** @FAILURE, align 8
  %22 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %23 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %72

24:                                               ; preds = %3
  %25 = load i32, i32* @MSG_MSGDUMP, align 4
  %26 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %27 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %30 = call i32 @wpa_hexdump(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %32 = add nsw i32 2, %31
  %33 = add nsw i32 %32, 2
  %34 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %35 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %9, align 8
  %39 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* @EAP_SAKE_SUBTYPE_CHALLENGE, align 4
  %43 = call %struct.wpabuf* @eap_sake_build_msg(%struct.eap_sake_data* %39, i32 %40, i64 %41, i32 %42)
  store %struct.wpabuf* %43, %struct.wpabuf** %8, align 8
  %44 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %45 = icmp eq %struct.wpabuf* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %24
  %47 = load i8*, i8** @FAILURE, align 8
  %48 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %49 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %72

50:                                               ; preds = %24
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %54 = load i32, i32* @EAP_SAKE_AT_RAND_S, align 4
  %55 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %56 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %59 = call i32 @eap_sake_add_attr(%struct.wpabuf* %53, i32 %54, i32 %57, i32 %58)
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = call i32 @wpa_printf(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %62 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %63 = load i32, i32* @EAP_SAKE_AT_SERVERID, align 4
  %64 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %65 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %68 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @eap_sake_add_attr(%struct.wpabuf* %62, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %71, %struct.wpabuf** %4, align 8
  br label %72

72:                                               ; preds = %50, %46, %18
  %73 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %73
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local %struct.wpabuf* @eap_sake_build_msg(%struct.eap_sake_data*, i32, i64, i32) #1

declare dso_local i32 @eap_sake_add_attr(%struct.wpabuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
