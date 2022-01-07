; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_generate-requests.c_generate_requests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_generate-requests.c_generate_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"krb5_parse_name %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @generate_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_requests(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = call i64 @krb5_init_context(i32* %6)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @read_words(i8* %20, i8*** %10)
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %58, %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %22
  %27 = load i8**, i8*** %10, align 8
  %28 = call i32 (...) @rand()
  %29 = load i32, i32* %11, align 4
  %30 = urem i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %27, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %12, align 8
  %34 = call i32 @memset(i32* %8, i32 0, i32 4)
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %12, align 8
  %37 = call i64 @krb5_parse_name(i32 %35, i8* %36, i32* %5)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @krb5_err(i32 %41, i32 1, i64 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %40, %26
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @krb5_get_init_creds_password(i32 %46, i32* %8, i32 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32 0, i32* null, i32* null)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @krb5_free_cred_contents(i32 %52, i32* %8)
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @krb5_free_principal(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %22

61:                                               ; preds = %22
  ret void
}

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i32 @read_words(i8*, i8***) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, i8*) #1

declare dso_local i64 @krb5_get_init_creds_password(i32, i32*, i32, i8*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
