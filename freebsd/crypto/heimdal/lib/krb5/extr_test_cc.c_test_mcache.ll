; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_mcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_mcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"lha@SU.SE\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"krb5_parse_name\00", align 1
@krb5_cc_type_memory = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"krb5_cc_new_unique\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"krb5_cc_initialize\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"krb5_cc_get_name\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"krb5_cc_resolve\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"krb5_cc_get_principal\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"p != p2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_mcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mcache(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @krb5_parse_name(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @krb5_err(i32 %16, i32 1, i64 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @krb5_cc_type_memory, align 4
  %22 = call i64 @krb5_cc_new_unique(i32 %20, i32 %21, i32* null, i32* %4)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %2, align 4
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @krb5_err(i32 %26, i32 1, i64 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @krb5_cc_initialize(i32 %30, i32 %31, i32 %32)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %2, align 4
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @krb5_err(i32 %37, i32 1, i64 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i8* @krb5_cc_get_name(i32 %41, i32 %42)
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @krb5_errx(i32 %47, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i8* @krb5_cc_get_type(i32 %50, i32 %51)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @krb5_errx(i32 %56, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @asprintf(i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %59, i8* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %8, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63, %58
  %67 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @krb5_cc_close(i32 %69, i32 %70)
  %72 = load i32, i32* %2, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = call i64 @krb5_cc_resolve(i32 %72, i8* %73, i32* %5)
  store i64 %74, i64* %3, align 8
  %75 = load i64, i64* %3, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i32, i32* %2, align 4
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @krb5_err(i32 %78, i32 1, i64 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %68
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @krb5_cc_get_principal(i32 %82, i32 %83, i32* %10)
  store i64 %84, i64* %3, align 8
  %85 = load i64, i64* %3, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* %2, align 4
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @krb5_err(i32 %88, i32 1, i64 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %81
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i64 @krb5_principal_compare(i32 %92, i32 %93, i32 %94)
  %96 = load i64, i64* @FALSE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @krb5_errx(i32 %99, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %91
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @krb5_cc_destroy(i32 %102, i32 %103)
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @krb5_free_principal(i32 %105, i32 %106)
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @krb5_free_principal(i32 %108, i32 %109)
  %111 = load i32, i32* %2, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = call i64 @krb5_cc_resolve(i32 %111, i8* %112, i32* %5)
  store i64 %113, i64* %3, align 8
  %114 = load i64, i64* %3, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %101
  %117 = load i32, i32* %2, align 4
  %118 = load i64, i64* %3, align 8
  %119 = call i32 @krb5_err(i32 %117, i32 1, i64 %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %120

120:                                              ; preds = %116, %101
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i64 @krb5_cc_get_principal(i32 %121, i32 %122, i32* %10)
  store i64 %123, i64* %3, align 8
  %124 = load i64, i64* %3, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i32, i32* %2, align 4
  %128 = call i32 @krb5_errx(i32 %127, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %120
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @krb5_cc_destroy(i32 %130, i32 %131)
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @free(i8* %133)
  ret void
}

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_cc_new_unique(i32, i32, i32*, i32*) #1

declare dso_local i64 @krb5_cc_initialize(i32, i32, i32) #1

declare dso_local i8* @krb5_cc_get_name(i32, i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i8* @krb5_cc_get_type(i32, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @krb5_cc_close(i32, i32) #1

declare dso_local i64 @krb5_cc_resolve(i32, i8*, i32*) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32, i32*) #1

declare dso_local i64 @krb5_principal_compare(i32, i32, i32) #1

declare dso_local i32 @krb5_cc_destroy(i32, i32) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
