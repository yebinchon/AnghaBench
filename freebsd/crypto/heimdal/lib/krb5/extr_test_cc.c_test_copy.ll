; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"lha@SU.SE\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"krb5_parse_name\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"krb5_cc_new_unique: %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"krb5_cc_initialize\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"krb5_cc_gen_new: %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"krb5_cc_copy_cache\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"krb5_cc_get_principal\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"p != p2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @test_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_copy(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @krb5_parse_name(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load i64, i64* %9, align 8
  %19 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %17, i32 1, i64 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @krb5_cc_new_unique(i32 %21, i8* %22, i32* null, i32* %7)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load i64, i64* %9, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %27, i32 1, i64 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @krb5_cc_initialize(i32 %32, i32 %33, i32 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load i64, i64* %9, align 8
  %41 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %39, i32 1, i64 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i32, i32* %4, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @krb5_cc_new_unique(i32 %43, i8* %44, i32* null, i32* %8)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %49, i32 1, i64 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @krb5_cc_copy_cache(i32 %54, i32 %55, i32 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %61, i32 1, i64 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %53
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @krb5_cc_get_principal(i32 %65, i32 %66, i32* %11)
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %4, align 4
  %72 = load i64, i64* %9, align 8
  %73 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %71, i32 1, i64 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @krb5_principal_compare(i32 %75, i32 %76, i32 %77)
  %79 = load i64, i64* @FALSE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @krb5_errx(i32 %82, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @krb5_free_principal(i32 %85, i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @krb5_free_principal(i32 %88, i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @krb5_cc_destroy(i32 %91, i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @krb5_cc_destroy(i32 %94, i32 %95)
  ret void
}

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_cc_new_unique(i32, i8*, i32*, i32*) #1

declare dso_local i64 @krb5_cc_initialize(i32, i32, i32) #1

declare dso_local i64 @krb5_cc_copy_cache(i32, i32, i32) #1

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
