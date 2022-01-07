; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64*, i64, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_ttls_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EAP_TYPE_TTLS = common dso_local global i64 0, align 8
@eap_ttls_process_version = common dso_local global i32 0, align 4
@eap_ttls_process_msg = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"EAP-TTLS: No success data in resumed session - reject attempt\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"EAP-TTLS: Resumed session for another EAP type (%u) - reject attempt\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"EAP-TTLS: Identity from cached session\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"EAP-TTLS: Phase2 Identity not found in the user database\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"EAP-TTLS: Resuming previous session - skip Phase2\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_ttls_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ttls_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_ttls_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.eap_ttls_data*
  store %struct.eap_ttls_data* %12, %struct.eap_ttls_data** %7, align 8
  %13 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %14 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %7, align 8
  %15 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %14, i32 0, i32 0
  %16 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %17 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %7, align 8
  %18 = load i64, i64* @EAP_TYPE_TTLS, align 8
  %19 = load i32, i32* @eap_ttls_process_version, align 4
  %20 = load i32, i32* @eap_ttls_process_msg, align 4
  %21 = call i64 @eap_server_tls_process(%struct.eap_sm* %13, %struct.TYPE_2__* %15, %struct.wpabuf* %16, %struct.eap_ttls_data* %17, i64 %18, i32 %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %7, align 8
  %25 = load i32, i32* @FAILURE, align 4
  %26 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %24, i32 %25)
  br label %157

27:                                               ; preds = %3
  %28 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %29 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %7, align 8
  %32 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tls_connection_established(i32 %30, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %39 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %7, align 8
  %42 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @tls_connection_resumed(i32 %40, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37, %27
  br label %157

48:                                               ; preds = %37
  %49 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %7, align 8
  %50 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.wpabuf* @tls_connection_get_success_data(i32 %52)
  store %struct.wpabuf* %53, %struct.wpabuf** %8, align 8
  %54 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %55 = icmp ne %struct.wpabuf* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %58 = call i32 @wpabuf_len(%struct.wpabuf* %57)
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %56, %48
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %7, align 8
  %64 = load i32, i32* @FAILURE, align 4
  %65 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %63, i32 %64)
  br label %157

66:                                               ; preds = %56
  %67 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %68 = call i64* @wpabuf_head(%struct.wpabuf* %67)
  store i64* %68, i64** %9, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EAP_TYPE_TTLS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %7, align 8
  %79 = load i32, i32* @FAILURE, align 4
  %80 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %78, i32 %79)
  br label %157

81:                                               ; preds = %66
  %82 = load i64*, i64** %9, align 8
  %83 = getelementptr inbounds i64, i64* %82, i32 1
  store i64* %83, i64** %9, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %9, align 8
  %86 = load i64, i64* %84, align 8
  store i64 %86, i64* %10, align 8
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = load i64*, i64** %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @wpa_hexdump_ascii(i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64* %88, i64 %89)
  %91 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %92 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = call i32 @os_free(i64* %93)
  %95 = load i64, i64* %10, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %81
  %98 = load i64, i64* %10, align 8
  br label %100

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i64 [ %98, %97 ], [ 1, %99 ]
  %102 = call i64* @os_malloc(i64 %101)
  %103 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %104 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %103, i32 0, i32 0
  store i64* %102, i64** %104, align 8
  %105 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %106 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %100
  %110 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %111 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %7, align 8
  %113 = load i32, i32* @FAILURE, align 4
  %114 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %112, i32 %113)
  br label %157

115:                                              ; preds = %100
  %116 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %117 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i64*, i64** %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @os_memcpy(i64* %118, i64* %119, i64 %120)
  %122 = load i64, i64* %10, align 8
  %123 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %124 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %126 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %127 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %130 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @eap_user_get(%struct.eap_sm* %125, i64* %128, i64 %131, i32 1)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %115
  %135 = load i32, i32* @MSG_DEBUG, align 4
  %136 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %137 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %140 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @wpa_hexdump_ascii(i32 %135, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64* %138, i64 %141)
  %143 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %7, align 8
  %144 = load i32, i32* @FAILURE, align 4
  %145 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %143, i32 %144)
  br label %157

146:                                              ; preds = %115
  %147 = load i32, i32* @MSG_DEBUG, align 4
  %148 = call i32 (i32, i8*, ...) @wpa_printf(i32 %147, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %149 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %7, align 8
  %150 = load i32, i32* @SUCCESS, align 4
  %151 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %149, i32 %150)
  %152 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %7, align 8
  %153 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @tls_connection_set_success_data_resumed(i32 %155)
  br label %157

157:                                              ; preds = %146, %134, %109, %73, %60, %47, %23
  ret void
}

declare dso_local i64 @eap_server_tls_process(%struct.eap_sm*, %struct.TYPE_2__*, %struct.wpabuf*, %struct.eap_ttls_data*, i64, i32, i32) #1

declare dso_local i32 @eap_ttls_state(%struct.eap_ttls_data*, i32) #1

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

declare dso_local i32 @tls_connection_set_success_data_resumed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
