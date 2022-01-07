; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_cms_unenvelope.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_cms_unenvelope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cms_unenvelope_options = type { i64, i32, i64, i32 }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i8*, i64 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"map_file: %s: %d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"hx509_cms_unwrap_ContentInfo: %d\00", align 1
@asn1_oid_id_pkcs7_envelopedData = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Content is not SignedData\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"MEMORY:cert-store\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"hx509_certs_init: MEMORY: %d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@HX509_CMS_UE_ALLOW_WEAK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"hx509_cms_unenvelope\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"hx509_write_file: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cms_unenvelope(%struct.cms_unenvelope_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cms_unenvelope_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  store %struct.cms_unenvelope_options* %0, %struct.cms_unenvelope_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %18 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* @context, align 4
  %20 = call i32 @hx509_lock_init(i32 %19, i32* %14)
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.cms_unenvelope_options*, %struct.cms_unenvelope_options** %4, align 8
  %23 = getelementptr inbounds %struct.cms_unenvelope_options, %struct.cms_unenvelope_options* %22, i32 0, i32 3
  %24 = call i32 @lock_strings(i32 %21, i32* %23)
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @rk_undumpdata(i8* %27, i8** %12, i64* %11)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load i8**, i8*** %6, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %3
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = load %struct.cms_unenvelope_options*, %struct.cms_unenvelope_options** %4, align 8
  %43 = getelementptr inbounds %struct.cms_unenvelope_options, %struct.cms_unenvelope_options* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %37
  %47 = call i32 @hx509_cms_unwrap_ContentInfo(%struct.TYPE_12__* %9, %struct.TYPE_11__* %17, %struct.TYPE_12__* %16, i32* null)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = call i64 @der_heim_oid_cmp(%struct.TYPE_11__* %17, i32* @asn1_oid_id_pkcs7_envelopedData)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = call i32 @der_free_oid(%struct.TYPE_11__* %17)
  %60 = bitcast %struct.TYPE_12__* %9 to i8*
  %61 = bitcast %struct.TYPE_12__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  br label %62

62:                                               ; preds = %58, %37
  %63 = load i32, i32* @context, align 4
  %64 = call i32 @hx509_certs_init(i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null, i32* %10)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %13, align 4
  %69 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* @context, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.cms_unenvelope_options*, %struct.cms_unenvelope_options** %4, align 8
  %75 = getelementptr inbounds %struct.cms_unenvelope_options, %struct.cms_unenvelope_options* %74, i32 0, i32 1
  %76 = call i32 @certs_strings(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %73, i32* %75)
  %77 = load %struct.cms_unenvelope_options*, %struct.cms_unenvelope_options** %4, align 8
  %78 = getelementptr inbounds %struct.cms_unenvelope_options, %struct.cms_unenvelope_options* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load i32, i32* @HX509_CMS_UE_ALLOW_WEAK, align 4
  %83 = load i32, i32* %15, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %81, %70
  %86 = load i32, i32* @context, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %15, align 4
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @hx509_cms_unenvelope(i32 %86, i32 %87, i32 %88, i8* %90, i64 %92, i32* null, i32 0, %struct.TYPE_11__* %7, %struct.TYPE_12__* %8)
  store i32 %93, i32* %13, align 4
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = icmp ne i8* %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = call i32 @der_free_octet_string(%struct.TYPE_12__* %9)
  br label %100

100:                                              ; preds = %98, %85
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* @context, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @hx509_err(i32 %104, i32 1, i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @rk_xfree(i8* %108)
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @hx509_lock_free(i32 %110)
  %112 = call i32 @hx509_certs_free(i32* %10)
  %113 = call i32 @der_free_oid(%struct.TYPE_11__* %7)
  %114 = load i8**, i8*** %6, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @_hx509_write_file(i8* %116, i8* %118, i64 %120)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %107
  %125 = load i32, i32* %13, align 4
  %126 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %124, %107
  %128 = call i32 @der_free_octet_string(%struct.TYPE_12__* %8)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hx509_lock_init(i32, i32*) #2

declare dso_local i32 @lock_strings(i32, i32*) #2

declare dso_local i32 @rk_undumpdata(i8*, i8**, i64*) #2

declare dso_local i32 @err(i32, i8*, i8*, i32) #2

declare dso_local i32 @hx509_cms_unwrap_ContentInfo(%struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i64 @der_heim_oid_cmp(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @der_free_oid(%struct.TYPE_11__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32*) #2

declare dso_local i32 @certs_strings(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @hx509_cms_unenvelope(i32, i32, i32, i8*, i64, i32*, i32, %struct.TYPE_11__*, %struct.TYPE_12__*) #2

declare dso_local i32 @der_free_octet_string(%struct.TYPE_12__*) #2

declare dso_local i32 @hx509_err(i32, i32, i32, i8*) #2

declare dso_local i32 @rk_xfree(i8*) #2

declare dso_local i32 @hx509_lock_free(i32) #2

declare dso_local i32 @hx509_certs_free(i32*) #2

declare dso_local i32 @_hx509_write_file(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
