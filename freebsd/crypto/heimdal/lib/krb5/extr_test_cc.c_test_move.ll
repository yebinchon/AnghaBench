; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KRB5_CC_NOSUPP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"krb5_cc_new_unique: %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"lha@SU.SE\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"krb5_parse_name\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"krb5_cc_initialize\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"krb5_cc_new_unique\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"krb5_cc_get_principal\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"p != p2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_move(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32* @krb5_cc_get_prefix_ops(i32 %11, i8* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %108

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @krb5_cc_new_unique(i32 %18, i8* %19, i32* null, i32* %6)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @KRB5_CC_NOSUPP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %108

25:                                               ; preds = %17
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = load i64, i64* %8, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %29, i32 1, i64 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %28, %25
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @krb5_parse_name(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %40, i32 1, i64 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @krb5_cc_initialize(i32 %44, i32 %45, i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = load i64, i64* %8, align 8
  %53 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %51, i32 1, i64 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %43
  %55 = load i32, i32* %3, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @krb5_cc_new_unique(i32 %55, i8* %56, i32* null, i32* %7)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* %3, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %61, i32 1, i64 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @krb5_cc_initialize(i32 %65, i32 %66, i32 %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %3, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %72, i32 1, i64 %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @krb5_cc_get_principal(i32 %76, i32 %77, i32* %10)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* %3, align 4
  %83 = load i64, i64* %8, align 8
  %84 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %82, i32 1, i64 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %75
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @krb5_principal_compare(i32 %86, i32 %87, i32 %88)
  %90 = load i64, i64* @FALSE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @krb5_errx(i32 %93, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %85
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @krb5_free_principal(i32 %96, i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @krb5_free_principal(i32 %99, i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @krb5_cc_destroy(i32 %102, i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @krb5_cc_destroy(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %95, %24, %16
  ret void
}

declare dso_local i32* @krb5_cc_get_prefix_ops(i32, i8*) #1

declare dso_local i64 @krb5_cc_new_unique(i32, i8*, i32*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i64 @krb5_cc_initialize(i32, i32, i32) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32, i32*) #1

declare dso_local i64 @krb5_principal_compare(i32, i32, i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_cc_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
