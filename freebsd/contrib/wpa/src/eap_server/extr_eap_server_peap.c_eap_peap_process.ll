; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64*, i64, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_peap_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EAP_TYPE_PEAP = common dso_local global i64 0, align 8
@eap_peap_process_version = common dso_local global i32 0, align 4
@eap_peap_process_msg = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"EAP-PEAP: No success data in resumed session - reject attempt\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"EAP-PEAP: Resumed session for another EAP type (%u) - reject attempt\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"EAP-PEAP: Identity from cached session\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"EAP-PEAP: Phase2 Identity not found in the user database\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"EAP-PEAP: Resuming previous session - skip Phase2\00", align 1
@SUCCESS_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_peap_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peap_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_peap_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.eap_peap_data*
  store %struct.eap_peap_data* %12, %struct.eap_peap_data** %7, align 8
  %13 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %14 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %15 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %14, i32 0, i32 1
  %16 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %17 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %18 = load i64, i64* @EAP_TYPE_PEAP, align 8
  %19 = load i32, i32* @eap_peap_process_version, align 4
  %20 = load i32, i32* @eap_peap_process_msg, align 4
  %21 = call i64 @eap_server_tls_process(%struct.eap_sm* %13, %struct.TYPE_2__* %15, %struct.wpabuf* %16, %struct.eap_peap_data* %17, i64 %18, i32 %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %25 = load i32, i32* @FAILURE, align 4
  %26 = call i32 @eap_peap_state(%struct.eap_peap_data* %24, i32 %25)
  br label %169

27:                                               ; preds = %3
  %28 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %29 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %53, label %33

33:                                               ; preds = %27
  %34 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %35 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %38 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @tls_connection_established(i32 %36, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %33
  %44 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %45 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %48 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @tls_connection_resumed(i32 %46, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %43, %33, %27
  br label %169

54:                                               ; preds = %43
  %55 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %56 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.wpabuf* @tls_connection_get_success_data(i32 %58)
  store %struct.wpabuf* %59, %struct.wpabuf** %8, align 8
  %60 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %61 = icmp ne %struct.wpabuf* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %64 = call i32 @wpabuf_len(%struct.wpabuf* %63)
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %72

66:                                               ; preds = %62, %54
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %70 = load i32, i32* @FAILURE, align 4
  %71 = call i32 @eap_peap_state(%struct.eap_peap_data* %69, i32 %70)
  br label %169

72:                                               ; preds = %62
  %73 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %74 = call i64* @wpabuf_head(%struct.wpabuf* %73)
  store i64* %74, i64** %9, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EAP_TYPE_PEAP, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = load i64*, i64** %9, align 8
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %85 = load i32, i32* @FAILURE, align 4
  %86 = call i32 @eap_peap_state(%struct.eap_peap_data* %84, i32 %85)
  br label %169

87:                                               ; preds = %72
  %88 = load i64*, i64** %9, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %9, align 8
  %90 = load i64*, i64** %9, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %9, align 8
  %92 = load i64, i64* %90, align 8
  store i64 %92, i64* %10, align 8
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = load i64*, i64** %9, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @wpa_hexdump_ascii(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64* %94, i64 %95)
  %97 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %98 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = call i32 @os_free(i64* %99)
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %87
  %104 = load i64, i64* %10, align 8
  br label %106

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i64 [ %104, %103 ], [ 1, %105 ]
  %108 = call i64* @os_malloc(i64 %107)
  %109 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %110 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %109, i32 0, i32 0
  store i64* %108, i64** %110, align 8
  %111 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %112 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = icmp ne i64* %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %106
  %116 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %117 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %119 = load i32, i32* @FAILURE, align 4
  %120 = call i32 @eap_peap_state(%struct.eap_peap_data* %118, i32 %119)
  br label %169

121:                                              ; preds = %106
  %122 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %123 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @os_memcpy(i64* %124, i64* %125, i64 %126)
  %128 = load i64, i64* %10, align 8
  %129 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %130 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  %131 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %132 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %133 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %136 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @eap_user_get(%struct.eap_sm* %131, i64* %134, i64 %137, i32 1)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %121
  %141 = load i32, i32* @MSG_DEBUG, align 4
  %142 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %143 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %146 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @wpa_hexdump_ascii(i32 %141, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64* %144, i64 %147)
  %149 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %150 = load i32, i32* @FAILURE, align 4
  %151 = call i32 @eap_peap_state(%struct.eap_peap_data* %149, i32 %150)
  br label %169

152:                                              ; preds = %121
  %153 = load i32, i32* @MSG_DEBUG, align 4
  %154 = call i32 (i32, i8*, ...) @wpa_printf(i32 %153, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %155 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %156 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %157 = call i32 @eap_peap_req_success(%struct.eap_sm* %155, %struct.eap_peap_data* %156)
  %158 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %159 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @SUCCESS_REQ, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %152
  %164 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %165 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @tls_connection_set_success_data_resumed(i32 %167)
  br label %169

169:                                              ; preds = %23, %53, %66, %79, %115, %140, %163, %152
  ret void
}

declare dso_local i64 @eap_server_tls_process(%struct.eap_sm*, %struct.TYPE_2__*, %struct.wpabuf*, %struct.eap_peap_data*, i64, i32, i32) #1

declare dso_local i32 @eap_peap_state(%struct.eap_peap_data*, i32) #1

declare dso_local i32 @tls_connection_established(i32, i32) #1

declare dso_local i32 @tls_connection_resumed(i32, i32) #1

declare dso_local %struct.wpabuf* @tls_connection_get_success_data(i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i64*, i64) #1

declare dso_local i32 @os_free(i64*) #1

declare dso_local i64* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i64*, i64*, i64) #1

declare dso_local i64 @eap_user_get(%struct.eap_sm*, i64*, i64, i32) #1

declare dso_local i32 @eap_peap_req_success(%struct.eap_sm*, %struct.eap_peap_data*) #1

declare dso_local i32 @tls_connection_set_success_data_resumed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
