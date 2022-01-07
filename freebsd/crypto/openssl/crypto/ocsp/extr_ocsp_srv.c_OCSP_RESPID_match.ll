; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_srv.c_OCSP_RESPID_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_srv.c_OCSP_RESPID_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }

@V_OCSP_RESPID_KEY = common dso_local global i64 0, align 8
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@V_OCSP_RESPID_NAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OCSP_RESPID_match(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V_OCSP_RESPID_KEY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %2
  %15 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %51

25:                                               ; preds = %14
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 (...) @EVP_sha1()
  %28 = call i32 @X509_pubkey_digest(i32* %26, i32 %27, i8* %18, i32* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %51

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ASN1_STRING_length(i32* %35)
  %37 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ASN1_STRING_get0_data(i32* %43)
  %45 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %46 = call i64 @memcmp(i32 %44, i8* %18, i32 %45)
  %47 = icmp eq i64 %46, 0
  br label %48

48:                                               ; preds = %39, %31
  %49 = phi i1 [ false, %31 ], [ %47, %39 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %30, %24
  %52 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %52)
  br label %78

53:                                               ; preds = %2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @V_OCSP_RESPID_NAME, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %78

66:                                               ; preds = %59
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @X509_get_subject_name(i32* %71)
  %73 = call i64 @X509_NAME_cmp(i32* %70, i32 %72)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %78

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %66, %65, %51
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @X509_pubkey_digest(i32*, i32, i8*, i32*) #2

declare dso_local i32 @EVP_sha1(...) #2

declare dso_local i32 @ASN1_STRING_length(i32*) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @ASN1_STRING_get0_data(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @X509_NAME_cmp(i32*, i32) #2

declare dso_local i32 @X509_get_subject_name(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
