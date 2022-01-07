; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_addr.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_addr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET_INVALID_PARAM_HANDLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"RANGE:127.0.0.0/8\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"RANGE:127.0.0.0/24\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"RANGE:IPv4:127.0.0.0-IPv4:127.0.0.255\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"RANGE:130.237.237.4/29\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"IPv4:127.0.0.0\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"inet:127.0.0.0\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"inet:127.255.255.255\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"inet:128.0.0.0\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"RANGE:130.237.237.8/29\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"inet:130.237.237.7\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"inet:130.237.237.8\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"inet:130.237.237.15\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"inet:130.237.237.16\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @SET_INVALID_PARAM_HANDLER, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @setprogname(i8* %11)
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
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @print_addr(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @print_addr(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @print_addr(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @print_addr(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @check_truncation(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @check_truncation(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @match_addr(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @match_addr(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @match_addr(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @match_addr(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @match_addr(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @match_addr(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @match_addr(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @krb5_free_context(i32 %46)
  ret i32 0
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i32 @print_addr(i32, i8*) #1

declare dso_local i32 @check_truncation(i32, i8*) #1

declare dso_local i32 @match_addr(i32, i8*, i8*, i32) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
