; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_response_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_response_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i32, i64, i64, i32, i32*, i32* }
%struct.eap_sim_msg = type { i32 }

@ANY_ID = common dso_local global i32 0, align 4
@FULLAUTH_ID = common dso_local global i32 0, align 4
@CLEAR_REAUTH_ID = common dso_local global i32 0, align 4
@NO_ID_REQ = common dso_local global i32 0, align 4
@CLEAR_PSEUDONYM = common dso_local global i32 0, align 4
@CLEAR_EAP_ID = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Generating EAP-AKA Identity (id=%d)\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_AKA_SUBTYPE_IDENTITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"   AT_IDENTITY\00", align 1
@EAP_SIM_AT_IDENTITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_aka_data*, i32, i32)* @eap_aka_response_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_response_identity(%struct.eap_sm* %0, %struct.eap_aka_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.eap_sim_msg*, align 8
  %12 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %14 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ANY_ID, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %20 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %25 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %28 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %31 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %104

32:                                               ; preds = %18, %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ANY_ID, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @FULLAUTH_ID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36, %32
  %41 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %42 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %47 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %50 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @eap_sim_anonymous_username(i32* %48, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %45
  %55 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %56 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %9, align 8
  %58 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %59 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  %61 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %62 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %63 = load i32, i32* @CLEAR_REAUTH_ID, align 4
  %64 = call i32 @eap_aka_clear_identities(%struct.eap_sm* %61, %struct.eap_aka_data* %62, i32 %63)
  br label %103

65:                                               ; preds = %45, %40, %36
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @NO_ID_REQ, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %65
  %70 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %71 = call i32* @eap_get_config_identity(%struct.eap_sm* %70, i64* %10)
  store i32* %71, i32** %9, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %101

74:                                               ; preds = %69
  %75 = load i32, i32* @CLEAR_PSEUDONYM, align 4
  %76 = load i32, i32* @CLEAR_REAUTH_ID, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %12, align 4
  %78 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %79 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %96

82:                                               ; preds = %74
  %83 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %84 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %87 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @eap_sim_anonymous_username(i32* %85, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load i32, i32* @CLEAR_PSEUDONYM, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %12, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %91, %82, %74
  %97 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %98 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @eap_aka_clear_identities(%struct.eap_sm* %97, %struct.eap_aka_data* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %69
  br label %102

102:                                              ; preds = %101, %65
  br label %103

103:                                              ; preds = %102, %54
  br label %104

104:                                              ; preds = %103, %23
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @NO_ID_REQ, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %110 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %111 = load i32, i32* @CLEAR_EAP_ID, align 4
  %112 = call i32 @eap_aka_clear_identities(%struct.eap_sm* %109, %struct.eap_aka_data* %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %104
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @wpa_printf(i32 %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %120 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @EAP_AKA_SUBTYPE_IDENTITY, align 4
  %123 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %117, i32 %118, i32 %121, i32 %122)
  store %struct.eap_sim_msg* %123, %struct.eap_sim_msg** %11, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %113
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @wpa_hexdump_ascii(i32 %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %128, i64 %129)
  %131 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %11, align 8
  %132 = load i32, i32* @EAP_SIM_AT_IDENTITY, align 4
  %133 = load i64, i64* %10, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %131, i32 %132, i64 %133, i32* %134, i64 %135)
  br label %137

137:                                              ; preds = %126, %113
  %138 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %11, align 8
  %139 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %140 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %138, i32 %141, i32* null, i32* null, i32 0)
  ret %struct.wpabuf* %142
}

declare dso_local i64 @eap_sim_anonymous_username(i32*, i64) #1

declare dso_local i32 @eap_aka_clear_identities(%struct.eap_sm*, %struct.eap_aka_data*, i32) #1

declare dso_local i32* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i64, i32*, i64) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
