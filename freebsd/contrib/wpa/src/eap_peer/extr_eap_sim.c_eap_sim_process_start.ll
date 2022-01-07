; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_process_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_process_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_sim_data = type { i32*, i32, i32, i32 }
%struct.eap_sim_attrs = type { i32, i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-SIM: subtype Start\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"EAP-SIM: No AT_VERSION_LIST in SIM/Start\00", align 1
@EAP_SIM_UNSUPPORTED_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"EAP-SIM: Failed to allocate memory for version list\00", align 1
@EAP_SIM_UNABLE_TO_PROCESS_PACKET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"EAP-SIM: Could not find a supported version\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"EAP-SIM: Selected Version %d\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"EAP-SIM: Too many ID requests used within one authentication\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sim_data*, i32, %struct.eap_sim_attrs*)* @eap_sim_process_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_process_start(%struct.eap_sm* %0, %struct.eap_sim_data* %1, i32 %2, %struct.eap_sim_attrs* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_sim_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.eap_sim_attrs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.eap_sim_attrs* %3, %struct.eap_sim_attrs** %9, align 8
  store i32 -1, i32* %10, align 4
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %18 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @EAP_SIM_UNSUPPORTED_VERSION, align 4
  %27 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %24, i32 %25, i32 %26)
  store %struct.wpabuf* %27, %struct.wpabuf** %5, align 8
  br label %168

28:                                               ; preds = %4
  %29 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %30 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @os_free(i32* %31)
  %33 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %34 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %37 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @os_memdup(i32* %35, i32 %38)
  %40 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %41 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %43 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %28
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %52 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %49, i32 %50, i32 %51)
  store %struct.wpabuf* %52, %struct.wpabuf** %5, align 8
  br label %168

53:                                               ; preds = %28
  %54 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %55 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %58 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %60 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %13, align 8
  store i64 0, i64* %12, align 8
  br label %62

62:                                               ; preds = %87, %53
  %63 = load i64, i64* %12, align 8
  %64 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %65 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sdiv i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %63, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %62
  %71 = load i32*, i32** %13, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 256
  %75 = load i32*, i32** %13, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  store i32 %78, i32* %14, align 4
  %79 = load i32*, i32** %13, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32* %80, i32** %13, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @eap_sim_supported_ver(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %10, align 4
  br label %90

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %12, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %12, align 8
  br label %62

90:                                               ; preds = %84, %62
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* @MSG_INFO, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @EAP_SIM_UNSUPPORTED_VERSION, align 4
  %99 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %96, i32 %97, i32 %98)
  store %struct.wpabuf* %99, %struct.wpabuf** %5, align 8
  br label %168

100:                                              ; preds = %90
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %106 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %11, align 4
  %107 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %108 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %150 [
    i32 129, label %110
    i32 131, label %111
    i32 130, label %124
    i32 128, label %137
  ]

110:                                              ; preds = %100
  br label %150

111:                                              ; preds = %100
  %112 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %113 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %116, %111
  %120 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %121 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  br label %150

124:                                              ; preds = %100
  %125 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %126 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %129, %124
  %133 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %134 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  br label %150

137:                                              ; preds = %100
  %138 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %139 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %140, 2
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %142, %137
  %146 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %147 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %100, %145, %132, %119, %110
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i32, i32* @MSG_INFO, align 4
  %155 = call i32 (i32, i8*, ...) @wpa_printf(i32 %154, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %156 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %159 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %156, i32 %157, i32 %158)
  store %struct.wpabuf* %159, %struct.wpabuf** %5, align 8
  br label %168

160:                                              ; preds = %150
  %161 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %162 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %9, align 8
  %165 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call %struct.wpabuf* @eap_sim_response_start(%struct.eap_sm* %161, %struct.eap_sim_data* %162, i32 %163, i32 %166)
  store %struct.wpabuf* %167, %struct.wpabuf** %5, align 8
  br label %168

168:                                              ; preds = %160, %153, %93, %46, %21
  %169 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %169
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data*, i32, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_memdup(i32*, i32) #1

declare dso_local i64 @eap_sim_supported_ver(i32) #1

declare dso_local %struct.wpabuf* @eap_sim_response_start(%struct.eap_sm*, %struct.eap_sim_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
