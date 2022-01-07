; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_d2i_pr.c_d2i_PrivateKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_d2i_pr.c_d2i_PrivateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i64, i32 (%struct.TYPE_11__*, i8**, i64)* }

@ASN1_F_D2I_PRIVATEKEY = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE = common dso_local global i32 0, align 4
@ERR_R_ASN1_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @d2i_PrivateKey(i32 %0, %struct.TYPE_11__** %1, i8** %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %11, align 8
  %16 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %17 = icmp eq %struct.TYPE_11__** %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp eq %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %18, %4
  %23 = call %struct.TYPE_11__* (...) @EVP_PKEY_new()
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %10, align 8
  %24 = icmp eq %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @ASN1_F_D2I_PRIVATEKEY, align 4
  %27 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %28 = call i32 @ASN1err(i32 %26, i32 %27)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %117

29:                                               ; preds = %22
  br label %39

30:                                               ; preds = %18
  %31 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %10, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ENGINE_finish(i32* %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %30, %29
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @EVP_PKEY_set_type(%struct.TYPE_11__* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ASN1_F_D2I_PRIVATEKEY, align 4
  %46 = load i32, i32* @ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE, align 4
  %47 = call i32 @ASN1err(i32 %45, i32 %46)
  br label %105

48:                                               ; preds = %39
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32 (%struct.TYPE_11__*, i8**, i64)*, i32 (%struct.TYPE_11__*, i8**, i64)** %52, align 8
  %54 = icmp ne i32 (%struct.TYPE_11__*, i8**, i64)* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32 (%struct.TYPE_11__*, i8**, i64)*, i32 (%struct.TYPE_11__*, i8**, i64)** %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 %60(%struct.TYPE_11__* %61, i8** %11, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %95, label %65

65:                                               ; preds = %55, %48
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %65
  store i32* null, i32** %13, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32* @d2i_PKCS8_PRIV_KEY_INFO(i32* null, i8** %11, i64 %73)
  store i32* %74, i32** %13, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %105

78:                                               ; preds = %72
  %79 = load i32*, i32** %13, align 8
  %80 = call %struct.TYPE_11__* @EVP_PKCS82PKEY(i32* %79)
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %12, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @PKCS8_PRIV_KEY_INFO_free(i32* %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %84 = icmp eq %struct.TYPE_11__* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %105

86:                                               ; preds = %78
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %88 = call i32 @EVP_PKEY_free(%struct.TYPE_11__* %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %10, align 8
  br label %94

90:                                               ; preds = %65
  %91 = load i32, i32* @ASN1_F_D2I_PRIVATEKEY, align 4
  %92 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %93 = call i32 @ASN1err(i32 %91, i32 %92)
  br label %105

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %55
  %96 = load i8*, i8** %11, align 8
  %97 = load i8**, i8*** %8, align 8
  store i8* %96, i8** %97, align 8
  %98 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %99 = icmp ne %struct.TYPE_11__** %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %102 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %102, align 8
  br label %103

103:                                              ; preds = %100, %95
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %104, %struct.TYPE_11__** %5, align 8
  br label %117

105:                                              ; preds = %90, %85, %77, %44
  %106 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %107 = icmp eq %struct.TYPE_11__** %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %112 = icmp ne %struct.TYPE_11__* %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108, %105
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %115 = call i32 @EVP_PKEY_free(%struct.TYPE_11__* %114)
  br label %116

116:                                              ; preds = %113, %108
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %117

117:                                              ; preds = %116, %103, %25
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %118
}

declare dso_local %struct.TYPE_11__* @EVP_PKEY_new(...) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local i32 @EVP_PKEY_set_type(%struct.TYPE_11__*, i32) #1

declare dso_local i32* @d2i_PKCS8_PRIV_KEY_INFO(i32*, i8**, i64) #1

declare dso_local %struct.TYPE_11__* @EVP_PKCS82PKEY(i32*) #1

declare dso_local i32 @PKCS8_PRIV_KEY_INFO_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
