; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_status_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_status_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@TLSEXT_STATUSTYPE_ocsp = common dso_local global i64 0, align 8
@TLSEXT_TYPE_status_request = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_status_request(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %21, i32* %6, align 4
  br label %176

22:                                               ; preds = %5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TLSEXT_STATUSTYPE_ocsp, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %30, i32* %6, align 4
  br label %176

31:                                               ; preds = %22
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @TLSEXT_TYPE_status_request, align 4
  %34 = call i32 @WPACKET_put_bytes_u16(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @WPACKET_start_sub_packet_u16(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* @TLSEXT_STATUSTYPE_ocsp, align 8
  %43 = call i32 @WPACKET_put_bytes_u8(i32* %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @WPACKET_start_sub_packet_u16(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45, %40, %36, %31
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %52 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST, align 4
  %53 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %54 = call i32 @SSLfatal(%struct.TYPE_8__* %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %55, i32* %6, align 4
  br label %176

56:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %96, %56
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sk_OCSP_RESPID_num(i32 %63)
  %65 = icmp slt i32 %58, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %57
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32* @sk_OCSP_RESPID_value(i32 %71, i32 %72)
  store i32* %73, i32** %14, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @i2d_OCSP_RESPID(i32* %74, i8** null)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %66
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @WPACKET_sub_allocate_bytes_u16(i32* %79, i32 %80, i8** %13)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @i2d_OCSP_RESPID(i32* %84, i8** %13)
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %83, %78, %66
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %91 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST, align 4
  %92 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %93 = call i32 @SSLfatal(%struct.TYPE_8__* %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %94, i32* %6, align 4
  br label %176

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %57

99:                                               ; preds = %57
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @WPACKET_close(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @WPACKET_start_sub_packet_u16(i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103, %99
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %110 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST, align 4
  %111 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %112 = call i32 @SSLfatal(%struct.TYPE_8__* %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %113, i32* %6, align 4
  br label %176

114:                                              ; preds = %103
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %159

121:                                              ; preds = %114
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @i2d_X509_EXTENSIONS(i64 %126, i8** null)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %121
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %132 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %133 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST, align 4
  %134 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %135 = call i32 @SSLfatal(%struct.TYPE_8__* %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %136, i32* %6, align 4
  br label %176

137:                                              ; preds = %121
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @WPACKET_allocate_bytes(i32* %138, i32 %139, i8** %16)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @i2d_X509_EXTENSIONS(i64 %147, i8** %16)
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %142, %137
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %153 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %154 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST, align 4
  %155 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %156 = call i32 @SSLfatal(%struct.TYPE_8__* %152, i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %157, i32* %6, align 4
  br label %176

158:                                              ; preds = %142
  br label %159

159:                                              ; preds = %158, %114
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 @WPACKET_close(i32* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i32*, i32** %8, align 8
  %165 = call i32 @WPACKET_close(i32* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %163, %159
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %169 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %170 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST, align 4
  %171 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %172 = call i32 @SSLfatal(%struct.TYPE_8__* %168, i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %173, i32* %6, align 4
  br label %176

174:                                              ; preds = %163
  %175 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %174, %167, %151, %130, %107, %88, %49, %29, %20
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i64) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @sk_OCSP_RESPID_num(i32) #1

declare dso_local i32* @sk_OCSP_RESPID_value(i32, i32) #1

declare dso_local i32 @i2d_OCSP_RESPID(i32*, i8**) #1

declare dso_local i32 @WPACKET_sub_allocate_bytes_u16(i32*, i32, i8**) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @i2d_X509_EXTENSIONS(i64, i8**) #1

declare dso_local i32 @WPACKET_allocate_bytes(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
