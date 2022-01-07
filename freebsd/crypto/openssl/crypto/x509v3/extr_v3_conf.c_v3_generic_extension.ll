; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_conf.c_v3_generic_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_conf.c_v3_generic_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }

@X509V3_F_V3_GENERIC_EXTENSION = common dso_local global i32 0, align 4
@X509V3_R_EXTENSION_NAME_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@X509V3_R_EXTENSION_VALUE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"value=\00", align 1
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32, i32*)* @v3_generic_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @v3_generic_extension(i8* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %13, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  store i32* null, i32** %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32* @OBJ_txt2obj(i8* %16, i32 0)
  store i32* %17, i32** %13, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32, i32* @X509V3_F_V3_GENERIC_EXTENSION, align 4
  %21 = load i32, i32* @X509V3_R_EXTENSION_NAME_ERROR, align 4
  %22 = call i32 @X509V3err(i32 %20, i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %66

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @OPENSSL_hexstr2buf(i8* %29, i64* %12)
  store i8* %30, i8** %11, align 8
  br label %39

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i8* @generic_asn1(i8* %35, i32* %36, i64* %12)
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %34, %31
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i8*, i8** %11, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @X509V3_F_V3_GENERIC_EXTENSION, align 4
  %44 = load i32, i32* @X509V3_R_EXTENSION_VALUE_ERROR, align 4
  %45 = call i32 @X509V3err(i32 %43, i32 %44)
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %66

48:                                               ; preds = %39
  %49 = call %struct.TYPE_5__* (...) @ASN1_OCTET_STRING_new()
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %14, align 8
  %50 = icmp eq %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @X509V3_F_V3_GENERIC_EXTENSION, align 4
  %53 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %54 = call i32 @X509V3err(i32 %52, i32 %53)
  br label %66

55:                                               ; preds = %48
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  store i8* null, i8** %11, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %65 = call i32* @X509_EXTENSION_create_by_OBJ(i32* null, i32* %62, i32 %63, %struct.TYPE_5__* %64)
  store i32* %65, i32** %15, align 8
  br label %66

66:                                               ; preds = %55, %51, %42, %19
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @ASN1_OBJECT_free(i32* %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %70 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_5__* %69)
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @OPENSSL_free(i8* %71)
  %73 = load i32*, i32** %15, align 8
  ret i32* %73
}

declare dso_local i32* @OBJ_txt2obj(i8*, i32) #1

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i8*, i64*) #1

declare dso_local i8* @generic_asn1(i8*, i32*, i64*) #1

declare dso_local %struct.TYPE_5__* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32* @X509_EXTENSION_create_by_OBJ(i32*, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(%struct.TYPE_5__*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
