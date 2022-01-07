; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_kdf.c_dh_sharedinfo_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_kdf.c_dh_sharedinfo_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32, i64, i8* }

@dh_sharedinfo_encode.ctr = internal global [4 x i8] c"\F3\17\22S", align 1
@DH_KDF_MAX = common dso_local global i64 0, align 8
@V_ASN1_OCTET_STRING = common dso_local global i8* null, align 8
@V_ASN1_SEQUENCE = common dso_local global i8* null, align 8
@V_ASN1_OBJECT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i32*, i64, i8*, i64)* @dh_sharedinfo_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_sharedinfo_encode(i8** %0, i8** %1, i32* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca %struct.TYPE_10__, align 8
  %19 = alloca %struct.TYPE_10__, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca %struct.TYPE_9__, align 8
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @DH_KDF_MAX, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @DH_KDF_MAX, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %6
  store i32 0, i32* %7, align 4
  br label %96

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @dh_sharedinfo_encode.ctr, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i32 4, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** @V_ASN1_OCTET_STRING, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** @V_ASN1_OCTET_STRING, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %39, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32* %40, i32** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %42, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %30
  %46 = load i8*, i8** @V_ASN1_OCTET_STRING, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load i64, i64* %13, align 8
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %20, align 8
  br label %55

54:                                               ; preds = %30
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %20, align 8
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i8**, i8*** %8, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @CMS_SharedInfo_encode(i8** %56, %struct.TYPE_8__* %17, %struct.TYPE_10__* %57, i64 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %96

63:                                               ; preds = %55
  %64 = load i8**, i8*** %8, align 8
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %16, align 8
  %68 = load i8*, i8** @V_ASN1_SEQUENCE, align 8
  %69 = call i32 @skip_asn1(i8** %14, i64* %16, i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %96

72:                                               ; preds = %63
  %73 = load i8*, i8** @V_ASN1_SEQUENCE, align 8
  %74 = call i32 @skip_asn1(i8** %14, i64* %16, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %96

77:                                               ; preds = %72
  %78 = load i8*, i8** @V_ASN1_OBJECT, align 8
  %79 = call i32 @skip_asn1(i8** %14, i64* %16, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  br label %96

82:                                               ; preds = %77
  %83 = load i8*, i8** @V_ASN1_OCTET_STRING, align 8
  %84 = call i32 @skip_asn1(i8** %14, i64* %16, i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %96

87:                                               ; preds = %82
  %88 = load i8*, i8** %14, align 8
  %89 = call i64 @CRYPTO_memcmp(i8* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @dh_sharedinfo_encode.ctr, i64 0, i64 0), i32 4)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %7, align 4
  br label %96

92:                                               ; preds = %87
  %93 = load i8*, i8** %14, align 8
  %94 = load i8**, i8*** %9, align 8
  store i8* %93, i8** %94, align 8
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %92, %91, %86, %81, %76, %71, %62, %29
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @CMS_SharedInfo_encode(i8**, %struct.TYPE_8__*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @skip_asn1(i8**, i64*, i8*) #1

declare dso_local i64 @CRYPTO_memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
