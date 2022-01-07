; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_cache_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_cache_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KRB5_CC_NOSUPP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"krb5_cc_cache_get_first(%s)\00", align 1
@debug_flag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\09principal: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @test_cache_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cache_iter(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @krb5_cc_cache_get_first(i32 %12, i8* %13, i32* %7)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @KRB5_CC_NOSUPP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %83

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @krb5_err(i32 %23, i32 1, i64 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %22, %19
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %78, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @krb5_cc_cache_next(i32 %30, i32 %31, i32* %9)
  store i64 %32, i64* %8, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %29
  %35 = load i64, i64* @debug_flag, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @krb5_cc_get_name(i32 %38, i32 %39)
  %41 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @krb5_cc_get_principal(i32 %43, i32 %44, i32* %10)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @krb5_unparse_name(i32 %49, i32 %50, i8** %11)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load i64, i64* @debug_flag, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @free(i8* %61)
  br label %63

63:                                               ; preds = %60, %48
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @krb5_free_principal(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %42
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @krb5_cc_destroy(i32 %71, i32 %72)
  br label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @krb5_cc_close(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %70
  br label %29

79:                                               ; preds = %29
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @krb5_cc_cache_end_seq_get(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %18
  ret void
}

declare dso_local i64 @krb5_cc_cache_get_first(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, i8*) #1

declare dso_local i64 @krb5_cc_cache_next(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @krb5_cc_get_name(i32, i32) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32, i32*) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_cc_destroy(i32, i32) #1

declare dso_local i32 @krb5_cc_close(i32, i32) #1

declare dso_local i32 @krb5_cc_cache_end_seq_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
