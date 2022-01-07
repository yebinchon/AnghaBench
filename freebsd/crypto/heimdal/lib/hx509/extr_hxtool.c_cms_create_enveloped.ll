; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_cms_create_enveloped.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_cms_create_enveloped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cms_envelope_options = type { i32, i64, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"map_file: %s: %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"MEMORY:cert-store\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"hx509_certs_init: MEMORY\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@HX509_CMS_EV_ALLOW_WEAK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"encryption type: %s no found\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"hx509_query_alloc: %d\00", align 1
@HX509_QUERY_OPTION_KU_ENCIPHERMENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"hx509_certs_find: %d\00", align 1
@asn1_oid_id_pkcs7_data = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"hx509_cms_envelope_1: %d\00", align 1
@asn1_oid_id_pkcs7_envelopedData = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"hx509_cms_wrap_ContentInfo: %d\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"hx509_write_file: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cms_create_enveloped(%struct.cms_envelope_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cms_envelope_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__, align 4
  store %struct.cms_envelope_options* %0, %struct.cms_envelope_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %17, align 4
  %19 = call i32 @memset(i32* %7, i32 0, i32 4)
  %20 = load i32, i32* @context, align 4
  %21 = call i32 @hx509_lock_init(i32 %20, i32* %16)
  %22 = load i32, i32* %16, align 4
  %23 = load %struct.cms_envelope_options*, %struct.cms_envelope_options** %4, align 8
  %24 = getelementptr inbounds %struct.cms_envelope_options, %struct.cms_envelope_options* %23, i32 0, i32 5
  %25 = call i32 @lock_strings(i32 %22, i32* %24)
  %26 = load i8**, i8*** %6, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @rk_undumpdata(i8* %28, i8** %15, i64* %14)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %3
  %39 = load i32, i32* @context, align 4
  %40 = call i32 @hx509_certs_init(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32* %11)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @context, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @hx509_err(i32 %44, i32 1, i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* @context, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.cms_envelope_options*, %struct.cms_envelope_options** %4, align 8
  %52 = getelementptr inbounds %struct.cms_envelope_options, %struct.cms_envelope_options* %51, i32 0, i32 4
  %53 = call i32 @certs_strings(i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %50, i32* %52)
  %54 = load %struct.cms_envelope_options*, %struct.cms_envelope_options** %4, align 8
  %55 = getelementptr inbounds %struct.cms_envelope_options, %struct.cms_envelope_options* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i32, i32* @HX509_CMS_EV_ALLOW_WEAK, align 4
  %60 = load i32, i32* %17, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %58, %47
  %63 = load %struct.cms_envelope_options*, %struct.cms_envelope_options** %4, align 8
  %64 = getelementptr inbounds %struct.cms_envelope_options, %struct.cms_envelope_options* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.cms_envelope_options*, %struct.cms_envelope_options** %4, align 8
  %69 = getelementptr inbounds %struct.cms_envelope_options, %struct.cms_envelope_options* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32* @hx509_crypto_enctype_by_name(i32 %70)
  store i32* %71, i32** %9, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.cms_envelope_options*, %struct.cms_envelope_options** %4, align 8
  %76 = getelementptr inbounds %struct.cms_envelope_options, %struct.cms_envelope_options* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %67
  br label %80

80:                                               ; preds = %79, %62
  %81 = load i32, i32* @context, align 4
  %82 = call i32 @hx509_query_alloc(i32 %81, i32** %10)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* @HX509_QUERY_OPTION_KU_ENCIPHERMENT, align 4
  %91 = call i32 @hx509_query_match_option(i32* %89, i32 %90)
  %92 = load i32, i32* @context, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @hx509_certs_find(i32 %92, i32 %93, i32* %94, i32* %12)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* @context, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @hx509_query_free(i32 %96, i32* %97)
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %101, %88
  %105 = load %struct.cms_envelope_options*, %struct.cms_envelope_options** %4, align 8
  %106 = getelementptr inbounds %struct.cms_envelope_options, %struct.cms_envelope_options* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @parse_oid(i32 %107, i32* @asn1_oid_id_pkcs7_data, i32* %7)
  %109 = load i32, i32* @context, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i8*, i8** %15, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @hx509_cms_envelope_1(i32 %109, i32 %110, i32 %111, i8* %112, i64 %113, i32* %114, i32* %7, %struct.TYPE_6__* %8)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %104
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %104
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @hx509_cert_free(i32 %122)
  %124 = call i32 @hx509_certs_free(i32* %11)
  %125 = load i8*, i8** %15, align 8
  %126 = call i32 @rk_xfree(i8* %125)
  %127 = call i32 @der_free_oid(i32* %7)
  %128 = load %struct.cms_envelope_options*, %struct.cms_envelope_options** %4, align 8
  %129 = getelementptr inbounds %struct.cms_envelope_options, %struct.cms_envelope_options* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %121
  %133 = call i32 @hx509_cms_wrap_ContentInfo(i32* @asn1_oid_id_pkcs7_envelopedData, %struct.TYPE_6__* %8, %struct.TYPE_6__* %18)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %136, %132
  %140 = call i32 @der_free_octet_string(%struct.TYPE_6__* %8)
  %141 = bitcast %struct.TYPE_6__* %8 to i8*
  %142 = bitcast %struct.TYPE_6__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 8, i1 false)
  br label %143

143:                                              ; preds = %139, %121
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @hx509_lock_free(i32 %144)
  %146 = load i8**, i8*** %6, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 1
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @_hx509_write_file(i8* %148, i32 %150, i32 %152)
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %143
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %156, %143
  %160 = call i32 @der_free_octet_string(%struct.TYPE_6__* %8)
  ret i32 0
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hx509_lock_init(i32, i32*) #1

declare dso_local i32 @lock_strings(i32, i32*) #1

declare dso_local i32 @rk_undumpdata(i8*, i8**, i64*) #1

declare dso_local i32 @err(i32, i8*, i8*, i32) #1

declare dso_local i32 @hx509_certs_init(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @hx509_err(i32, i32, i32, i8*) #1

declare dso_local i32 @certs_strings(i32, i8*, i32, i32, i32*) #1

declare dso_local i32* @hx509_crypto_enctype_by_name(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @hx509_query_alloc(i32, i32**) #1

declare dso_local i32 @hx509_query_match_option(i32*, i32) #1

declare dso_local i32 @hx509_certs_find(i32, i32, i32*, i32*) #1

declare dso_local i32 @hx509_query_free(i32, i32*) #1

declare dso_local i32 @parse_oid(i32, i32*, i32*) #1

declare dso_local i32 @hx509_cms_envelope_1(i32, i32, i32, i8*, i64, i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @hx509_cert_free(i32) #1

declare dso_local i32 @hx509_certs_free(i32*) #1

declare dso_local i32 @rk_xfree(i8*) #1

declare dso_local i32 @der_free_oid(i32*) #1

declare dso_local i32 @hx509_cms_wrap_ContentInfo(i32*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hx509_lock_free(i32) #1

declare dso_local i32 @_hx509_write_file(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
