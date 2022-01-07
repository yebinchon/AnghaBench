; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_cache_iter_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_cache_iter_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"krb5_cccol_cursor_new\00", align 1
@debug_flag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\09principal: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_cache_iter_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cache_iter_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @krb5_cccol_cursor_new(i32 %8, i32* %3)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @krb5_err(i32 %13, i32 1, i64 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %1
  br label %17

17:                                               ; preds = %60, %16
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @krb5_cccol_cursor_next(i32 %18, i32 %19, i32** %5)
  store i64 %20, i64* %4, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i1 [ false, %17 ], [ %24, %22 ]
  br i1 %26, label %27, label %64

27:                                               ; preds = %25
  %28 = load i64, i64* @debug_flag, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i8* @krb5_cc_get_name(i32 %31, i32* %32)
  %34 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %2, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @krb5_cc_get_principal(i32 %36, i32* %37, i32* %6)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @krb5_unparse_name(i32 %42, i32 %43, i8** %7)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i64, i64* @debug_flag, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %53, %41
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @krb5_free_principal(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %35
  %61 = load i32, i32* %2, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @krb5_cc_close(i32 %61, i32* %62)
  br label %17

64:                                               ; preds = %25
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @krb5_cccol_cursor_free(i32 %65, i32* %3)
  ret void
}

declare dso_local i64 @krb5_cccol_cursor_new(i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_cccol_cursor_next(i32, i32, i32**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @krb5_cc_get_name(i32, i32*) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32*, i32*) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

declare dso_local i32 @krb5_cccol_cursor_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
