; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_build_encr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_build_encr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32 }
%struct.eap_sim_data = type { i64, i32, i32*, i32* }
%struct.eap_sim_msg = type { i32 }

@EAP_SIM_DB_SIM = common dso_local global i32 0, align 4
@EAP_SIM_MAX_FAST_REAUTHS = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"EAP-SIM: Max fast re-authentication count exceeded - force full authentication\00", align 1
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
@.str.7 = private unnamed_addr constant [40 x i8] c"EAP-SIM: Failed to encrypt AT_ENCR_DATA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_sim_data*, %struct.eap_sim_msg*, i64, i32*)* @eap_sim_build_encr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_sim_build_encr(%struct.eap_sm* %0, %struct.eap_sim_data* %1, %struct.eap_sim_msg* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_sim_data*, align 8
  %9 = alloca %struct.eap_sim_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %8, align 8
  store %struct.eap_sim_msg* %2, %struct.eap_sim_msg** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @os_free(i32* %14)
  %16 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %17 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %23 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  br label %39

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %29 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EAP_SIM_DB_SIM, align 4
  %32 = call i32* @eap_sim_db_get_next_pseudonym(i32 %30, i32 %31)
  %33 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %34 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %33, i32 0, i32 3
  store i32* %32, i32** %34, align 8
  br label %38

35:                                               ; preds = %24
  %36 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %37 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %27
  br label %39

39:                                               ; preds = %38, %21
  %40 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %41 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @os_free(i32* %42)
  %44 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %45 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %51 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  br label %72

52:                                               ; preds = %39
  %53 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %54 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EAP_SIM_MAX_FAST_REAUTHS, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %60 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @EAP_SIM_DB_SIM, align 4
  %63 = call i32* @eap_sim_db_get_next_reauth_id(i32 %61, i32 %62)
  %64 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %65 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  br label %71

66:                                               ; preds = %52
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %70 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %66, %58
  br label %72

72:                                               ; preds = %71, %49
  %73 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %74 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %79 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i64, i64* %10, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32*, i32** %11, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  br label %181

89:                                               ; preds = %85, %82, %77, %72
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %9, align 8
  %95 = load i32, i32* @EAP_SIM_AT_IV, align 4
  %96 = load i32, i32* @EAP_SIM_AT_ENCR_DATA, align 4
  %97 = call i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg* %94, i32 %95, i32 %96)
  %98 = load i64, i64* %10, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %89
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load i64, i64* %10, align 8
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %102)
  %104 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %9, align 8
  %105 = load i32, i32* @EAP_SIM_AT_COUNTER, align 4
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %104, i32 %105, i64 %106, i32* null, i64 0)
  br label %108

108:                                              ; preds = %100, %89
  %109 = load i32*, i32** %11, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32, i32* @MSG_DEBUG, align 4
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %114 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %9, align 8
  %115 = load i32, i32* @EAP_SIM_AT_NONCE_S, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = load i64, i64* @EAP_SIM_NONCE_S_LEN, align 8
  %118 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %114, i32 %115, i64 0, i32* %116, i64 %117)
  br label %119

119:                                              ; preds = %111, %108
  %120 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %121 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %144

124:                                              ; preds = %119
  %125 = load i32, i32* @MSG_DEBUG, align 4
  %126 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %127 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 (i32, i8*, ...) @wpa_printf(i32 %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %128)
  %130 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %9, align 8
  %131 = load i32, i32* @EAP_SIM_AT_NEXT_PSEUDONYM, align 4
  %132 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %133 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = call i64 @os_strlen(i32* %134)
  %136 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %137 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %140 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = call i64 @os_strlen(i32* %141)
  %143 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %130, i32 %131, i64 %135, i32* %138, i64 %142)
  br label %144

144:                                              ; preds = %124, %119
  %145 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %146 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %169

149:                                              ; preds = %144
  %150 = load i32, i32* @MSG_DEBUG, align 4
  %151 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %152 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 (i32, i8*, ...) @wpa_printf(i32 %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32* %153)
  %155 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %9, align 8
  %156 = load i32, i32* @EAP_SIM_AT_NEXT_REAUTH_ID, align 4
  %157 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %158 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = call i64 @os_strlen(i32* %159)
  %161 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %162 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %165 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = call i64 @os_strlen(i32* %166)
  %168 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %155, i32 %156, i64 %160, i32* %163, i64 %167)
  br label %169

169:                                              ; preds = %149, %144
  %170 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %9, align 8
  %171 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %172 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @EAP_SIM_AT_PADDING, align 4
  %175 = call i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg* %170, i32 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %169
  %178 = load i32, i32* @MSG_WARNING, align 4
  %179 = call i32 (i32, i8*, ...) @wpa_printf(i32 %178, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %181

180:                                              ; preds = %169
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %180, %177, %88
  %182 = load i32, i32* %6, align 4
  ret i32 %182
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
