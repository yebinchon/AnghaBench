; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_tls_params_from_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_tls_params_from_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i64 }
%struct.eap_ssl_data = type { i64 }
%struct.tls_connection_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eap_peer_config = type { i32, i64 }

@EAP_TYPE_FAST = common dso_local global i64 0, align 8
@EAP_TYPE_TEAP = common dso_local global i64 0, align 8
@TLS_CONN_DISABLE_SESSION_TICKET = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_TLSv1_0 = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_TLSv1_1 = common dso_local global i32 0, align 4
@TLS_CONN_TEAP_ANON_DH = common dso_local global i32 0, align 4
@EAP_TYPE_TTLS = common dso_local global i64 0, align 8
@EAP_TYPE_PEAP = common dso_local global i64 0, align 8
@TLS_CONN_DISABLE_TLSv1_3 = common dso_local global i32 0, align 4
@EAP_TYPE_TLS = common dso_local global i64 0, align 8
@EAP_UNAUTH_TLS_TYPE = common dso_local global i64 0, align 8
@EAP_WFA_UNAUTH_TLS_TYPE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"TLS: using phase2 config options\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"TLS: using phase1 config options\00", align 1
@TLS_CONN_EAP_FAST = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"SSL: Failed to get configuration blobs\00", align 1
@TLS_CONN_EXT_CERT_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ssl_data*, %struct.tls_connection_params*, %struct.eap_peer_config*, i32)* @eap_tls_params_from_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tls_params_from_conf(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, %struct.tls_connection_params* %2, %struct.eap_peer_config* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_ssl_data*, align 8
  %9 = alloca %struct.tls_connection_params*, align 8
  %10 = alloca %struct.eap_peer_config*, align 8
  %11 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %8, align 8
  store %struct.tls_connection_params* %2, %struct.tls_connection_params** %9, align 8
  store %struct.eap_peer_config* %3, %struct.eap_peer_config** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %13 = call i32 @os_memset(%struct.tls_connection_params* %12, i32 0, i32 56)
  %14 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %15 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %5
  %19 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %20 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EAP_TYPE_FAST, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %26 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EAP_TYPE_TEAP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* @TLS_CONN_DISABLE_SESSION_TICKET, align 4
  %32 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %33 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %24, %18, %5
  %37 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %38 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EAP_TYPE_TEAP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_0, align 4
  %44 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_1, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %47 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %51 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load i32, i32* @TLS_CONN_TEAP_ANON_DH, align 4
  %56 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %57 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %42
  br label %61

61:                                               ; preds = %60, %36
  %62 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %63 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EAP_TYPE_FAST, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %85, label %67

67:                                               ; preds = %61
  %68 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %69 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EAP_TYPE_TEAP, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %75 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EAP_TYPE_TTLS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %81 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @EAP_TYPE_PEAP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79, %73, %67, %61
  %86 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_3, align 4
  %87 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %88 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %93 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @EAP_TYPE_TLS, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %91
  %98 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %99 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @EAP_UNAUTH_TLS_TYPE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %105 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @EAP_WFA_UNAUTH_TLS_TYPE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103, %97, %91
  %110 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_3, align 4
  %111 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %112 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %103
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = call i32 @wpa_printf(i32 %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %121 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %122 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %123 = call i32 @eap_tls_params_from_conf2(%struct.tls_connection_params* %121, %struct.eap_peer_config* %122)
  br label %142

124:                                              ; preds = %115
  %125 = load i32, i32* @MSG_DEBUG, align 4
  %126 = call i32 @wpa_printf(i32 %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %127 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %128 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %129 = call i32 @eap_tls_params_from_conf1(%struct.tls_connection_params* %127, %struct.eap_peer_config* %128)
  %130 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %131 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @EAP_TYPE_FAST, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %124
  %136 = load i32, i32* @TLS_CONN_EAP_FAST, align 4
  %137 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %138 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %135, %124
  br label %142

142:                                              ; preds = %141, %118
  %143 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %144 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %145 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %144, i32 0, i32 13
  %146 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %147 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %146, i32 0, i32 12
  %148 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %149 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %148, i32 0, i32 11
  %150 = call i64 @eap_tls_check_blob(%struct.eap_sm* %143, i32* %145, i32* %147, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %182, label %152

152:                                              ; preds = %142
  %153 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %154 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %155 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %154, i32 0, i32 10
  %156 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %157 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %156, i32 0, i32 9
  %158 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %159 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %158, i32 0, i32 8
  %160 = call i64 @eap_tls_check_blob(%struct.eap_sm* %153, i32* %155, i32* %157, i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %182, label %162

162:                                              ; preds = %152
  %163 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %164 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %165 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %164, i32 0, i32 7
  %166 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %167 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %166, i32 0, i32 6
  %168 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %169 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %168, i32 0, i32 5
  %170 = call i64 @eap_tls_check_blob(%struct.eap_sm* %163, i32* %165, i32* %167, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %182, label %172

172:                                              ; preds = %162
  %173 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %174 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %175 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %174, i32 0, i32 4
  %176 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %177 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %176, i32 0, i32 3
  %178 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %179 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %178, i32 0, i32 2
  %180 = call i64 @eap_tls_check_blob(%struct.eap_sm* %173, i32* %175, i32* %177, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %172, %162, %152, %142
  %183 = load i32, i32* @MSG_INFO, align 4
  %184 = call i32 @wpa_printf(i32 %183, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %202

185:                                              ; preds = %172
  %186 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  %187 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %190 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %192 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @TLS_CONN_EXT_CERT_CHECK, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %201 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %185, %182
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @os_memset(%struct.tls_connection_params*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_tls_params_from_conf2(%struct.tls_connection_params*, %struct.eap_peer_config*) #1

declare dso_local i32 @eap_tls_params_from_conf1(%struct.tls_connection_params*, %struct.eap_peer_config*) #1

declare dso_local i64 @eap_tls_check_blob(%struct.eap_sm*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
