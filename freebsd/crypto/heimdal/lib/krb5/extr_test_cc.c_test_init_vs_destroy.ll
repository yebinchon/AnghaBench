; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_init_vs_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_init_vs_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"lha@SU.SE\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"krb5_parse_name\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"krb5_cc_new_unique: %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"krb5_cc_resolve\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"krb5_cc_initialize\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"krb5_cc_get_principal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_init_vs_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_init_vs_destroy(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @krb5_parse_name(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %16, i32 1, i64 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %3, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @krb5_cc_new_unique(i32 %20, i8* %21, i32* null, i32* %6)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = load i64, i64* %5, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %26, i32 1, i64 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @krb5_cc_get_type(i32 %31, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @krb5_cc_get_name(i32 %34, i32 %35)
  %37 = call i64 @asprintf(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %30
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %3, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @krb5_cc_resolve(i32 %45, i8* %46, i32* %7)
  store i64 %47, i64* %5, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* %3, align 4
  %54 = load i64, i64* %5, align 8
  %55 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %53, i32 1, i64 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %44
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @krb5_cc_destroy(i32 %57, i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @krb5_cc_initialize(i32 %60, i32 %61, i32 %62)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i32, i32* %3, align 4
  %68 = load i64, i64* %5, align 8
  %69 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %67, i32 1, i64 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %56
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @krb5_cc_get_principal(i32 %71, i32 %72, i32* %9)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* %3, align 4
  %78 = load i64, i64* %5, align 8
  %79 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %77, i32 1, i64 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @krb5_cc_destroy(i32 %81, i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @krb5_free_principal(i32 %84, i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @krb5_free_principal(i32 %87, i32 %88)
  ret void
}

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_cc_new_unique(i32, i8*, i32*, i32*) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @krb5_cc_get_type(i32, i32) #1

declare dso_local i32 @krb5_cc_get_name(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @krb5_cc_resolve(i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_cc_destroy(i32, i32) #1

declare dso_local i64 @krb5_cc_initialize(i32, i32, i32) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
