; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_find_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_find_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32, i32*, i32*, i32 }

@HX509_QUERY_FIND_ISSUER_CERT = common dso_local global i32 0, align 4
@HX509_CERTIFICATE_MALFORMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Subjectless certificate missing AuthKeyID\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Subjectless certificate missing keyIdentifier inside AuthKeyID\00", align 1
@HX509_QUERY_MATCH_SUBJECT_KEY_ID = common dso_local global i32 0, align 4
@HX509_QUERY_NO_MATCH_PATH = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_TIME = common dso_local global i32 0, align 4
@HX509_ISSUER_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Failed to find issuer for certificate with subject: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32*, i64, %struct.TYPE_15__*, %struct.TYPE_15__**)* @find_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_parent(i32 %0, i32 %1, i64 %2, i32* %3, i64 %4, %struct.TYPE_15__* %5, %struct.TYPE_15__** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__**, align 8
  %16 = alloca %struct.TYPE_16__, align 8
  %17 = alloca %struct.TYPE_14__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__** %6, %struct.TYPE_15__*** %15, align 8
  %21 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %21, align 8
  %22 = call i32 @memset(%struct.TYPE_16__* %16, i32 0, i32 8)
  %23 = call i32 @_hx509_query_clear(%struct.TYPE_14__* %17)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @subject_null_p(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* @HX509_QUERY_FIND_ISSUER_CERT, align 4
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %35 = call i32 @_hx509_get_cert(%struct.TYPE_15__* %34)
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 4
  store i32 %35, i32* %36, align 8
  br label %65

37:                                               ; preds = %7
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @find_extension_auth_key_id(i32 %40, %struct.TYPE_16__* %16)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @HX509_CERTIFICATE_MALFORMED, align 4
  %47 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %45, i32 0, i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @HX509_CERTIFICATE_MALFORMED, align 4
  store i32 %48, i32* %8, align 4
  br label %137

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = call i32 @free_AuthorityKeyIdentifier(%struct.TYPE_16__* %16)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @HX509_CERTIFICATE_MALFORMED, align 4
  %57 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %55, i32 0, i32 %56, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @HX509_CERTIFICATE_MALFORMED, align 4
  store i32 %58, i32* %8, align 4
  br label %137

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  store i32* %61, i32** %62, align 8
  %63 = load i32, i32* @HX509_QUERY_MATCH_SUBJECT_KEY_ID, align 4
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  br label %65

65:                                               ; preds = %59, %29
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  store i32* %66, i32** %67, align 8
  %68 = load i32, i32* @HX509_QUERY_NO_MATCH_PATH, align 4
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @HX509_QUERY_MATCH_TIME, align 4
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %84 = call i32 @hx509_certs_find(i32 %81, i64 %82, %struct.TYPE_14__* %17, %struct.TYPE_15__** %83)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = call i32 @free_AuthorityKeyIdentifier(%struct.TYPE_16__* %16)
  store i32 0, i32* %8, align 4
  br label %137

89:                                               ; preds = %74
  %90 = load i32, i32* @HX509_QUERY_MATCH_TIME, align 4
  %91 = xor i32 %90, -1
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %91
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %65
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %102 = call i32 @hx509_certs_find(i32 %99, i64 %100, %struct.TYPE_14__* %17, %struct.TYPE_15__** %101)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = call i32 @free_AuthorityKeyIdentifier(%struct.TYPE_16__* %16)
  %107 = load i32, i32* %18, align 4
  store i32 %107, i32* %8, align 4
  br label %137

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %95
  %110 = call i32 @free_AuthorityKeyIdentifier(%struct.TYPE_16__* %16)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %112 = call i32 @hx509_cert_get_subject(%struct.TYPE_15__* %111, i32* %19)
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @hx509_clear_error_string(i32 %116)
  %118 = load i32, i32* @HX509_ISSUER_NOT_FOUND, align 4
  store i32 %118, i32* %8, align 4
  br label %137

119:                                              ; preds = %109
  %120 = load i32, i32* %19, align 4
  %121 = call i32 @hx509_name_to_string(i32 %120, i8** %20)
  store i32 %121, i32* %18, align 4
  %122 = call i32 @hx509_name_free(i32* %19)
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @hx509_clear_error_string(i32 %126)
  %128 = load i32, i32* @HX509_ISSUER_NOT_FOUND, align 4
  store i32 %128, i32* %8, align 4
  br label %137

129:                                              ; preds = %119
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @HX509_ISSUER_NOT_FOUND, align 4
  %132 = load i8*, i8** %20, align 8
  %133 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %130, i32 0, i32 %131, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %132)
  %134 = load i8*, i8** %20, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i32, i32* @HX509_ISSUER_NOT_FOUND, align 4
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %129, %125, %115, %105, %87, %53, %44
  %138 = load i32, i32* %8, align 4
  ret i32 %138
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @_hx509_query_clear(%struct.TYPE_14__*) #1

declare dso_local i32 @subject_null_p(i32) #1

declare dso_local i32 @_hx509_get_cert(%struct.TYPE_15__*) #1

declare dso_local i32 @find_extension_auth_key_id(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @free_AuthorityKeyIdentifier(%struct.TYPE_16__*) #1

declare dso_local i32 @hx509_certs_find(i32, i64, %struct.TYPE_14__*, %struct.TYPE_15__**) #1

declare dso_local i32 @hx509_cert_get_subject(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i32 @hx509_name_to_string(i32, i8**) #1

declare dso_local i32 @hx509_name_free(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
