; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cms.c_find_CMSIdentifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cms.c_find_CMSIdentifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i64, i32*, i32*, i32* }

@HX509_QUERY_MATCH_SERIALNUMBER = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_ISSUER_NAME = common dso_local global i32 0, align 4
@HX509_QUERY_MATCH_SUBJECT_KEY_ID = common dso_local global i32 0, align 4
@HX509_CMS_NO_RECIPIENT_CERTIFICATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unknown CMS identifier element\00", align 1
@HX509_QUERY_MATCH_TIME = common dso_local global i32 0, align 4
@HX509_CERT_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Failed to find %s\00", align 1
@HX509_ERROR_APPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to find CMS id in cert store\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_12__*, i32, i64, i32**, i32)* @find_CMSIdentifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_CMSIdentifier(i32 %0, %struct.TYPE_12__* %1, i32 %2, i64 %3, i32** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = call i32 @memset(i32* %16, i32 0, i32 4)
  %20 = call i32 @_hx509_query_clear(%struct.TYPE_11__* %14)
  %21 = load i32**, i32*** %12, align 8
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %47 [
    i32 129, label %25
    i32 128, label %40
  ]

25:                                               ; preds = %6
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  store i32* %29, i32** %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  store i32* %34, i32** %35, align 8
  %36 = load i32, i32* @HX509_QUERY_MATCH_SERIALNUMBER, align 4
  %37 = load i32, i32* @HX509_QUERY_MATCH_ISSUER_NAME, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  br label %52

40:                                               ; preds = %6
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  store i32* %43, i32** %44, align 8
  %45 = load i32, i32* @HX509_QUERY_MATCH_SUBJECT_KEY_ID, align 4
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  br label %52

47:                                               ; preds = %6
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @HX509_CMS_NO_RECIPIENT_CERTIFICATE, align 4
  %50 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %48, i32 0, i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @HX509_CMS_NO_RECIPIENT_CERTIFICATE, align 4
  store i32 %51, i32* %7, align 4
  br label %105

52:                                               ; preds = %40, %25
  %53 = load i32, i32* %13, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @HX509_QUERY_MATCH_TIME, align 4
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store i64 %64, i64* %65, align 8
  br label %69

66:                                               ; preds = %52
  %67 = call i64 @time(i32* null)
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @hx509_certs_find(i32 %70, i32 %71, %struct.TYPE_11__* %14, i32** %15)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* @HX509_CERT_NOT_FOUND, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %79 = call i32 @unparse_CMSIdentifier(i32 %77, %struct.TYPE_12__* %78, i8** %18)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @HX509_CMS_NO_RECIPIENT_CERTIFICATE, align 4
  %85 = load i8*, i8** %18, align 8
  %86 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %83, i32 0, i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  br label %90

87:                                               ; preds = %76
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @hx509_clear_error_string(i32 %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* @HX509_CMS_NO_RECIPIENT_CERTIFICATE, align 4
  store i32 %91, i32* %7, align 4
  br label %105

92:                                               ; preds = %69
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @HX509_ERROR_APPEND, align 4
  %98 = load i32, i32* @HX509_CMS_NO_RECIPIENT_CERTIFICATE, align 4
  %99 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %96, i32 %97, i32 %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @HX509_CMS_NO_RECIPIENT_CERTIFICATE, align 4
  store i32 %100, i32* %7, align 4
  br label %105

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101
  %103 = load i32*, i32** %15, align 8
  %104 = load i32**, i32*** %12, align 8
  store i32* %103, i32** %104, align 8
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %95, %90, %47
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_hx509_query_clear(%struct.TYPE_11__*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @hx509_certs_find(i32, i32, %struct.TYPE_11__*, i32**) #1

declare dso_local i32 @unparse_CMSIdentifier(i32, %struct.TYPE_12__*, i8**) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
