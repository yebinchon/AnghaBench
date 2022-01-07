; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-pk.c__krb5_pk_octetstring2key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-pk.c__krb5_pk_octetstring2key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64 }
%struct._krb5_encryption_type = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@KRB5_PROG_ETYPE_NOSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"encryption type %d not supported\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_krb5_pk_octetstring2key(i32 %0, i32 %1, i8* %2, i64 %3, %struct.TYPE_6__* %4, %struct.TYPE_6__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct._krb5_encryption_type*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %14, align 8
  store i32* %6, i32** %15, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call %struct._krb5_encryption_type* @_krb5_find_enctype(i32 %26)
  store %struct._krb5_encryption_type* %27, %struct._krb5_encryption_type** %16, align 8
  %28 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %22, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %23, align 8
  %32 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %33 = icmp eq %struct._krb5_encryption_type* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %7
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @KRB5_PROG_ETYPE_NOSUPP, align 4
  %37 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @KRB5_PROG_ETYPE_NOSUPP, align 4
  store i32 %40, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %142

41:                                               ; preds = %7
  %42 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %16, align 8
  %43 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 7
  %48 = sdiv i32 %47, 8
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %18, align 8
  %50 = load i64, i64* %18, align 8
  %51 = call i8* @malloc(i64 %50)
  store i8* %51, i8** %20, align 8
  %52 = load i8*, i8** %20, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %41
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %142

60:                                               ; preds = %41
  %61 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %61, i32** %24, align 8
  %62 = load i32*, i32** %24, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i8*, i8** %20, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 (i32, i32, i32, ...) @krb5_set_error_message(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @ENOMEM, align 4
  store i32 %71, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %142

72:                                               ; preds = %60
  store i8 0, i8* %21, align 1
  store i64 0, i64* %19, align 8
  br label %73

73:                                               ; preds = %122, %72
  %74 = load i32*, i32** %24, align 8
  %75 = call i32 (...) @EVP_sha1()
  %76 = call i32 @EVP_DigestInit_ex(i32* %74, i32 %75, i32* null)
  %77 = load i32*, i32** %24, align 8
  %78 = call i32 @EVP_DigestUpdate(i32* %77, i8* %21, i64 1)
  %79 = load i32*, i32** %24, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @EVP_DigestUpdate(i32* %79, i8* %80, i64 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %84 = icmp ne %struct.TYPE_6__* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %73
  %86 = load i32*, i32** %24, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @EVP_DigestUpdate(i32* %86, i8* %89, i64 %92)
  br label %94

94:                                               ; preds = %85, %73
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %96 = icmp ne %struct.TYPE_6__* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32*, i32** %24, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @EVP_DigestUpdate(i32* %98, i8* %101, i64 %104)
  br label %106

106:                                              ; preds = %97, %94
  %107 = load i32*, i32** %24, align 8
  %108 = call i32 @EVP_DigestFinal_ex(i32* %107, i8* %31, i32* null)
  %109 = load i8*, i8** %20, align 8
  %110 = load i64, i64* %19, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* %19, align 8
  %114 = sub i64 %112, %113
  %115 = trunc i64 %29 to i32
  %116 = call i32 @min(i64 %114, i32 %115)
  %117 = call i32 @memcpy(i8* %111, i8* %31, i32 %116)
  %118 = load i64, i64* %19, align 8
  %119 = add i64 %118, %29
  store i64 %119, i64* %19, align 8
  %120 = load i8, i8* %21, align 1
  %121 = add i8 %120, 1
  store i8 %121, i8* %21, align 1
  br label %122

122:                                              ; preds = %106
  %123 = load i64, i64* %19, align 8
  %124 = load i64, i64* %18, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %73, label %126

126:                                              ; preds = %122
  %127 = trunc i64 %29 to i32
  %128 = call i32 @memset(i8* %31, i32 0, i32 %127)
  %129 = load i32*, i32** %24, align 8
  %130 = call i32 @EVP_MD_CTX_destroy(i32* %129)
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i8*, i8** %20, align 8
  %134 = load i64, i64* %18, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = call i32 @krb5_random_to_key(i32 %131, i32 %132, i8* %133, i64 %134, i32* %135)
  store i32 %136, i32* %17, align 4
  %137 = load i8*, i8** %20, align 8
  %138 = call i32 @memset(i8* %137, i32 0, i32 8)
  %139 = load i8*, i8** %20, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load i32, i32* %17, align 4
  store i32 %141, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %142

142:                                              ; preds = %126, %64, %54, %34
  %143 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local %struct._krb5_encryption_type* @_krb5_find_enctype(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @krb5_set_error_message(i32, i32, i32, ...) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_sha1(...) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

declare dso_local i32 @krb5_random_to_key(i32, i32, i8*, i64, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
