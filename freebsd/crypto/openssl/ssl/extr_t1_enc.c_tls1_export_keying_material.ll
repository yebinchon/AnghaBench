; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_enc.c_tls1_export_keying_material.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_enc.c_tls1_export_keying_material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@TLS_MD_CLIENT_FINISH_CONST = common dso_local global i32 0, align 4
@TLS_MD_CLIENT_FINISH_CONST_SIZE = common dso_local global i32 0, align 4
@TLS_MD_SERVER_FINISH_CONST = common dso_local global i32 0, align 4
@TLS_MD_SERVER_FINISH_CONST_SIZE = common dso_local global i32 0, align 4
@TLS_MD_MASTER_SECRET_CONST = common dso_local global i32 0, align 4
@TLS_MD_MASTER_SECRET_CONST_SIZE = common dso_local global i32 0, align 4
@TLS_MD_EXTENDED_MASTER_SECRET_CONST = common dso_local global i32 0, align 4
@TLS_MD_EXTENDED_MASTER_SECRET_CONST_SIZE = common dso_local global i32 0, align 4
@TLS_MD_KEY_EXPANSION_CONST = common dso_local global i32 0, align 4
@TLS_MD_KEY_EXPANSION_CONST_SIZE = common dso_local global i32 0, align 4
@SSL_F_TLS1_EXPORT_KEYING_MATERIAL = common dso_local global i32 0, align 4
@SSL_R_TLS_ILLEGAL_EXPORTER_LABEL = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls1_export_keying_material(%struct.TYPE_8__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i64 0, i64* %18, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %23 = mul nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = add i64 %21, %24
  store i64 %25, i64* %18, align 8
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %8
  %29 = load i64, i64* %15, align 8
  %30 = add i64 2, %29
  %31 = load i64, i64* %18, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %18, align 8
  br label %33

33:                                               ; preds = %28, %8
  %34 = load i64, i64* %18, align 8
  %35 = call i8* @OPENSSL_malloc(i64 %34)
  store i8* %35, i8** %17, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %168

39:                                               ; preds = %33
  store i64 0, i64* %19, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = load i64, i64* %19, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8*, i8** %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @memcpy(i8* %42, i8* %43, i64 %44)
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %19, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %19, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = load i64, i64* %19, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = call i32 @memcpy(i8* %51, i8* %56, i64 %58)
  %60 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %19, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %19, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = load i64, i64* %19, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = call i32 @memcpy(i8* %66, i8* %71, i64 %73)
  %75 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %19, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %19, align 8
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %39
  %82 = load i64, i64* %15, align 8
  %83 = lshr i64 %82, 8
  %84 = and i64 %83, 255
  %85 = trunc i64 %84 to i8
  %86 = load i8*, i8** %17, align 8
  %87 = load i64, i64* %19, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 %85, i8* %88, align 1
  %89 = load i64, i64* %19, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %19, align 8
  %91 = load i64, i64* %15, align 8
  %92 = and i64 %91, 255
  %93 = trunc i64 %92 to i8
  %94 = load i8*, i8** %17, align 8
  %95 = load i64, i64* %19, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8 %93, i8* %96, align 1
  %97 = load i64, i64* %19, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %19, align 8
  %99 = load i64, i64* %15, align 8
  %100 = icmp ugt i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %81
  %102 = load i8*, i8** %14, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %101, %81
  %105 = load i8*, i8** %17, align 8
  %106 = load i64, i64* %19, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8*, i8** %14, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i32 @memcpy(i8* %107, i8* %108, i64 %109)
  br label %111

111:                                              ; preds = %104, %101
  br label %112

112:                                              ; preds = %111, %39
  %113 = load i8*, i8** %17, align 8
  %114 = load i32, i32* @TLS_MD_CLIENT_FINISH_CONST, align 4
  %115 = load i32, i32* @TLS_MD_CLIENT_FINISH_CONST_SIZE, align 4
  %116 = call i64 @memcmp(i8* %113, i32 %114, i32 %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %164

119:                                              ; preds = %112
  %120 = load i8*, i8** %17, align 8
  %121 = load i32, i32* @TLS_MD_SERVER_FINISH_CONST, align 4
  %122 = load i32, i32* @TLS_MD_SERVER_FINISH_CONST_SIZE, align 4
  %123 = call i64 @memcmp(i8* %120, i32 %121, i32 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %164

126:                                              ; preds = %119
  %127 = load i8*, i8** %17, align 8
  %128 = load i32, i32* @TLS_MD_MASTER_SECRET_CONST, align 4
  %129 = load i32, i32* @TLS_MD_MASTER_SECRET_CONST_SIZE, align 4
  %130 = call i64 @memcmp(i8* %127, i32 %128, i32 %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %164

133:                                              ; preds = %126
  %134 = load i8*, i8** %17, align 8
  %135 = load i32, i32* @TLS_MD_EXTENDED_MASTER_SECRET_CONST, align 4
  %136 = load i32, i32* @TLS_MD_EXTENDED_MASTER_SECRET_CONST_SIZE, align 4
  %137 = call i64 @memcmp(i8* %134, i32 %135, i32 %136)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %164

140:                                              ; preds = %133
  %141 = load i8*, i8** %17, align 8
  %142 = load i32, i32* @TLS_MD_KEY_EXPANSION_CONST, align 4
  %143 = load i32, i32* @TLS_MD_KEY_EXPANSION_CONST_SIZE, align 4
  %144 = call i64 @memcmp(i8* %141, i32 %142, i32 %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %164

147:                                              ; preds = %140
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %149 = load i8*, i8** %17, align 8
  %150 = load i64, i64* %18, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %10, align 8
  %162 = load i64, i64* %11, align 8
  %163 = call i32 @tls1_PRF(%struct.TYPE_8__* %148, i8* %149, i64 %150, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32 %155, i32 %160, i8* %161, i64 %162, i32 0)
  store i32 %163, i32* %20, align 4
  br label %172

164:                                              ; preds = %146, %139, %132, %125, %118
  %165 = load i32, i32* @SSL_F_TLS1_EXPORT_KEYING_MATERIAL, align 4
  %166 = load i32, i32* @SSL_R_TLS_ILLEGAL_EXPORTER_LABEL, align 4
  %167 = call i32 @SSLerr(i32 %165, i32 %166)
  store i32 0, i32* %20, align 4
  br label %172

168:                                              ; preds = %38
  %169 = load i32, i32* @SSL_F_TLS1_EXPORT_KEYING_MATERIAL, align 4
  %170 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %171 = call i32 @SSLerr(i32 %169, i32 %170)
  store i32 0, i32* %20, align 4
  br label %172

172:                                              ; preds = %168, %164, %147
  %173 = load i8*, i8** %17, align 8
  %174 = load i64, i64* %18, align 8
  %175 = call i32 @OPENSSL_clear_free(i8* %173, i64 %174)
  %176 = load i32, i32* %20, align 4
  ret i32 %176
}

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @tls1_PRF(%struct.TYPE_8__*, i8*, i64, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
