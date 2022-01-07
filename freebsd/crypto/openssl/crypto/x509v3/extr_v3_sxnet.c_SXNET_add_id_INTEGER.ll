; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_sxnet.c_SXNET_add_id_INTEGER.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_sxnet.c_SXNET_add_id_INTEGER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, i32 }

@X509V3_F_SXNET_ADD_ID_INTEGER = common dso_local global i32 0, align 4
@X509V3_R_INVALID_NULL_ARGUMENT = common dso_local global i32 0, align 4
@X509V3_R_USER_TOO_LONG = common dso_local global i32 0, align 4
@X509V3_R_DUPLICATE_ZONE_ID = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SXNET_add_id_INTEGER(%struct.TYPE_11__** %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  %12 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %13 = icmp ne %struct.TYPE_11__** %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17, %14, %4
  %21 = load i32, i32* @X509V3_F_SXNET_ADD_ID_INTEGER, align 4
  %22 = load i32, i32* @X509V3_R_INVALID_NULL_ARGUMENT, align 4
  %23 = call i32 @X509V3err(i32 %21, i32 %22)
  store i32 0, i32* %5, align 4
  br label %107

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 64
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @X509V3_F_SXNET_ADD_ID_INTEGER, align 4
  %35 = load i32, i32* @X509V3_R_USER_TOO_LONG, align 4
  %36 = call i32 @X509V3err(i32 %34, i32 %35)
  store i32 0, i32* %5, align 4
  br label %107

37:                                               ; preds = %30
  %38 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = icmp eq %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = call %struct.TYPE_11__* (...) @SXNET_new()
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %10, align 8
  %43 = icmp eq %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %98

45:                                               ; preds = %41
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ASN1_INTEGER_set(i32 %48, i32 0)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %98

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %54, align 8
  br label %58

55:                                               ; preds = %37
  %56 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %10, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @SXNET_get_id_INTEGER(%struct.TYPE_11__* %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @X509V3_F_SXNET_ADD_ID_INTEGER, align 4
  %65 = load i32, i32* @X509V3_R_DUPLICATE_ZONE_ID, align 4
  %66 = call i32 @X509V3err(i32 %64, i32 %65)
  store i32 0, i32* %5, align 4
  br label %107

67:                                               ; preds = %58
  %68 = call %struct.TYPE_10__* (...) @SXNETID_new()
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %11, align 8
  %69 = icmp eq %struct.TYPE_10__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %98

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @strlen(i8* %75)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @ASN1_OCTET_STRING_set(i32 %80, i8* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  br label %98

86:                                               ; preds = %77
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %91 = call i32 @sk_SXNETID_push(i32 %89, %struct.TYPE_10__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %98

94:                                               ; preds = %86
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store i32* %95, i32** %97, align 8
  store i32 1, i32* %5, align 4
  br label %107

98:                                               ; preds = %93, %85, %70, %51, %44
  %99 = load i32, i32* @X509V3_F_SXNET_ADD_ID_INTEGER, align 4
  %100 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %101 = call i32 @X509V3err(i32 %99, i32 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %103 = call i32 @SXNETID_free(%struct.TYPE_10__* %102)
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %105 = call i32 @SXNET_free(%struct.TYPE_11__* %104)
  %106 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %106, align 8
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %98, %94, %63, %33, %20
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_11__* @SXNET_new(...) #1

declare dso_local i32 @ASN1_INTEGER_set(i32, i32) #1

declare dso_local i64 @SXNET_get_id_INTEGER(%struct.TYPE_11__*, i32*) #1

declare dso_local %struct.TYPE_10__* @SXNETID_new(...) #1

declare dso_local i32 @ASN1_OCTET_STRING_set(i32, i8*, i32) #1

declare dso_local i32 @sk_SXNETID_push(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @SXNETID_free(%struct.TYPE_10__*) #1

declare dso_local i32 @SXNET_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
