; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_test_name.c_test_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_test_name.c_test_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lha\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @test_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_expand(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @hx509_env_add(i32 %12, i32** %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* %5, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @hx509_parse_name(i32 %14, i8* %15, i32* %9)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @hx509_name_expand(i32 %21, i32 %22, i32* %23)
  store i32 %24, i32* %11, align 4
  %25 = call i32 @hx509_env_free(i32** %8)
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %48

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @hx509_name_to_string(i32 %30, i8** %10)
  store i32 %31, i32* %11, align 4
  %32 = call i32 @hx509_name_free(i32* %9)
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %48

36:                                               ; preds = %29
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @strcmp(i8* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %48

47:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %46, %35, %28, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @hx509_env_add(i32, i32**, i8*, i8*) #1

declare dso_local i32 @hx509_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @hx509_name_expand(i32, i32, i32*) #1

declare dso_local i32 @hx509_env_free(i32**) #1

declare dso_local i32 @hx509_name_to_string(i32, i8**) #1

declare dso_local i32 @hx509_name_free(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
