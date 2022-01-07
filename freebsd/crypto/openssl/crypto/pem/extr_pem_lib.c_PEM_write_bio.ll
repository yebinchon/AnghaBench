; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pem_lib.c_PEM_write_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pem_lib.c_PEM_write_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-----\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PEM_BUFSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"-----END \00", align 1
@PEM_F_PEM_WRITE_BIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PEM_write_bio(i32* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i8* null, i8** %16, align 8
  %20 = call i32* (...) @EVP_ENCODE_CTX_new()
  store i32* %20, i32** %17, align 8
  %21 = load i32, i32* @ERR_R_BUF_LIB, align 4
  store i32 %21, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load i32*, i32** %17, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  store i32 %25, i32* %18, align 4
  br label %157

26:                                               ; preds = %5
  %27 = load i32*, i32** %17, align 8
  %28 = call i32 @EVP_EncodeInit(i32* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @BIO_write(i32* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %33 = icmp ne i32 %32, 11
  br i1 %33, label %45, label %34

34:                                               ; preds = %26
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @BIO_write(i32* %35, i8* %36, i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @BIO_write(i32* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %44 = icmp ne i32 %43, 6
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %34, %26
  br label %157

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @strlen(i8* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @BIO_write(i32* %52, i8* %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @BIO_write(i32* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %51
  br label %157

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i32, i32* @PEM_BUFSIZE, align 4
  %66 = mul nsw i32 %65, 8
  %67 = call i8* @OPENSSL_malloc(i32 %66)
  store i8* %67, i8** %16, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  store i32 %71, i32* %18, align 4
  br label %157

72:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %112, %72
  %74 = load i64, i64* %10, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %123

76:                                               ; preds = %73
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* @PEM_BUFSIZE, align 4
  %79 = mul nsw i32 %78, 5
  %80 = sext i32 %79 to i64
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @PEM_BUFSIZE, align 4
  %84 = mul nsw i32 %83, 5
  %85 = sext i32 %84 to i64
  br label %88

86:                                               ; preds = %76
  %87 = load i64, i64* %10, align 8
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i64 [ %85, %82 ], [ %87, %86 ]
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %12, align 4
  %91 = load i32*, i32** %17, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @EVP_EncodeUpdate(i32* %91, i8* %92, i32* %15, i8* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %88
  br label %157

101:                                              ; preds = %88
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i32*, i32** %6, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @BIO_write(i32* %105, i8* %106, i32 %107)
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %157

112:                                              ; preds = %104, %101
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %10, align 8
  %119 = sub nsw i64 %118, %117
  store i64 %119, i64* %10, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %14, align 4
  br label %73

123:                                              ; preds = %73
  %124 = load i32*, i32** %17, align 8
  %125 = load i8*, i8** %16, align 8
  %126 = call i32 @EVP_EncodeFinal(i32* %124, i8* %125, i32* %15)
  %127 = load i32, i32* %15, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load i32*, i32** %6, align 8
  %131 = load i8*, i8** %16, align 8
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @BIO_write(i32* %130, i8* %131, i32 %132)
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %157

137:                                              ; preds = %129, %123
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @BIO_write(i32* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %140 = icmp ne i32 %139, 9
  br i1 %140, label %152, label %141

141:                                              ; preds = %137
  %142 = load i32*, i32** %6, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @BIO_write(i32* %142, i8* %143, i32 %144)
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %152, label %148

148:                                              ; preds = %141
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @BIO_write(i32* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %151 = icmp ne i32 %150, 6
  br i1 %151, label %152, label %153

152:                                              ; preds = %148, %141, %137
  br label %157

153:                                              ; preds = %148
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %154, %155
  store i32 %156, i32* %19, align 4
  br label %157

157:                                              ; preds = %153, %152, %136, %111, %100, %70, %62, %45, %24
  %158 = load i32, i32* %19, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i32, i32* @PEM_F_PEM_WRITE_BIO, align 4
  %162 = load i32, i32* %18, align 4
  %163 = call i32 @PEMerr(i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %157
  %165 = load i32*, i32** %17, align 8
  %166 = call i32 @EVP_ENCODE_CTX_free(i32* %165)
  %167 = load i8*, i8** %16, align 8
  %168 = load i32, i32* @PEM_BUFSIZE, align 4
  %169 = mul nsw i32 %168, 8
  %170 = call i32 @OPENSSL_clear_free(i8* %167, i32 %169)
  %171 = load i32, i32* %19, align 4
  ret i32 %171
}

declare dso_local i32* @EVP_ENCODE_CTX_new(...) #1

declare dso_local i32 @EVP_EncodeInit(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @EVP_EncodeUpdate(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_EncodeFinal(i32*, i8*, i32*) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @EVP_ENCODE_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
