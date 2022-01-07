; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"[[]]\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"[[], []]\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"[[], [[]], [[], []]]\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"[\22a\22, [[], []]]\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"[[], \22[], [[]]\22, [[]]]\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"[1, 2, 3]\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"[1, 2, [3, \22a\22], null]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_count() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = call i32 @jsmn_init(i32* %1)
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = call i32 @jsmn_parse(i32* %1, i8* %4, i32 %6, i32* null, i32 0)
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @check(i32 %9)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %11 = call i32 @jsmn_init(i32* %1)
  %12 = load i8*, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = call i32 @jsmn_parse(i32* %1, i8* %12, i32 %14, i32* null, i32 0)
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @check(i32 %17)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  %19 = call i32 @jsmn_init(i32* %1)
  %20 = load i8*, i8** %2, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = call i32 @jsmn_parse(i32* %1, i8* %20, i32 %22, i32* null, i32 0)
  %24 = icmp eq i32 %23, 2
  %25 = zext i1 %24 to i32
  %26 = call i32 @check(i32 %25)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  %27 = call i32 @jsmn_init(i32* %1)
  %28 = load i8*, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i32 @jsmn_parse(i32* %1, i8* %28, i32 %30, i32* null, i32 0)
  %32 = icmp eq i32 %31, 3
  %33 = zext i1 %32 to i32
  %34 = call i32 @check(i32 %33)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  %35 = call i32 @jsmn_init(i32* %1)
  %36 = load i8*, i8** %2, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = call i32 @jsmn_parse(i32* %1, i8* %36, i32 %38, i32* null, i32 0)
  %40 = icmp eq i32 %39, 3
  %41 = zext i1 %40 to i32
  %42 = call i32 @check(i32 %41)
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  %43 = call i32 @jsmn_init(i32* %1)
  %44 = load i8*, i8** %2, align 8
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i32 @jsmn_parse(i32* %1, i8* %44, i32 %46, i32* null, i32 0)
  %48 = icmp eq i32 %47, 7
  %49 = zext i1 %48 to i32
  %50 = call i32 @check(i32 %49)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  %51 = call i32 @jsmn_init(i32* %1)
  %52 = load i8*, i8** %2, align 8
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i32 @jsmn_parse(i32* %1, i8* %52, i32 %54, i32* null, i32 0)
  %56 = icmp eq i32 %55, 5
  %57 = zext i1 %56 to i32
  %58 = call i32 @check(i32 %57)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  %59 = call i32 @jsmn_init(i32* %1)
  %60 = load i8*, i8** %2, align 8
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = call i32 @jsmn_parse(i32* %1, i8* %60, i32 %62, i32* null, i32 0)
  %64 = icmp eq i32 %63, 5
  %65 = zext i1 %64 to i32
  %66 = call i32 @check(i32 %65)
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  %67 = call i32 @jsmn_init(i32* %1)
  %68 = load i8*, i8** %2, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = call i32 @jsmn_parse(i32* %1, i8* %68, i32 %70, i32* null, i32 0)
  %72 = icmp eq i32 %71, 4
  %73 = zext i1 %72 to i32
  %74 = call i32 @check(i32 %73)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  %75 = call i32 @jsmn_init(i32* %1)
  %76 = load i8*, i8** %2, align 8
  %77 = load i8*, i8** %2, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = call i32 @jsmn_parse(i32* %1, i8* %76, i32 %78, i32* null, i32 0)
  %80 = icmp eq i32 %79, 7
  %81 = zext i1 %80 to i32
  %82 = call i32 @check(i32 %81)
  ret i32 0
}

declare dso_local i32 @jsmn_init(i32*) #1

declare dso_local i32 @check(i32) #1

declare dso_local i32 @jsmn_parse(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
