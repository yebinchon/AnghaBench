; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_cache_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_cc.c_test_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"parse_name for %s failed\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cc_cache_match for %s failed\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cc_cache_match for %s found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @test_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cache_find(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @krb5_parse_name(i32 %10, i8* %11, i32* %7)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @krb5_err(i32 %16, i32 1, i64 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @krb5_cc_cache_match(i32 %21, i32 %22, i32** %9)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @krb5_err(i32 %30, i32 1, i64 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %29, %26, %20
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @krb5_err(i32 %41, i32 1, i64 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %40, %37, %34
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @krb5_cc_close(i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @krb5_free_principal(i32 %53, i32 %54)
  ret void
}

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, i8*) #1

declare dso_local i64 @krb5_cc_cache_match(i32, i32, i32**) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
