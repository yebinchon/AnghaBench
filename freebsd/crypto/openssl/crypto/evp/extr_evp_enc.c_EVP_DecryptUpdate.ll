; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_enc.c_EVP_DecryptUpdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_enc.c_EVP_DecryptUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8*, i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 (%struct.TYPE_8__*, i8*, i8*, i32)* }

@EVP_F_EVP_DECRYPTUPDATE = common dso_local global i32 0, align 4
@EVP_R_INVALID_OPERATION = common dso_local global i32 0, align 4
@EVP_CIPH_FLAG_LENGTH_BITS = common dso_local global i32 0, align 4
@EVP_CIPH_FLAG_CUSTOM_CIPHER = common dso_local global i32 0, align 4
@EVP_R_PARTIALLY_OVERLAPPING = common dso_local global i32 0, align 4
@EVP_CIPH_NO_PADDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_DecryptUpdate(%struct.TYPE_8__* %0, i8* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32, i32* @EVP_F_EVP_DECRYPTUPDATE, align 4
  %22 = load i32, i32* @EVP_R_INVALID_OPERATION, align 4
  %23 = call i32 @EVPerr(i32 %21, i32 %22)
  store i32 0, i32* %6, align 4
  br label %185

24:                                               ; preds = %5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = load i32, i32* @EVP_CIPH_FLAG_LENGTH_BITS, align 4
  %32 = call i64 @EVP_CIPHER_CTX_test_flags(%struct.TYPE_8__* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, 7
  %37 = sdiv i32 %36, 8
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %34, %24
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EVP_CIPH_FLAG_CUSTOM_CIPHER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %38
  %48 = load i32, i32* %14, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i64 @is_partially_overlapping(i8* %51, i8* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @EVP_F_EVP_DECRYPTUPDATE, align 4
  %58 = load i32, i32* @EVP_R_PARTIALLY_OVERLAPPING, align 4
  %59 = call i32 @EVPerr(i32 %57, i32 %58)
  store i32 0, i32* %6, align 4
  br label %185

60:                                               ; preds = %50, %47
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32 (%struct.TYPE_8__*, i8*, i8*, i32)*, i32 (%struct.TYPE_8__*, i8*, i8*, i32)** %64, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 %65(%struct.TYPE_8__* %66, i8* %67, i8* %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i32*, i32** %9, align 8
  store i32 0, i32* %74, align 4
  store i32 0, i32* %6, align 4
  br label %185

75:                                               ; preds = %60
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75
  store i32 1, i32* %6, align 4
  br label %185

79:                                               ; preds = %38
  %80 = load i32, i32* %11, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32*, i32** %9, align 8
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %6, align 4
  br label %185

87:                                               ; preds = %79
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @EVP_CIPH_NO_PADDING, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @evp_EncryptDecryptUpdate(%struct.TYPE_8__* %95, i8* %96, i32* %97, i8* %98, i32 %99)
  store i32 %100, i32* %6, align 4
  br label %185

101:                                              ; preds = %87
  %102 = load i32, i32* %14, align 4
  %103 = zext i32 %102 to i64
  %104 = icmp ule i64 %103, 8
  %105 = zext i1 %104 to i32
  %106 = call i32 @OPENSSL_assert(i32 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %101
  %112 = load i8*, i8** %8, align 8
  %113 = ptrtoint i8* %112 to i64
  %114 = load i8*, i8** %10, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = icmp eq i64 %113, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load i8*, i8** %8, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i64 @is_partially_overlapping(i8* %118, i8* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117, %111
  %124 = load i32, i32* @EVP_F_EVP_DECRYPTUPDATE, align 4
  %125 = load i32, i32* @EVP_R_PARTIALLY_OVERLAPPING, align 4
  %126 = call i32 @EVPerr(i32 %124, i32 %125)
  store i32 0, i32* %6, align 4
  br label %185

127:                                              ; preds = %117
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @memcpy(i8* %128, i8* %131, i32 %132)
  %134 = load i32, i32* %14, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %8, align 8
  store i32 1, i32* %12, align 4
  br label %139

138:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  br label %139

139:                                              ; preds = %138, %127
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @evp_EncryptDecryptUpdate(%struct.TYPE_8__* %140, i8* %141, i32* %142, i8* %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %139
  store i32 0, i32* %6, align 4
  br label %185

148:                                              ; preds = %139
  %149 = load i32, i32* %14, align 4
  %150 = icmp ugt i32 %149, 1
  br i1 %150, label %151, label %173

151:                                              ; preds = %148
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %173, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %14, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = load i32, i32* %158, align 4
  %160 = sub i32 %159, %157
  store i32 %160, i32* %158, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @memcpy(i8* %165, i8* %170, i32 %171)
  br label %176

173:                                              ; preds = %151, %148
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  store i32 0, i32* %175, align 4
  br label %176

176:                                              ; preds = %173, %156
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load i32, i32* %14, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %181, align 4
  %183 = add i32 %182, %180
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %179, %176
  store i32 1, i32* %6, align 4
  br label %185

185:                                              ; preds = %184, %147, %123, %94, %82, %78, %73, %56, %20
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i64 @EVP_CIPHER_CTX_test_flags(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @is_partially_overlapping(i8*, i8*, i32) #1

declare dso_local i32 @evp_EncryptDecryptUpdate(%struct.TYPE_8__*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
