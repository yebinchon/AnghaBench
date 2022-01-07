; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs12/extr_p12_mutl.c_PKCS12_setup_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs12/extr_p12_mutl.c_PKCS12_setup_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32* }

@PKCS12_ERROR = common dso_local global i32 0, align 4
@PKCS12_F_PKCS12_SETUP_MAC = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@PKCS12_SALT_LEN = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS12_setup_mac(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = call i32 @PKCS12_MAC_DATA_free(%struct.TYPE_8__* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %18, align 8
  %19 = call %struct.TYPE_8__* (...) @PKCS12_MAC_DATA_new()
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %21, align 8
  %22 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @PKCS12_ERROR, align 4
  store i32 %24, i32* %6, align 4
  br label %125

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = call i32* (...) @ASN1_INTEGER_new()
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i32* %29, i32** %33, align 8
  %34 = icmp eq i32* %29, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @PKCS12_F_PKCS12_SETUP_MAC, align 4
  %37 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %38 = call i32 @PKCS12err(i32 %36, i32 %37)
  store i32 0, i32* %6, align 4
  br label %125

39:                                               ; preds = %28
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @ASN1_INTEGER_set(i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @PKCS12_F_PKCS12_SETUP_MAC, align 4
  %50 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %51 = call i32 @PKCS12err(i32 %49, i32 %50)
  store i32 0, i32* %6, align 4
  br label %125

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @PKCS12_SALT_LEN, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* %10, align 4
  %60 = call i32* @OPENSSL_malloc(i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32* %60, i32** %66, align 8
  %67 = icmp eq i32* %60, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32, i32* @PKCS12_F_PKCS12_SETUP_MAC, align 4
  %70 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %71 = call i32 @PKCS12err(i32 %69, i32 %70)
  store i32 0, i32* %6, align 4
  br label %125

72:                                               ; preds = %58
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %73, i32* %79, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %95, label %82

82:                                               ; preds = %72
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @RAND_bytes(i32* %89, i32 %90)
  %92 = icmp sle i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %125

94:                                               ; preds = %82
  br label %106

95:                                               ; preds = %72
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @memcpy(i32* %102, i8* %103, i32 %104)
  br label %106

106:                                              ; preds = %95, %94
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @X509_SIG_getm(i32 %111, i32** %12, i32* null)
  %113 = load i32*, i32** %12, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @EVP_MD_type(i32* %114)
  %116 = call i32 @OBJ_nid2obj(i32 %115)
  %117 = load i32, i32* @V_ASN1_NULL, align 4
  %118 = call i32 @X509_ALGOR_set0(i32* %113, i32 %116, i32 %117, i32* null)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %106
  %121 = load i32, i32* @PKCS12_F_PKCS12_SETUP_MAC, align 4
  %122 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %123 = call i32 @PKCS12err(i32 %121, i32 %122)
  store i32 0, i32* %6, align 4
  br label %125

124:                                              ; preds = %106
  store i32 1, i32* %6, align 4
  br label %125

125:                                              ; preds = %124, %120, %93, %68, %48, %35, %23
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @PKCS12_MAC_DATA_free(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @PKCS12_MAC_DATA_new(...) #1

declare dso_local i32* @ASN1_INTEGER_new(...) #1

declare dso_local i32 @PKCS12err(i32, i32) #1

declare dso_local i32 @ASN1_INTEGER_set(i32*, i32) #1

declare dso_local i32* @OPENSSL_malloc(i32) #1

declare dso_local i64 @RAND_bytes(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @X509_SIG_getm(i32, i32**, i32*) #1

declare dso_local i32 @X509_ALGOR_set0(i32*, i32, i32, i32*) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32 @EVP_MD_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
