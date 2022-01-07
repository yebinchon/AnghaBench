; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_cc_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_cc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"MEMORY\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"krb5_cc_new_unique\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"lha@SU.SE\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"krb5_parse_name\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"krb5_cc_initialize\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"FriendlyName\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"krb5_cc_set_config: add\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"krb5_cc_get_config: first\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"krb5_cc_set_config: add -second\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"krb5_cc_get_config: second\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"krb5_cc_set_config: delete\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"krb5_cc_get_config: non-existant\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_cc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cc_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @krb5_cc_new_unique(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @krb5_err(i32 %16, i32 1, i64 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @krb5_parse_name(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32** %4)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @krb5_err(i32 %25, i32 1, i64 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @krb5_cc_initialize(i32 %29, i32 %30, i32* %31)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* %2, align 4
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @krb5_err(i32 %36, i32 1, i64 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %28
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %118, %39
  %41 = load i32, i32* %6, align 4
  %42 = icmp ult i32 %41, 1000
  br i1 %42, label %43, label %121

43:                                               ; preds = %40
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  store i32* null, i32** %10, align 8
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  store i32* %48, i32** %10, align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @rk_UNCONST(i8* %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = call i64 @krb5_cc_set_config(i32 %56, i32 %57, i32* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_5__* %7)
  store i64 %59, i64* %3, align 8
  %60 = load i64, i64* %3, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @krb5_errx(i32 %63, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %49
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = call i64 @krb5_cc_get_config(i32 %66, i32 %67, i32* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_5__* %8)
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %3, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @krb5_errx(i32 %73, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %65
  %76 = call i32 @krb5_data_free(%struct.TYPE_5__* %8)
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = call i64 @krb5_cc_set_config(i32 %77, i32 %78, i32* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_5__* %7)
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @krb5_errx(i32 %84, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %75
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = call i64 @krb5_cc_get_config(i32 %87, i32 %88, i32* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_5__* %8)
  store i64 %90, i64* %3, align 8
  %91 = load i64, i64* %3, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @krb5_errx(i32 %94, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %86
  %97 = call i32 @krb5_data_free(%struct.TYPE_5__* %8)
  %98 = load i32, i32* %2, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = call i64 @krb5_cc_set_config(i32 %98, i32 %99, i32* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_5__* null)
  store i64 %101, i64* %3, align 8
  %102 = load i64, i64* %3, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @krb5_errx(i32 %105, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %96
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = call i64 @krb5_cc_get_config(i32 %108, i32 %109, i32* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_5__* %8)
  store i64 %111, i64* %3, align 8
  %112 = load i64, i64* %3, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @krb5_errx(i32 %115, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %107
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %40

121:                                              ; preds = %40
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @krb5_cc_destroy(i32 %122, i32 %123)
  %125 = load i32, i32* %2, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @krb5_free_principal(i32 %125, i32* %126)
  ret void
}

declare dso_local i64 @krb5_cc_new_unique(i32, i8*, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32**) #1

declare dso_local i64 @krb5_cc_initialize(i32, i32, i32*) #1

declare dso_local i32 @rk_UNCONST(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @krb5_cc_set_config(i32, i32, i32*, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i64 @krb5_cc_get_config(i32, i32, i32*, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_5__*) #1

declare dso_local i32 @krb5_cc_destroy(i32, i32) #1

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
