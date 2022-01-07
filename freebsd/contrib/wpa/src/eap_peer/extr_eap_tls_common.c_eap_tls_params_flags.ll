; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_tls_params_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_tls_params_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection_params = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"tls_allow_md5=1\00", align 1
@TLS_CONN_ALLOW_SIGN_RSA_MD5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"tls_disable_time_checks=1\00", align 1
@TLS_CONN_DISABLE_TIME_CHECKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"tls_disable_session_ticket=1\00", align 1
@TLS_CONN_DISABLE_SESSION_TICKET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"tls_disable_session_ticket=0\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"tls_disable_tlsv1_0=1\00", align 1
@TLS_CONN_DISABLE_TLSv1_0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"tls_disable_tlsv1_0=0\00", align 1
@TLS_CONN_ENABLE_TLSv1_0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"tls_disable_tlsv1_1=1\00", align 1
@TLS_CONN_DISABLE_TLSv1_1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"tls_disable_tlsv1_1=0\00", align 1
@TLS_CONN_ENABLE_TLSv1_1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"tls_disable_tlsv1_2=1\00", align 1
@TLS_CONN_DISABLE_TLSv1_2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"tls_disable_tlsv1_2=0\00", align 1
@TLS_CONN_ENABLE_TLSv1_2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"tls_disable_tlsv1_3=1\00", align 1
@TLS_CONN_DISABLE_TLSv1_3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"tls_disable_tlsv1_3=0\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"tls_ext_cert_check=1\00", align 1
@TLS_CONN_EXT_CERT_CHECK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"tls_ext_cert_check=0\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"tls_suiteb=1\00", align 1
@TLS_CONN_SUITEB = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"tls_suiteb=0\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"tls_suiteb_no_ecdh=1\00", align 1
@TLS_CONN_SUITEB_NO_ECDH = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"tls_suiteb_no_ecdh=0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_connection_params*, i8*)* @eap_tls_params_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_tls_params_flags(%struct.tls_connection_params* %0, i8* %1) #0 {
  %3 = alloca %struct.tls_connection_params*, align 8
  %4 = alloca i8*, align 8
  store %struct.tls_connection_params* %0, %struct.tls_connection_params** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %211

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @os_strstr(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* @TLS_CONN_ALLOW_SIGN_RSA_MD5, align 4
  %14 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %15 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %12, %8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @os_strstr(i8* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* @TLS_CONN_DISABLE_TIME_CHECKS, align 4
  %24 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %25 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @os_strstr(i8* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @TLS_CONN_DISABLE_SESSION_TICKET, align 4
  %34 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %35 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %28
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @os_strstr(i8* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @TLS_CONN_DISABLE_SESSION_TICKET, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %46 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %38
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @os_strstr(i8* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_0, align 4
  %55 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %56 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i8*, i8** %4, align 8
  %61 = call i64 @os_strstr(i8* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_0, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %67 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @TLS_CONN_ENABLE_TLSv1_0, align 4
  %71 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %72 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %63, %59
  %76 = load i8*, i8** %4, align 8
  %77 = call i64 @os_strstr(i8* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_1, align 4
  %81 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %82 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %75
  %86 = load i8*, i8** %4, align 8
  %87 = call i64 @os_strstr(i8* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_1, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %93 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @TLS_CONN_ENABLE_TLSv1_1, align 4
  %97 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %98 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %89, %85
  %102 = load i8*, i8** %4, align 8
  %103 = call i64 @os_strstr(i8* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_2, align 4
  %107 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %108 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %101
  %112 = load i8*, i8** %4, align 8
  %113 = call i64 @os_strstr(i8* %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_2, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %119 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* @TLS_CONN_ENABLE_TLSv1_2, align 4
  %123 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %124 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %115, %111
  %128 = load i8*, i8** %4, align 8
  %129 = call i64 @os_strstr(i8* %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_3, align 4
  %133 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %134 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %131, %127
  %138 = load i8*, i8** %4, align 8
  %139 = call i64 @os_strstr(i8* %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_3, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %145 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %141, %137
  %149 = load i8*, i8** %4, align 8
  %150 = call i64 @os_strstr(i8* %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i32, i32* @TLS_CONN_EXT_CERT_CHECK, align 4
  %154 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %155 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %152, %148
  %159 = load i8*, i8** %4, align 8
  %160 = call i64 @os_strstr(i8* %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i32, i32* @TLS_CONN_EXT_CERT_CHECK, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %166 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %162, %158
  %170 = load i8*, i8** %4, align 8
  %171 = call i64 @os_strstr(i8* %170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load i32, i32* @TLS_CONN_SUITEB, align 4
  %175 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %176 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %173, %169
  %180 = load i8*, i8** %4, align 8
  %181 = call i64 @os_strstr(i8* %180, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = load i32, i32* @TLS_CONN_SUITEB, align 4
  %185 = xor i32 %184, -1
  %186 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %187 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %183, %179
  %191 = load i8*, i8** %4, align 8
  %192 = call i64 @os_strstr(i8* %191, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i32, i32* @TLS_CONN_SUITEB_NO_ECDH, align 4
  %196 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %197 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %194, %190
  %201 = load i8*, i8** %4, align 8
  %202 = call i64 @os_strstr(i8* %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %200
  %205 = load i32, i32* @TLS_CONN_SUITEB_NO_ECDH, align 4
  %206 = xor i32 %205, -1
  %207 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %208 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, %206
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %7, %204, %200
  ret void
}

declare dso_local i64 @os_strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
