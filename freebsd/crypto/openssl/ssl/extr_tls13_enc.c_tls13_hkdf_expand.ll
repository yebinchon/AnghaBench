; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls13_enc.c_tls13_hkdf_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_tls13_enc.c_tls13_hkdf_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tls13_hkdf_expand.label_prefix = internal constant [7 x i8] c"tls13 \00", align 1
@EVP_PKEY_HKDF = common dso_local global i32 0, align 4
@TLS13_MAX_LABEL_LEN = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS13_HKDF_EXPAND = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_TLS_ILLEGAL_EXPORTER_LABEL = common dso_local global i32 0, align 4
@EVP_PKEY_HKDEF_MODE_EXPAND_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls13_hkdf_expand(i32* %0, i32* %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i64 %4, i64* %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  %30 = load i32, i32* @EVP_PKEY_HKDF, align 4
  %31 = call i32* @EVP_PKEY_CTX_new_id(i32 %30, i32* null)
  store i32* %31, i32** %22, align 8
  %32 = load i32, i32* @TLS13_MAX_LABEL_LEN, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 14, %33
  %35 = add i64 %34, 1
  %36 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %26, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %27, align 8
  %41 = load i32*, i32** %22, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  store i32 1, i32* %29, align 4
  br label %178

44:                                               ; preds = %10
  %45 = load i64, i64* %16, align 8
  %46 = load i32, i32* @TLS13_MAX_LABEL_LEN, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ugt i64 %45, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load i32, i32* %21, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %55 = load i32, i32* @SSL_F_TLS13_HKDF_EXPAND, align 4
  %56 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %57 = call i32 @SSLfatal(i32* %53, i32 %54, i32 %55, i32 %56)
  br label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @SSL_F_TLS13_HKDF_EXPAND, align 4
  %60 = load i32, i32* @SSL_R_TLS_ILLEGAL_EXPORTER_LABEL, align 4
  %61 = call i32 @SSLerr(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %52
  %63 = load i32*, i32** %22, align 8
  %64 = call i32 @EVP_PKEY_CTX_free(i32* %63)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %29, align 4
  br label %178

65:                                               ; preds = %44
  %66 = load i32*, i32** %13, align 8
  %67 = call i64 @EVP_MD_size(i32* %66)
  store i64 %67, i64* %25, align 8
  %68 = trunc i64 %38 to i32
  %69 = call i32 @WPACKET_init_static_len(i32* %28, i8* %40, i32 %68, i32 0)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %106

71:                                               ; preds = %65
  %72 = load i64, i64* %20, align 8
  %73 = call i32 @WPACKET_put_bytes_u16(i32* %28, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %71
  %76 = call i32 @WPACKET_start_sub_packet_u8(i32* %28)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %75
  %79 = call i32 @WPACKET_memcpy(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @tls13_hkdf_expand.label_prefix, i64 0, i64 0), i64 6)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load i8*, i8** %15, align 8
  %83 = load i64, i64* %16, align 8
  %84 = call i32 @WPACKET_memcpy(i32* %28, i8* %82, i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %81
  %87 = call i32 @WPACKET_close(i32* %28)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load i8*, i8** %17, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %96

94:                                               ; preds = %89
  %95 = load i64, i64* %18, align 8
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi i64 [ 0, %93 ], [ %95, %94 ]
  %98 = call i32 @WPACKET_sub_memcpy_u8(i32* %28, i8* %90, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = call i32 @WPACKET_get_total_written(i32* %28, i64* %24)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = call i32 @WPACKET_finish(i32* %28)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %103, %100, %96, %86, %81, %78, %75, %71, %65
  %107 = load i32*, i32** %22, align 8
  %108 = call i32 @EVP_PKEY_CTX_free(i32* %107)
  %109 = call i32 @WPACKET_cleanup(i32* %28)
  %110 = load i32, i32* %21, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %115 = load i32, i32* @SSL_F_TLS13_HKDF_EXPAND, align 4
  %116 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %117 = call i32 @SSLfatal(i32* %113, i32 %114, i32 %115, i32 %116)
  br label %122

118:                                              ; preds = %106
  %119 = load i32, i32* @SSL_F_TLS13_HKDF_EXPAND, align 4
  %120 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %121 = call i32 @SSLerr(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %112
  store i32 0, i32* %11, align 4
  store i32 1, i32* %29, align 4
  br label %178

123:                                              ; preds = %103
  %124 = load i32*, i32** %22, align 8
  %125 = call i64 @EVP_PKEY_derive_init(i32* %124)
  %126 = icmp sle i64 %125, 0
  br i1 %126, label %153, label %127

127:                                              ; preds = %123
  %128 = load i32*, i32** %22, align 8
  %129 = load i32, i32* @EVP_PKEY_HKDEF_MODE_EXPAND_ONLY, align 4
  %130 = call i64 @EVP_PKEY_CTX_hkdf_mode(i32* %128, i32 %129)
  %131 = icmp sle i64 %130, 0
  br i1 %131, label %153, label %132

132:                                              ; preds = %127
  %133 = load i32*, i32** %22, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = call i64 @EVP_PKEY_CTX_set_hkdf_md(i32* %133, i32* %134)
  %136 = icmp sle i64 %135, 0
  br i1 %136, label %153, label %137

137:                                              ; preds = %132
  %138 = load i32*, i32** %22, align 8
  %139 = load i8*, i8** %14, align 8
  %140 = load i64, i64* %25, align 8
  %141 = call i64 @EVP_PKEY_CTX_set1_hkdf_key(i32* %138, i8* %139, i64 %140)
  %142 = icmp sle i64 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %137
  %144 = load i32*, i32** %22, align 8
  %145 = load i64, i64* %24, align 8
  %146 = call i64 @EVP_PKEY_CTX_add1_hkdf_info(i32* %144, i8* %40, i64 %145)
  %147 = icmp sle i64 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load i32*, i32** %22, align 8
  %150 = load i8*, i8** %19, align 8
  %151 = call i64 @EVP_PKEY_derive(i32* %149, i8* %150, i64* %20)
  %152 = icmp sle i64 %151, 0
  br label %153

153:                                              ; preds = %148, %143, %137, %132, %127, %123
  %154 = phi i1 [ true, %143 ], [ true, %137 ], [ true, %132 ], [ true, %127 ], [ true, %123 ], [ %152, %148 ]
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %23, align 4
  %156 = load i32*, i32** %22, align 8
  %157 = call i32 @EVP_PKEY_CTX_free(i32* %156)
  %158 = load i32, i32* %23, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %153
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32*, i32** %12, align 8
  %165 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %166 = load i32, i32* @SSL_F_TLS13_HKDF_EXPAND, align 4
  %167 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %168 = call i32 @SSLfatal(i32* %164, i32 %165, i32 %166, i32 %167)
  br label %173

169:                                              ; preds = %160
  %170 = load i32, i32* @SSL_F_TLS13_HKDF_EXPAND, align 4
  %171 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %172 = call i32 @SSLerr(i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %163
  br label %174

174:                                              ; preds = %173, %153
  %175 = load i32, i32* %23, align 4
  %176 = icmp eq i32 %175, 0
  %177 = zext i1 %176 to i32
  store i32 %177, i32* %11, align 4
  store i32 1, i32* %29, align 4
  br label %178

178:                                              ; preds = %174, %122, %62, %43
  %179 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %11, align 4
  ret i32 %180
}

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SSLfatal(i32*, i32, i32, i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i64 @EVP_MD_size(i32*) #1

declare dso_local i32 @WPACKET_init_static_len(i32*, i8*, i32, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i64) #1

declare dso_local i32 @WPACKET_start_sub_packet_u8(i32*) #1

declare dso_local i32 @WPACKET_memcpy(i32*, i8*, i64) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i8*, i64) #1

declare dso_local i32 @WPACKET_get_total_written(i32*, i64*) #1

declare dso_local i32 @WPACKET_finish(i32*) #1

declare dso_local i32 @WPACKET_cleanup(i32*) #1

declare dso_local i64 @EVP_PKEY_derive_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_hkdf_mode(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_set_hkdf_md(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set1_hkdf_key(i32*, i8*, i64) #1

declare dso_local i64 @EVP_PKEY_CTX_add1_hkdf_info(i32*, i8*, i64) #1

declare dso_local i64 @EVP_PKEY_derive(i32*, i8*, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
