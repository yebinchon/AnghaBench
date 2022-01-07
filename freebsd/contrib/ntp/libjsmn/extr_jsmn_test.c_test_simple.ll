; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_simple.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"{\22a\22: 0}\00", align 1
@JSMN_OBJECT = common dso_local global i32 0, align 4
@JSMN_STRING = common dso_local global i32 0, align 4
@JSMN_PRIMITIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"[\22a\22:{},\22b\22:{}]\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"{\0A \22Day\22: 26,\0A \22Month\22: 9,\0A \22Year\22: 12\0A }\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_simple() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x i32], align 16
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %5 = call i32 @jsmn_init(i32* %3)
  %6 = load i8*, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %10 = call i32 @jsmn_parse(i32* %3, i8* %6, i32 %8, i32* %9, i32 10)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @check(i32 %13)
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = load i32, i32* @JSMN_OBJECT, align 4
  %18 = call i32 @TOKEN_EQ(i32 %16, i32 0, i32 8, i32 %17)
  %19 = call i32 @check(i32 %18)
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @JSMN_STRING, align 4
  %23 = call i32 @TOKEN_EQ(i32 %21, i32 2, i32 3, i32 %22)
  %24 = call i32 @check(i32 %23)
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @JSMN_PRIMITIVE, align 4
  %28 = call i32 @TOKEN_EQ(i32 %26, i32 6, i32 7, i32 %27)
  %29 = call i32 @check(i32 %28)
  %30 = load i8*, i8** %1, align 8
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = load i8*, i8** %1, align 8
  %34 = call i32 @TOKEN_STRING(i8* %30, i32 %32, i8* %33)
  %35 = call i32 @check(i32 %34)
  %36 = load i8*, i8** %1, align 8
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TOKEN_STRING(i8* %36, i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @check(i32 %39)
  %41 = load i8*, i8** %1, align 8
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @TOKEN_STRING(i8* %41, i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @check(i32 %44)
  %46 = call i32 @jsmn_init(i32* %3)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  %47 = load i8*, i8** %1, align 8
  %48 = load i8*, i8** %1, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %51 = call i32 @jsmn_parse(i32* %3, i8* %47, i32 %49, i32* %50, i32 10)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp sge i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @check(i32 %54)
  %56 = call i32 @jsmn_init(i32* %3)
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  %57 = load i8*, i8** %1, align 8
  %58 = load i8*, i8** %1, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %61 = call i32 @jsmn_parse(i32* %3, i8* %57, i32 %59, i32* %60, i32 10)
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  %63 = icmp sge i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @check(i32 %64)
  ret i32 0
}

declare dso_local i32 @jsmn_init(i32*) #1

declare dso_local i32 @jsmn_parse(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @check(i32) #1

declare dso_local i32 @TOKEN_EQ(i32, i32, i32, i32) #1

declare dso_local i32 @TOKEN_STRING(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
