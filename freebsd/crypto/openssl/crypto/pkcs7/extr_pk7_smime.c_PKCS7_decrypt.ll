; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_smime.c_PKCS7_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_smime.c_PKCS7_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKCS7_F_PKCS7_DECRYPT = common dso_local global i32 0, align 4
@PKCS7_R_INVALID_NULL_POINTER = common dso_local global i32 0, align 4
@PKCS7_R_WRONG_CONTENT_TYPE = common dso_local global i32 0, align 4
@PKCS7_R_PRIVATE_KEY_DOES_NOT_MATCH_CERTIFICATE = common dso_local global i32 0, align 4
@PKCS7_R_DECRYPT_ERROR = common dso_local global i32 0, align 4
@PKCS7_TEXT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@BIO_TYPE_CIPHER = common dso_local global i64 0, align 8
@BUFFERSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS7_decrypt(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %15, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @PKCS7_F_PKCS7_DECRYPT, align 4
  %22 = load i32, i32* @PKCS7_R_INVALID_NULL_POINTER, align 4
  %23 = call i32 @PKCS7err(i32 %21, i32 %22)
  store i32 0, i32* %6, align 4
  br label %147

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @PKCS7_type_is_enveloped(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @PKCS7_F_PKCS7_DECRYPT, align 4
  %30 = load i32, i32* @PKCS7_R_WRONG_CONTENT_TYPE, align 4
  %31 = call i32 @PKCS7err(i32 %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %147

32:                                               ; preds = %24
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @X509_check_private_key(i32* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @PKCS7_F_PKCS7_DECRYPT, align 4
  %42 = load i32, i32* @PKCS7_R_PRIVATE_KEY_DOES_NOT_MATCH_CERTIFICATE, align 4
  %43 = call i32 @PKCS7err(i32 %41, i32 %42)
  store i32 0, i32* %6, align 4
  br label %147

44:                                               ; preds = %35, %32
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32* @PKCS7_dataDecode(i32* %45, i32* %46, i32* null, i32* %47)
  store i32* %48, i32** %12, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @PKCS7_F_PKCS7_DECRYPT, align 4
  %52 = load i32, i32* @PKCS7_R_DECRYPT_ERROR, align 4
  %53 = call i32 @PKCS7err(i32 %51, i32 %52)
  store i32 0, i32* %6, align 4
  br label %147

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @PKCS7_TEXT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %103

59:                                               ; preds = %54
  %60 = call i32 (...) @BIO_f_buffer()
  %61 = call i32* @BIO_new(i32 %60)
  store i32* %61, i32** %16, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @PKCS7_F_PKCS7_DECRYPT, align 4
  %65 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %66 = call i32 @PKCS7err(i32 %64, i32 %65)
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @BIO_free_all(i32* %67)
  store i32 0, i32* %6, align 4
  br label %147

69:                                               ; preds = %59
  %70 = load i32*, i32** %16, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32* @BIO_push(i32* %70, i32* %71)
  store i32* %72, i32** %17, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32, i32* @PKCS7_F_PKCS7_DECRYPT, align 4
  %76 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %77 = call i32 @PKCS7err(i32 %75, i32 %76)
  %78 = load i32*, i32** %16, align 8
  %79 = call i32 @BIO_free_all(i32* %78)
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @BIO_free_all(i32* %80)
  store i32 0, i32* %6, align 4
  br label %147

82:                                               ; preds = %69
  %83 = load i32*, i32** %17, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @SMIME_text(i32* %83, i32* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load i32*, i32** %12, align 8
  %90 = call i64 @BIO_method_type(i32* %89)
  %91 = load i64, i64* @BIO_TYPE_CIPHER, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @BIO_get_cipher_status(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %97, %93
  br label %99

99:                                               ; preds = %98, %88, %82
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @BIO_free_all(i32* %100)
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %6, align 4
  br label %147

103:                                              ; preds = %54
  %104 = load i32, i32* @BUFFERSIZE, align 4
  %105 = call i8* @OPENSSL_malloc(i32 %104)
  store i8* %105, i8** %15, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* @PKCS7_F_PKCS7_DECRYPT, align 4
  %109 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %110 = call i32 @PKCS7err(i32 %108, i32 %109)
  br label %141

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %139, %111
  %113 = load i32*, i32** %12, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = load i32, i32* @BUFFERSIZE, align 4
  %116 = call i32 @BIO_read(i32* %113, i8* %114, i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp sle i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  store i32 1, i32* %13, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = call i64 @BIO_method_type(i32* %120)
  %122 = load i64, i64* @BIO_TYPE_CIPHER, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @BIO_get_cipher_status(i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %128, %124
  br label %130

130:                                              ; preds = %129, %119
  br label %140

131:                                              ; preds = %112
  %132 = load i32*, i32** %10, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @BIO_write(i32* %132, i8* %133, i32 %134)
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %140

139:                                              ; preds = %131
  br label %112

140:                                              ; preds = %138, %130
  br label %141

141:                                              ; preds = %140, %107
  %142 = load i8*, i8** %15, align 8
  %143 = call i32 @OPENSSL_free(i8* %142)
  %144 = load i32*, i32** %12, align 8
  %145 = call i32 @BIO_free_all(i32* %144)
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %141, %99, %74, %63, %50, %40, %28, %20
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @PKCS7err(i32, i32) #1

declare dso_local i32 @PKCS7_type_is_enveloped(i32*) #1

declare dso_local i32 @X509_check_private_key(i32*, i32*) #1

declare dso_local i32* @PKCS7_dataDecode(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_buffer(...) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32* @BIO_push(i32*, i32*) #1

declare dso_local i32 @SMIME_text(i32*, i32*) #1

declare dso_local i64 @BIO_method_type(i32*) #1

declare dso_local i32 @BIO_get_cipher_status(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
