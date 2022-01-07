; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_convert_X509_NAME_to_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_convert_X509_NAME_to_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_commonName = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@NID_pkcs9_emailAddress = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@NID_organizationalUnitName = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@NID_organizationName = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@NID_localityName = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@NID_stateOrProvinceName = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@NID_countryName = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @convert_X509_NAME_to_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @convert_X509_NAME_to_table(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @apr_hash_make(i32* %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @NID_commonName, align 4
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %13 = call i32 @X509_NAME_get_text_by_NID(i32* %10, i32 %11, i8* %12, i32 1024)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %20 = load i32, i32* %6, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @pstrdup_escape_nul_bytes(i8* %19, i32 %20, i32* %21)
  %23 = call i32 @apr_hash_set(i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %16, %2
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @NID_pkcs9_emailAddress, align 4
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %28 = call i32 @X509_NAME_get_text_by_NID(i32* %25, i32 %26, i8* %27, i32 1024)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @pstrdup_escape_nul_bytes(i8* %34, i32 %35, i32* %36)
  %38 = call i32 @apr_hash_set(i32* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %31, %24
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @NID_organizationalUnitName, align 4
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %43 = call i32 @X509_NAME_get_text_by_NID(i32* %40, i32 %41, i8* %42, i32 1024)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @pstrdup_escape_nul_bytes(i8* %49, i32 %50, i32* %51)
  %53 = call i32 @apr_hash_set(i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %46, %39
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @NID_organizationName, align 4
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %58 = call i32 @X509_NAME_get_text_by_NID(i32* %55, i32 %56, i8* %57, i32 1024)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @pstrdup_escape_nul_bytes(i8* %64, i32 %65, i32* %66)
  %68 = call i32 @apr_hash_set(i32* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %61, %54
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @NID_localityName, align 4
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %73 = call i32 @X509_NAME_get_text_by_NID(i32* %70, i32 %71, i8* %72, i32 1024)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %80 = load i32, i32* %6, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @pstrdup_escape_nul_bytes(i8* %79, i32 %80, i32* %81)
  %83 = call i32 @apr_hash_set(i32* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %76, %69
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @NID_stateOrProvinceName, align 4
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %88 = call i32 @X509_NAME_get_text_by_NID(i32* %85, i32 %86, i8* %87, i32 1024)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %95 = load i32, i32* %6, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @pstrdup_escape_nul_bytes(i8* %94, i32 %95, i32* %96)
  %98 = call i32 @apr_hash_set(i32* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %91, %84
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* @NID_countryName, align 4
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %103 = call i32 @X509_NAME_get_text_by_NID(i32* %100, i32 %101, i8* %102, i32 1024)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %110 = load i32, i32* %6, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @pstrdup_escape_nul_bytes(i8* %109, i32 %110, i32* %111)
  %113 = call i32 @apr_hash_set(i32* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %106, %99
  %115 = load i32*, i32** %7, align 8
  ret i32* %115
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @X509_NAME_get_text_by_NID(i32*, i32, i8*, i32) #1

declare dso_local i32 @apr_hash_set(i32*, i8*, i32, i32) #1

declare dso_local i32 @pstrdup_escape_nul_bytes(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
