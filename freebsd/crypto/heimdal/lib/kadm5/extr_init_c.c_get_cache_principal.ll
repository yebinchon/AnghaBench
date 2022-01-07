; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c_get_cache_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c_get_cache_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, i8*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"kadmin\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@KRB5_GC_CACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32**, i8**)* @get_cache_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_cache_principal(i32 %0, i32** %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32**, i32*** %6, align 8
  %18 = call i64 @krb5_cc_default(i32 %16, i32** %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32**, i32*** %6, align 8
  store i32* null, i32** %22, align 8
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %4, align 8
  br label %124

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @krb5_cc_get_principal(i32 %25, i32* %27, i8** %11)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32**, i32*** %6, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @krb5_cc_close(i32 %32, i32* %34)
  %36 = load i32**, i32*** %6, align 8
  store i32* null, i32** %36, align 8
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %4, align 8
  br label %124

38:                                               ; preds = %24
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @krb5_make_principal(i32 %39, i8** %12, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = load i32**, i32*** %6, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @krb5_cc_close(i32 %44, i32* %46)
  %48 = load i32**, i32*** %6, align 8
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @krb5_free_principal(i32 %49, i8* %50)
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %4, align 8
  br label %124

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = call i32 @memset(%struct.TYPE_13__* %13, i32 0, i32 24)
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @KRB5_GC_CACHED, align 4
  %62 = load i32**, i32*** %6, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @krb5_get_credentials_with_flags(i32 %60, i32 %61, i64 %65, i32* %63, %struct.TYPE_13__* %13, %struct.TYPE_13__** %14)
  store i64 %66, i64* %8, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @krb5_free_principal(i32 %67, i8* %68)
  %70 = load i64, i64* %8, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %53
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i8*, i8** %11, align 8
  %81 = load i8**, i8*** %7, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %84 = call i32 @krb5_free_creds(i32 %82, %struct.TYPE_13__* %83)
  store i64 0, i64* %4, align 8
  br label %124

85:                                               ; preds = %72
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %88 = call i32 @krb5_free_creds(i32 %86, %struct.TYPE_13__* %87)
  br label %89

89:                                               ; preds = %85, %53
  %90 = load i32, i32* %5, align 4
  %91 = load i32**, i32*** %6, align 8
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @krb5_cc_close(i32 %90, i32* %92)
  %94 = load i32**, i32*** %6, align 8
  store i32* null, i32** %94, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = call i8* @krb5_principal_get_comp_string(i32 %95, i8* %96, i32 0)
  store i8* %97, i8** %9, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i8*, i8** %11, align 8
  %100 = call i8* @krb5_principal_get_comp_string(i32 %98, i8* %99, i32 1)
  store i8* %100, i8** %10, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %89
  %104 = load i8*, i8** %10, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %103, %89
  %108 = load i32, i32* %5, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = call i64 @krb5_make_principal(i32 %108, i8** %12, i32* null, i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i64 %110, i64* %8, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @krb5_free_principal(i32 %111, i8* %112)
  %114 = load i64, i64* %8, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i64, i64* %8, align 8
  store i64 %117, i64* %4, align 8
  br label %124

118:                                              ; preds = %107
  %119 = load i8*, i8** %12, align 8
  %120 = load i8**, i8*** %7, align 8
  store i8* %119, i8** %120, align 8
  store i64 0, i64* %4, align 8
  br label %124

121:                                              ; preds = %103
  %122 = load i8*, i8** %11, align 8
  %123 = load i8**, i8*** %7, align 8
  store i8* %122, i8** %123, align 8
  store i64 0, i64* %4, align 8
  br label %124

124:                                              ; preds = %121, %118, %116, %79, %43, %31, %21
  %125 = load i64, i64* %4, align 8
  ret i64 %125
}

declare dso_local i64 @krb5_cc_default(i32, i32**) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32*, i8**) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

declare dso_local i64 @krb5_make_principal(i32, i8**, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @krb5_get_credentials_with_flags(i32, i32, i64, i32*, %struct.TYPE_13__*, %struct.TYPE_13__**) #1

declare dso_local i32 @krb5_free_creds(i32, %struct.TYPE_13__*) #1

declare dso_local i8* @krb5_principal_get_comp_string(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
