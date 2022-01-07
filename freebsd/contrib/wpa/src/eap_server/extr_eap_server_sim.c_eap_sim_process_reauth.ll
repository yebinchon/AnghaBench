; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_process_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_process_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i64 }
%struct.eap_sim_data = type { i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i64, i64, i32, i32*, i32, i32*, i32* }

@EAP_SIM_NONCE_S_LEN = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"EAP-SIM: Re-authentication message did not include valid AT_MAC\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"EAP-SIM: Reauthentication message did not include encrypted data\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"EAP-SIM: Failed to parse encrypted data from reauthentication message\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"EAP-SIM: Re-authentication message used incorrect counter %u, expected %u\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"EAP-SIM: Re-authentication response includes the correct AT_MAC\00", align 1
@.str.5 = private unnamed_addr constant [97 x i8] c"EAP-AKA: Re-authentication response included AT_COUNTER_TOO_SMALL - starting full authentication\00", align 1
@START = common dso_local global i32 0, align 4
@EAP_SIM_SUCCESS = common dso_local global i32 0, align 4
@NOTIFICATION = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_sim_data*, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_sim_process_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_process_reauth(%struct.eap_sm* %0, %struct.eap_sim_data* %1, %struct.wpabuf* %2, %struct.eap_sim_attrs* %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_sim_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sim_attrs*, align 8
  %9 = alloca %struct.eap_sim_attrs, align 8
  %10 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store %struct.eap_sim_attrs* %3, %struct.eap_sim_attrs** %8, align 8
  store i32* null, i32** %10, align 8
  %11 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %12 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %4
  %16 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %17 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %20 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %21 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %24 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %27 = call i64 @eap_sim_verify_mac(i32 %18, %struct.wpabuf* %19, i32* %22, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15, %4
  %30 = load i32, i32* @MSG_WARNING, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %154

32:                                               ; preds = %15
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
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %154

45:                                               ; preds = %37
  %46 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %47 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %46, i32 0, i32 8
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
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  br label %154

64:                                               ; preds = %45
  %65 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %9, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %68 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load i32, i32* @MSG_WARNING, align 4
  %73 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %9, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %76 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %77)
  br label %154

79:                                               ; preds = %64
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @os_free(i32* %80)
  store i32* null, i32** %10, align 8
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %84 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %9, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = call i32 (i32, i8*, ...) @wpa_printf(i32 %88, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.5, i64 0, i64 0))
  %90 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %91 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %90, i32 0, i32 0
  store i32 -1, i32* %91, align 8
  %92 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %93 = load i32, i32* @START, align 4
  %94 = call i32 @eap_sim_state(%struct.eap_sim_data* %92, i32 %93)
  br label %172

95:                                               ; preds = %79
  %96 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %97 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %102 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %107 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load i32, i32* @EAP_SIM_SUCCESS, align 4
  %109 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %110 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %112 = load i32, i32* @NOTIFICATION, align 4
  %113 = call i32 @eap_sim_state(%struct.eap_sim_data* %111, i32 %112)
  br label %118

114:                                              ; preds = %100, %95
  %115 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %116 = load i32, i32* @SUCCESS, align 4
  %117 = call i32 @eap_sim_state(%struct.eap_sim_data* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %105
  %119 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %120 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %143

123:                                              ; preds = %118
  %124 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %125 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %128 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %131 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %134 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  %137 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %138 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @eap_sim_db_add_reauth(i32 %126, i32 %129, i32* %132, i32 %136, i32 %139)
  %141 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %142 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %141, i32 0, i32 4
  store i32* null, i32** %142, align 8
  br label %153

143:                                              ; preds = %118
  %144 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %145 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %148 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @eap_sim_db_remove_reauth(i32 %146, i32* %149)
  %151 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %152 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %151, i32 0, i32 2
  store i32* null, i32** %152, align 8
  br label %153

153:                                              ; preds = %143, %123
  br label %172

154:                                              ; preds = %71, %61, %42, %29
  %155 = load i32, i32* @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 4
  %156 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %157 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  %158 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %159 = load i32, i32* @NOTIFICATION, align 4
  %160 = call i32 @eap_sim_state(%struct.eap_sim_data* %158, i32 %159)
  %161 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %162 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %165 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @eap_sim_db_remove_reauth(i32 %163, i32* %166)
  %168 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %169 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %168, i32 0, i32 2
  store i32* null, i32** %169, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = call i32 @os_free(i32* %170)
  br label %172

172:                                              ; preds = %154, %153, %87
  ret void
}

declare dso_local i64 @eap_sim_verify_mac(i32, %struct.wpabuf*, i32*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @eap_sim_parse_encr(i32, i32*, i32, i32*, %struct.eap_sim_attrs*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @eap_sim_state(%struct.eap_sim_data*, i32) #1

declare dso_local i32 @eap_sim_db_add_reauth(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @eap_sim_db_remove_reauth(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
