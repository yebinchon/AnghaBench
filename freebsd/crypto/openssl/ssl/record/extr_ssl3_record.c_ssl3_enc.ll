; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record.c_ssl3_enc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record.c_ssl3_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_7__ = type { i8*, i8*, i64 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_ENC = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_enc(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %15, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %10, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %186

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %11, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32* null, i32** %17, align 8
  br label %39

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32* @EVP_CIPHER_CTX_cipher(i32* %37)
  store i32* %38, i32** %17, align 8
  br label %39

39:                                               ; preds = %34, %33
  br label %55

40:                                               ; preds = %22
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %11, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32* null, i32** %17, align 8
  br label %54

49:                                               ; preds = %40
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32* @EVP_CIPHER_CTX_cipher(i32* %52)
  store i32* %53, i32** %17, align 8
  br label %54

54:                                               ; preds = %49, %48
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %11, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32*, i32** %17, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %63, %60, %55
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @memmove(i8* %69, i8* %72, i64 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  br label %185

82:                                               ; preds = %63
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %12, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i64 @EVP_CIPHER_CTX_block_size(i32* %86)
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = icmp ne i64 %88, 1
  br i1 %89, label %90, label %125

90:                                               ; preds = %82
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %90
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %14, align 8
  %97 = urem i64 %95, %96
  %98 = sub i64 %94, %97
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %12, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i64, i64* %13, align 8
  %110 = call i32 @memset(i8* %108, i32 0, i64 %109)
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load i64, i64* %13, align 8
  %117 = sub i64 %116, 1
  %118 = trunc i64 %117 to i8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i64, i64* %12, align 8
  %123 = sub i64 %122, 1
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  store i8 %118, i8* %124, align 1
  br label %125

125:                                              ; preds = %93, %90, %82
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %125
  %129 = load i64, i64* %12, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %128
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* %14, align 8
  %134 = urem i64 %132, %133
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131, %128
  store i32 0, i32* %5, align 4
  br label %186

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %125
  %139 = load i32*, i32** %11, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @EVP_Cipher(i32* %139, i8* %142, i8* %145, i32 %147)
  %149 = icmp slt i32 %148, 1
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  store i32 -1, i32* %5, align 4
  br label %186

151:                                              ; preds = %138
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32* @EVP_MD_CTX_md(i32 %154)
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %173

157:                                              ; preds = %151
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @EVP_MD_CTX_size(i32 %160)
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %166 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %167 = load i32, i32* @SSL_F_SSL3_ENC, align 4
  %168 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %169 = call i32 @SSLfatal(%struct.TYPE_8__* %165, i32 %166, i32 %167, i32 %168)
  store i32 -1, i32* %5, align 4
  br label %186

170:                                              ; preds = %157
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %15, align 8
  br label %173

173:                                              ; preds = %170, %151
  %174 = load i64, i64* %14, align 8
  %175 = icmp ne i64 %174, 1
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %181 = load i64, i64* %14, align 8
  %182 = load i64, i64* %15, align 8
  %183 = call i32 @ssl3_cbc_remove_padding(%struct.TYPE_7__* %180, i64 %181, i64 %182)
  store i32 %183, i32* %5, align 4
  br label %186

184:                                              ; preds = %176, %173
  br label %185

185:                                              ; preds = %184, %66
  store i32 1, i32* %5, align 4
  br label %186

186:                                              ; preds = %185, %179, %164, %150, %136, %21
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i32* @EVP_CIPHER_CTX_cipher(i32*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @EVP_CIPHER_CTX_block_size(i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @EVP_Cipher(i32*, i8*, i8*, i32) #1

declare dso_local i32* @EVP_MD_CTX_md(i32) #1

declare dso_local i32 @EVP_MD_CTX_size(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @ssl3_cbc_remove_padding(%struct.TYPE_7__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
