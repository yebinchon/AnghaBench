; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cms.c_hx509_cms_decrypt_encrypted.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cms.c_hx509_cms_decrypt_encrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"Failed to decode CMSEncryptedData\00", align 1
@HX509_CMS_NO_DATA_AVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No content in EncryptedData\00", align 1
@HX509_ALG_NOT_SUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_cms_decrypt_encrypted(i32 %0, i32 %1, i8* %2, i64 %3, i32* %4, %struct.TYPE_12__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %13, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %19 = call i32 @memset(%struct.TYPE_12__* %18, i32 0, i32 8)
  %20 = call i32 @memset(%struct.TYPE_12__* %14, i32 0, i32 8)
  %21 = load i8*, i8** %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @decode_CMSEncryptedData(i8* %21, i64 %22, %struct.TYPE_13__* %15, i32* null)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %6
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %17, align 4
  %29 = call i32 @hx509_set_error_string(i32 %27, i32 0, i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %17, align 4
  store i32 %30, i32* %7, align 4
  br label %92

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* @HX509_CMS_NO_DATA_AVAILABLE, align 4
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @hx509_set_error_string(i32 %38, i32 0, i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %77

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @der_copy_oid(i32* %43, i32* %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @hx509_clear_error_string(i32 %49)
  br label %77

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %16, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @HX509_ALG_NOT_SUPP, align 4
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @hx509_clear_error_string(i32 %60)
  br label %77

62:                                               ; preds = %51
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @_hx509_pbe_decrypt(i32 %63, i32 %64, %struct.TYPE_14__* %65, i32* %68, %struct.TYPE_12__* %14)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %77

73:                                               ; preds = %62
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %75 = bitcast %struct.TYPE_12__* %74 to i8*
  %76 = bitcast %struct.TYPE_12__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 8, i1 false)
  br label %77

77:                                               ; preds = %73, %72, %58, %48, %36
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @free(i64 %86)
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %77
  %90 = call i32 @free_CMSEncryptedData(%struct.TYPE_13__* %15)
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %26
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @decode_CMSEncryptedData(i8*, i64, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @der_copy_oid(i32*, i32*) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i32 @_hx509_pbe_decrypt(i32, i32, %struct.TYPE_14__*, i32*, %struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(i64) #1

declare dso_local i32 @free_CMSEncryptedData(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
