; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_conf.c_do_ext_i2d.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_conf.c_do_ext_i2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i8*, i8**)*, i64 }
%struct.TYPE_8__ = type { i8*, i32 }

@X509V3_F_DO_EXT_I2D = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32, i32, i8*)* @do_ext_i2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_ext_i2d(%struct.TYPE_7__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  store i8* null, i8** %10, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ASN1_ITEM_ptr(i64 %23)
  %25 = call i32 @ASN1_item_i2d(i8* %20, i8** %10, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %69

29:                                               ; preds = %19
  br label %47

30:                                               ; preds = %4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %32, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 %33(i8* %34, i8** null)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i8* @OPENSSL_malloc(i32 %36)
  store i8* %37, i8** %10, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %69

40:                                               ; preds = %30
  %41 = load i8*, i8** %10, align 8
  store i8* %41, i8** %14, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 %44(i8* %45, i8** %14)
  br label %47

47:                                               ; preds = %40, %29
  %48 = call %struct.TYPE_8__* (...) @ASN1_OCTET_STRING_new()
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %12, align 8
  %49 = icmp eq %struct.TYPE_8__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %69

51:                                               ; preds = %47
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  store i8* null, i8** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %61 = call i32* @X509_EXTENSION_create_by_NID(i32* null, i32 %58, i32 %59, %struct.TYPE_8__* %60)
  store i32* %61, i32** %13, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %51
  br label %69

65:                                               ; preds = %51
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %67 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_8__* %66)
  %68 = load i32*, i32** %13, align 8
  store i32* %68, i32** %5, align 8
  br label %77

69:                                               ; preds = %64, %50, %39, %28
  %70 = load i32, i32* @X509V3_F_DO_EXT_I2D, align 4
  %71 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %72 = call i32 @X509V3err(i32 %70, i32 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @OPENSSL_free(i8* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %76 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_8__* %75)
  store i32* null, i32** %5, align 8
  br label %77

77:                                               ; preds = %69, %65
  %78 = load i32*, i32** %5, align 8
  ret i32* %78
}

declare dso_local i32 @ASN1_item_i2d(i8*, i8**, i32) #1

declare dso_local i32 @ASN1_ITEM_ptr(i64) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local %struct.TYPE_8__* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32* @X509_EXTENSION_create_by_NID(i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(%struct.TYPE_8__*) #1

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
