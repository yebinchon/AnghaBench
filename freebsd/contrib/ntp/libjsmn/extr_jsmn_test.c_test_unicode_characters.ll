; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_unicode_characters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_unicode_characters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"{\22a\22:\22\\uAbcD\22}\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"{\22a\22:\22str\\u0000\22}\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"{\22a\22:\22\\uFFFFstr\22}\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"{\22a\22:\22str\\uFFGFstr\22}\00", align 1
@JSMN_ERROR_INVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"{\22a\22:\22str\\u@FfF\22}\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"{\22a\22:[\22\\u028\22]}\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"{\22a\22:[\22\\u0280\22]}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_unicode_characters() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i32], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = call i32 @jsmn_init(i32* %1)
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %10 = call i32 @jsmn_parse(i32* %1, i8* %6, i32 %8, i32* %9, i32 10)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @check(i32 %13)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %15 = call i32 @jsmn_init(i32* %1)
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %20 = call i32 @jsmn_parse(i32* %1, i8* %16, i32 %18, i32* %19, i32 10)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @check(i32 %23)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %25 = call i32 @jsmn_init(i32* %1)
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %30 = call i32 @jsmn_parse(i32* %1, i8* %26, i32 %28, i32* %29, i32 10)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @check(i32 %33)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  %35 = call i32 @jsmn_init(i32* %1)
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %40 = call i32 @jsmn_parse(i32* %1, i8* %36, i32 %38, i32* %39, i32 10)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @check(i32 %44)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  %46 = call i32 @jsmn_init(i32* %1)
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %51 = call i32 @jsmn_parse(i32* %1, i8* %47, i32 %49, i32* %50, i32 10)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @check(i32 %55)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  %57 = call i32 @jsmn_init(i32* %1)
  %58 = load i8*, i8** %3, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %62 = call i32 @jsmn_parse(i32* %1, i8* %58, i32 %60, i32* %61, i32 10)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @check(i32 %66)
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  %68 = call i32 @jsmn_init(i32* %1)
  %69 = load i8*, i8** %3, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 0, i64 0
  %73 = call i32 @jsmn_parse(i32* %1, i8* %69, i32 %71, i32* %72, i32 10)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp sge i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @check(i32 %76)
  ret i32 0
}

declare dso_local i32 @jsmn_init(i32*) #1

declare dso_local i32 @jsmn_parse(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @check(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
