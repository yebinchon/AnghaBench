; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_global_set_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_global_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection_params = type { i32, i64, i32, i32, i32, i32, i64 }
%struct.tls_global = type { i32, i32, i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate global credentials %s\00", align 1
@GNUTLS_X509_FMT_DER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to read CA cert '%s' in DER format: %s\00", align 1
@GNUTLS_X509_FMT_PEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to read CA cert '%s' in PEM format: %s\00", align 1
@TLS_CONN_ALLOW_SIGN_RSA_MD5 = common dso_local global i32 0, align 4
@GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5 = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_TIME_CHECKS = common dso_local global i32 0, align 4
@GNUTLS_VERIFY_DISABLE_TIME_CHECKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to read client cert/key in DER format: %s\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Failed to read client cert/key in PEM format: %s\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"GnuTLS: PKCS#12 support not included\00", align 1
@server_ocsp_status_req = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_global_set_params(i8* %0, %struct.tls_connection_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tls_connection_params*, align 8
  %6 = alloca %struct.tls_global*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.tls_connection_params* %1, %struct.tls_connection_params** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.tls_global*
  store %struct.tls_global* %10, %struct.tls_global** %6, align 8
  %11 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %12 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %181

16:                                               ; preds = %2
  %17 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %18 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %20 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %25 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @gnutls_certificate_free_credentials(i32 %26)
  %28 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %29 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %23, %16
  %31 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %32 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %31, i32 0, i32 2
  %33 = call i32 @gnutls_certificate_allocate_credentials(i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @gnutls_strerror(i32 %38)
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 -1, i32* %3, align 4
  br label %181

41:                                               ; preds = %30
  %42 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %43 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %111

46:                                               ; preds = %41
  %47 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %48 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %51 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GNUTLS_X509_FMT_DER, align 4
  %54 = call i32 @gnutls_certificate_set_x509_trust_file(i32 %49, i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %46
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %60 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @gnutls_strerror(i32 %62)
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %63)
  %65 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %66 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %69 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @GNUTLS_X509_FMT_PEM, align 4
  %72 = call i32 @gnutls_certificate_set_x509_trust_file(i32 %67, i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %57
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %78 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @gnutls_strerror(i32 %80)
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %81)
  br label %176

83:                                               ; preds = %57
  br label %84

84:                                               ; preds = %83, %46
  %85 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %86 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TLS_CONN_ALLOW_SIGN_RSA_MD5, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %93 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5, align 4
  %96 = call i32 @gnutls_certificate_set_verify_flags(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %84
  %98 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %99 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @TLS_CONN_DISABLE_TIME_CHECKS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %106 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @GNUTLS_VERIFY_DISABLE_TIME_CHECKS, align 4
  %109 = call i32 @gnutls_certificate_set_verify_flags(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %97
  br label %111

111:                                              ; preds = %110, %41
  %112 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %113 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %160

116:                                              ; preds = %111
  %117 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %118 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %160

121:                                              ; preds = %116
  %122 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %123 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %126 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %129 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @GNUTLS_X509_FMT_DER, align 4
  %132 = call i32 @gnutls_certificate_set_x509_key_file(i32 %124, i32 %127, i32 %130, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %121
  %136 = load i32, i32* @MSG_DEBUG, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @gnutls_strerror(i32 %137)
  %139 = call i32 (i32, i8*, ...) @wpa_printf(i32 %136, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %141 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %144 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %147 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @GNUTLS_X509_FMT_PEM, align 4
  %150 = call i32 @gnutls_certificate_set_x509_key_file(i32 %142, i32 %145, i32 %148, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %135
  %154 = load i32, i32* @MSG_DEBUG, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @gnutls_strerror(i32 %155)
  %157 = call i32 (i32, i8*, ...) @wpa_printf(i32 %154, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  br label %176

158:                                              ; preds = %135
  br label %159

159:                                              ; preds = %158, %121
  br label %173

160:                                              ; preds = %116, %111
  %161 = load %struct.tls_connection_params*, %struct.tls_connection_params** %5, align 8
  %162 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  store i32 0, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* @MSG_DEBUG, align 4
  %170 = call i32 (i32, i8*, ...) @wpa_printf(i32 %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %176

171:                                              ; preds = %165
  br label %172

172:                                              ; preds = %171, %160
  br label %173

173:                                              ; preds = %172, %159
  %174 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %175 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %174, i32 0, i32 1
  store i32 1, i32* %175, align 4
  store i32 0, i32* %3, align 4
  br label %181

176:                                              ; preds = %168, %153, %75
  %177 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %178 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @gnutls_certificate_free_credentials(i32 %179)
  store i32 -1, i32* %3, align 4
  br label %181

181:                                              ; preds = %176, %173, %36, %15
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @gnutls_certificate_free_credentials(i32) #1

declare dso_local i32 @gnutls_certificate_allocate_credentials(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @gnutls_strerror(i32) #1

declare dso_local i32 @gnutls_certificate_set_x509_trust_file(i32, i32, i32) #1

declare dso_local i32 @gnutls_certificate_set_verify_flags(i32, i32) #1

declare dso_local i32 @gnutls_certificate_set_x509_key_file(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
