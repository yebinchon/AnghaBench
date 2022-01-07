; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_default_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_default_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_CC_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"krb5_cc_default_name 1 failed\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"krb5_cc_set_default_name failed\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"krb5_cc_default_name 2 failed\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"krb5_cc_default_name no longer same\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"krb5_cc_set_default_name 1 failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_default_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_default_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i8*, i8** @TEST_CC_NAME, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i8* @krb5_cc_default_name(i32 %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @krb5_errx(i32 %15, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @estrdup(i8* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @krb5_cc_set_default_name(i32 %20, i8* null)
  store i32 %21, i32* %3, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @krb5_errx(i32 %25, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %2, align 4
  %29 = call i8* @krb5_cc_default_name(i32 %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @krb5_errx(i32 %33, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @estrdup(i8* %36)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strcmp(i8* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @krb5_errx(i32 %43, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i32, i32* %2, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @krb5_cc_set_default_name(i32 %46, i8* %47)
  store i32 %48, i32* %3, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @krb5_errx(i32 %52, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32, i32* %2, align 4
  %56 = call i8* @krb5_cc_default_name(i32 %55)
  store i8* %56, i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @krb5_errx(i32 %60, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i8*, i8** %4, align 8
  %64 = call i8* @estrdup(i8* %63)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @strcmp(i8* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @krb5_errx(i32 %70, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @free(i8* %77)
  ret void
}

declare dso_local i8* @krb5_cc_default_name(i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @krb5_cc_set_default_name(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
