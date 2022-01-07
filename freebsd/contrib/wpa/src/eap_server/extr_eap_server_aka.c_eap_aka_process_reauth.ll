; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_process_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_process_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i64 }
%struct.eap_aka_data = type { i32, i64, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i64, i64, i32, i32*, i32, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"EAP-AKA: Processing Reauthentication\00", align 1
@EAP_SIM_NONCE_S_LEN = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"EAP-AKA: Re-authentication message did not include valid AT_MAC\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"EAP-AKA: Reauthentication message did not include encrypted data\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"EAP-AKA: Failed to parse encrypted data from reauthentication message\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"EAP-AKA: Re-authentication message used incorrect counter %u, expected %u\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"EAP-AKA: Re-authentication response includes the correct AT_MAC\00", align 1
@.str.6 = private unnamed_addr constant [97 x i8] c"EAP-AKA: Re-authentication response included AT_COUNTER_TOO_SMALL - starting full authentication\00", align 1
@EAP_SIM_SUCCESS = common dso_local global i32 0, align 4
@NOTIFICATION = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_aka_process_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_aka_process_reauth(%struct.eap_sm* %0, %struct.eap_aka_data* %1, %struct.wpabuf* %2, %struct.eap_sim_attrs* %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sim_attrs*, align 8
  %9 = alloca %struct.eap_sim_attrs, align 8
  %10 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store %struct.eap_sim_attrs* %3, %struct.eap_sim_attrs** %8, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 (i32, i8*, ...) @wpa_printf(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %14 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %4
  %18 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %20 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %21 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %24 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %27 = call i64 @eap_aka_verify_mac(%struct.eap_aka_data* %18, %struct.wpabuf* %19, i32* %22, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17, %4
  %30 = load i32, i32* @MSG_WARNING, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %160

32:                                               ; preds = %17
  %33 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %34 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %39 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @MSG_WARNING, align 4
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %160

45:                                               ; preds = %37
  %46 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %47 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %50 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %53 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %56 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = call i32* @eap_sim_parse_encr(i32 %48, i32* %51, i32 %54, i32* %57, %struct.eap_sim_attrs* %9, i32 0)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = load i32, i32* @MSG_WARNING, align 4
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  br label %160

64:                                               ; preds = %45
  %65 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %9, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %68 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load i32, i32* @MSG_WARNING, align 4
  %73 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %9, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %76 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %77)
  br label %160

79:                                               ; preds = %64
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @os_free(i32* %80)
  store i32* null, i32** %10, align 8
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %84 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %9, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = call i32 (i32, i8*, ...) @wpa_printf(i32 %88, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.6, i64 0, i64 0))
  %90 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %91 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %92 = call i32 @eap_aka_fullauth(%struct.eap_sm* %90, %struct.eap_aka_data* %91)
  br label %178

93:                                               ; preds = %79
  %94 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %95 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %100 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %105 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* @EAP_SIM_SUCCESS, align 4
  %107 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %108 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %110 = load i32, i32* @NOTIFICATION, align 4
  %111 = call i32 @eap_aka_state(%struct.eap_aka_data* %109, i32 %110)
  br label %116

112:                                              ; preds = %98, %93
  %113 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %114 = load i32, i32* @SUCCESS, align 4
  %115 = call i32 @eap_aka_state(%struct.eap_aka_data* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %103
  %117 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %118 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %149

121:                                              ; preds = %116
  %122 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %123 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %146

128:                                              ; preds = %121
  %129 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %130 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %133 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %136 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %139 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  %142 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %143 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @eap_sim_db_add_reauth(i32 %131, i32 %134, i32* %137, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %128, %127
  %147 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %148 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %147, i32 0, i32 4
  store i32* null, i32** %148, align 8
  br label %159

149:                                              ; preds = %116
  %150 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %151 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %154 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @eap_sim_db_remove_reauth(i32 %152, i32* %155)
  %157 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %158 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %157, i32 0, i32 2
  store i32* null, i32** %158, align 8
  br label %159

159:                                              ; preds = %149, %146
  br label %178

160:                                              ; preds = %71, %61, %42, %29
  %161 = load i32, i32* @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 4
  %162 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %163 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  %164 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %165 = load i32, i32* @NOTIFICATION, align 4
  %166 = call i32 @eap_aka_state(%struct.eap_aka_data* %164, i32 %165)
  %167 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %168 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %171 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @eap_sim_db_remove_reauth(i32 %169, i32* %172)
  %174 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %175 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %174, i32 0, i32 2
  store i32* null, i32** %175, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = call i32 @os_free(i32* %176)
  br label %178

178:                                              ; preds = %160, %159, %87
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @eap_aka_verify_mac(%struct.eap_aka_data*, %struct.wpabuf*, i32*, i32, i32) #1

declare dso_local i32* @eap_sim_parse_encr(i32, i32*, i32, i32*, %struct.eap_sim_attrs*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @eap_aka_fullauth(%struct.eap_sm*, %struct.eap_aka_data*) #1

declare dso_local i32 @eap_aka_state(%struct.eap_aka_data*, i32) #1

declare dso_local i32 @eap_sim_db_add_reauth(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @eap_sim_db_remove_reauth(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
