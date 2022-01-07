; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_process_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_process_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i64 }
%struct.eap_aka_data = type { i64, i64, i32, i32, i32*, i32, i64, i32, i32, i32, i32, i32*, i8*, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i32, i64*, i32, i32, i64, i32*, i32*, i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EAP-AKA: Processing Challenge\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"EAP-AKA: Invalid AT_CHECKCODE in the message\00", align 1
@EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH = common dso_local global i8* null, align 8
@NOTIFICATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"EAP-AKA: Challenge message did not include valid AT_MAC\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"EAP-AKA: Challenge message did not include valid AT_RES (attr len=%lu, res len=%lu bits, expected %lu bits)\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"EAP-AKA: Challenge response includes the correct AT_MAC\00", align 1
@EAP_SIM_SUCCESS = common dso_local global i8* null, align 8
@SUCCESS = common dso_local global i32 0, align 4
@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@EAP_AKA_PRIME_KDF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_aka_process_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_aka_process_challenge(%struct.eap_sm* %0, %struct.eap_aka_data* %1, %struct.wpabuf* %2, %struct.eap_sim_attrs* %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sim_attrs*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store %struct.eap_sim_attrs* %3, %struct.eap_sim_attrs** %8, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %12 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %4
  %16 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %17 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %18 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %21 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @eap_aka_verify_checkcode(%struct.eap_aka_data* %16, i64 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load i32, i32* @MSG_WARNING, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %29 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %30 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %29, i32 0, i32 12
  store i8* %28, i8** %30, align 8
  %31 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %32 = load i32, i32* @NOTIFICATION, align 4
  %33 = call i32 @eap_aka_state(%struct.eap_aka_data* %31, i32 %32)
  br label %188

34:                                               ; preds = %15, %4
  %35 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %36 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %42 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %43 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @eap_aka_verify_mac(%struct.eap_aka_data* %40, %struct.wpabuf* %41, i32* %44, i32* null, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %39, %34
  %48 = load i32, i32* @MSG_WARNING, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %51 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %52 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %51, i32 0, i32 12
  store i8* %50, i8** %52, align 8
  %53 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %54 = load i32, i32* @NOTIFICATION, align 4
  %55 = call i32 @eap_aka_state(%struct.eap_aka_data* %53, i32 %54)
  br label %188

56:                                               ; preds = %39
  %57 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %58 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %90, label %61

61:                                               ; preds = %56
  %62 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %63 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %66 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %90, label %69

69:                                               ; preds = %61
  %70 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %71 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %74 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 8
  %77 = icmp ne i32 %72, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %69
  %79 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %80 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %83 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %86 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @os_memcmp_const(i32* %81, i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %78, %69, %61, %56
  %91 = load i32, i32* @MSG_WARNING, align 4
  %92 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %93 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %97 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %101 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 8
  %105 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i64 %95, i64 %99, i64 %104)
  %106 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %107 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %108 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %107, i32 0, i32 12
  store i8* %106, i8** %108, align 8
  %109 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %110 = load i32, i32* @NOTIFICATION, align 4
  %111 = call i32 @eap_aka_state(%struct.eap_aka_data* %109, i32 %110)
  br label %188

112:                                              ; preds = %78
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = call i32 (i32, i8*, ...) @wpa_printf(i32 %113, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %115 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %116 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %112
  %120 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %121 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %126 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %125, i32 0, i32 3
  store i32 1, i32* %126, align 4
  %127 = load i8*, i8** @EAP_SIM_SUCCESS, align 8
  %128 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %129 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %128, i32 0, i32 12
  store i8* %127, i8** %129, align 8
  %130 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %131 = load i32, i32* @NOTIFICATION, align 4
  %132 = call i32 @eap_aka_state(%struct.eap_aka_data* %130, i32 %131)
  br label %137

133:                                              ; preds = %119, %112
  %134 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %135 = load i32, i32* @SUCCESS, align 4
  %136 = call i32 @eap_aka_state(%struct.eap_aka_data* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %124
  %138 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %139 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %138, i32 0, i32 11
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %144 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %147 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %150 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %149, i32 0, i32 11
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @eap_sim_db_add_pseudonym(i32 %145, i32 %148, i32* %151)
  %153 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %154 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %153, i32 0, i32 11
  store i32* null, i32** %154, align 8
  br label %155

155:                                              ; preds = %142, %137
  %156 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %157 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %188

160:                                              ; preds = %155
  %161 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %162 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %185

167:                                              ; preds = %160
  %168 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %169 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %172 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %175 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %174, i32 0, i32 4
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %178 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  %181 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %182 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @eap_sim_db_add_reauth(i32 %170, i32 %173, i32* %176, i64 %180, i32 %183)
  br label %185

185:                                              ; preds = %167, %166
  %186 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %187 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %186, i32 0, i32 4
  store i32* null, i32** %187, align 8
  br label %188

188:                                              ; preds = %25, %47, %90, %185, %155
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @eap_aka_verify_checkcode(%struct.eap_aka_data*, i64, i32) #1

declare dso_local i32 @eap_aka_state(%struct.eap_aka_data*, i32) #1

declare dso_local i64 @eap_aka_verify_mac(%struct.eap_aka_data*, %struct.wpabuf*, i32*, i32*, i32) #1

declare dso_local i64 @os_memcmp_const(i32*, i32, i32) #1

declare dso_local i32 @eap_sim_db_add_pseudonym(i32, i32, i32*) #1

declare dso_local i32 @eap_sim_db_add_reauth(i32, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
