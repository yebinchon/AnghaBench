; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_objects_arrays.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_objects_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"[10}\00", align 1
@JSMN_ERROR_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"[10]\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"{\22a\22: 1]\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"{\22a\22: 1}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_objects_arrays() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i32], align 16
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = call i32 @jsmn_init(i32* %2)
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %10 = call i32 @jsmn_parse(i32* %2, i8* %6, i32 %8, i32* %9, i32 10)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @check(i32 %14)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %16 = call i32 @jsmn_init(i32* %2)
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %21 = call i32 @jsmn_parse(i32* %2, i8* %17, i32 %19, i32* %20, i32 10)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @check(i32 %24)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %26 = call i32 @jsmn_init(i32* %2)
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %31 = call i32 @jsmn_parse(i32* %2, i8* %27, i32 %29, i32* %30, i32 10)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @check(i32 %35)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %37 = call i32 @jsmn_init(i32* %2)
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %42 = call i32 @jsmn_parse(i32* %2, i8* %38, i32 %40, i32* %41, i32 10)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = icmp sge i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @check(i32 %45)
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
