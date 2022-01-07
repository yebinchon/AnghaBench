; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_build_encr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_build_encr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32 }
%struct.eap_aka_data = type { i64, i64, i32, i32*, i32* }
%struct.eap_sim_msg = type { i32 }

@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@EAP_SIM_DB_AKA_PRIME = common dso_local global i32 0, align 4
@EAP_SIM_DB_AKA = common dso_local global i32 0, align 4
@EAP_AKA_MAX_FAST_REAUTHS = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"EAP-AKA: Max fast re-authentication count exceeded - force full authentication\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"   AT_IV\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"   AT_ENCR_DATA\00", align 1
@EAP_SIM_AT_IV = common dso_local global i32 0, align 4
@EAP_SIM_AT_ENCR_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"   *AT_COUNTER (%u)\00", align 1
@EAP_SIM_AT_COUNTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"   *AT_NONCE_S\00", align 1
@EAP_SIM_AT_NONCE_S = common dso_local global i32 0, align 4
@EAP_SIM_NONCE_S_LEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"   *AT_NEXT_PSEUDONYM (%s)\00", align 1
@EAP_SIM_AT_NEXT_PSEUDONYM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"   *AT_NEXT_REAUTH_ID (%s)\00", align 1
@EAP_SIM_AT_NEXT_REAUTH_ID = common dso_local global i32 0, align 4
@EAP_SIM_AT_PADDING = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"EAP-AKA: Failed to encrypt AT_ENCR_DATA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_aka_data*, %struct.eap_sim_msg*, i64, i32*)* @eap_aka_build_encr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_aka_build_encr(%struct.eap_sm* %0, %struct.eap_aka_data* %1, %struct.eap_sim_msg* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_aka_data*, align 8
  %9 = alloca %struct.eap_sim_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %8, align 8
  store %struct.eap_sim_msg* %2, %struct.eap_sim_msg** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @os_free(i32* %14)
  %16 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %17 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %23 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %22, i32 0, i32 4
  store i32* null, i32** %23, align 8
  br label %49

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %29 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %32 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @EAP_SIM_DB_AKA_PRIME, align 4
  br label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @EAP_SIM_DB_AKA, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i32* @eap_sim_db_get_next_pseudonym(i32 %30, i32 %41)
  %43 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %44 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %43, i32 0, i32 4
  store i32* %42, i32** %44, align 8
  br label %48

45:                                               ; preds = %24
  %46 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %47 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %46, i32 0, i32 4
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %21
  %50 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %51 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @os_free(i32* %52)
  %54 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %55 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 2
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %61 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  br label %92

62:                                               ; preds = %49
  %63 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %64 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @EAP_AKA_MAX_FAST_REAUTHS, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %70 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %73 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @EAP_SIM_DB_AKA_PRIME, align 4
  br label %81

79:                                               ; preds = %68
  %80 = load i32, i32* @EAP_SIM_DB_AKA, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = call i32* @eap_sim_db_get_next_reauth_id(i32 %71, i32 %82)
  %84 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %85 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %84, i32 0, i32 3
  store i32* %83, i32** %85, align 8
  br label %91

86:                                               ; preds = %62
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %90 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %89, i32 0, i32 3
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %86, %81
  br label %92

92:                                               ; preds = %91, %59
  %93 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %94 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %99 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i64, i64* %10, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32*, i32** %11, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %201

109:                                              ; preds = %105, %102, %97, %92
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = call i32 (i32, i8*, ...) @wpa_printf(i32 %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @MSG_DEBUG, align 4
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %9, align 8
  %115 = load i32, i32* @EAP_SIM_AT_IV, align 4
  %116 = load i32, i32* @EAP_SIM_AT_ENCR_DATA, align 4
  %117 = call i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg* %114, i32 %115, i32 %116)
  %118 = load i64, i64* %10, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %109
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = load i64, i64* %10, align 8
  %123 = call i32 (i32, i8*, ...) @wpa_printf(i32 %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %122)
  %124 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %9, align 8
  %125 = load i32, i32* @EAP_SIM_AT_COUNTER, align 4
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %124, i32 %125, i64 %126, i32* null, i64 0)
  br label %128

128:                                              ; preds = %120, %109
  %129 = load i32*, i32** %11, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i32, i32* @MSG_DEBUG, align 4
  %133 = call i32 (i32, i8*, ...) @wpa_printf(i32 %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %134 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %9, align 8
  %135 = load i32, i32* @EAP_SIM_AT_NONCE_S, align 4
  %136 = load i32*, i32** %11, align 8
  %137 = load i64, i64* @EAP_SIM_NONCE_S_LEN, align 8
  %138 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %134, i32 %135, i64 0, i32* %136, i64 %137)
  br label %139

139:                                              ; preds = %131, %128
  %140 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %141 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %164

144:                                              ; preds = %139
  %145 = load i32, i32* @MSG_DEBUG, align 4
  %146 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %147 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 (i32, i8*, ...) @wpa_printf(i32 %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %148)
  %150 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %9, align 8
  %151 = load i32, i32* @EAP_SIM_AT_NEXT_PSEUDONYM, align 4
  %152 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %153 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = call i64 @os_strlen(i32* %154)
  %156 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %157 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %160 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = call i64 @os_strlen(i32* %161)
  %163 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %150, i32 %151, i64 %155, i32* %158, i64 %162)
  br label %164

164:                                              ; preds = %144, %139
  %165 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %166 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %189

169:                                              ; preds = %164
  %170 = load i32, i32* @MSG_DEBUG, align 4
  %171 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %172 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 (i32, i8*, ...) @wpa_printf(i32 %170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32* %173)
  %175 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %9, align 8
  %176 = load i32, i32* @EAP_SIM_AT_NEXT_REAUTH_ID, align 4
  %177 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %178 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = call i64 @os_strlen(i32* %179)
  %181 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %182 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %185 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = call i64 @os_strlen(i32* %186)
  %188 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %175, i32 %176, i64 %180, i32* %183, i64 %187)
  br label %189

189:                                              ; preds = %169, %164
  %190 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %9, align 8
  %191 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %192 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @EAP_SIM_AT_PADDING, align 4
  %195 = call i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg* %190, i32 %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %189
  %198 = load i32, i32* @MSG_WARNING, align 4
  %199 = call i32 (i32, i8*, ...) @wpa_printf(i32 %198, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %201

200:                                              ; preds = %189
  store i32 0, i32* %6, align 4
  br label %201

201:                                              ; preds = %200, %197, %108
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @eap_sim_db_get_next_pseudonym(i32, i32) #1

declare dso_local i32* @eap_sim_db_get_next_reauth_id(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg*, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i64, i32*, i64) #1

declare dso_local i64 @os_strlen(i32*) #1

declare dso_local i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
