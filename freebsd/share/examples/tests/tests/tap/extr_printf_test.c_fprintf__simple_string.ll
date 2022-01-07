; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/tests/tests/tap/extr_printf_test.c_fprintf__simple_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/tests/tests/tap/extr_printf_test.c_fprintf__simple_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"This is a message\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"fprintf failed to write to file\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"fread failed\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Written and read data differ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fprintf__simple_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fprintf__simple_string() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [128 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = call i32* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @fprintf(i32* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %7)
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = call i32 @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 @skip(i32 2)
  br label %41

13:                                               ; preds = %0
  %14 = call i32 (...) @pass()
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @rewind(i32* %15)
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %18 = load i32*, i32** %1, align 8
  %19 = call i64 @fread(i8* %17, i32 1, i32 127, i32* %18)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = call i32 @fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %26 = call i32 @skip(i32 1)
  br label %41

27:                                               ; preds = %13
  %28 = call i32 (...) @pass()
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @fclose(i32* %31)
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = call i32 @fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %41

39:                                               ; preds = %27
  %40 = call i32 (...) @pass()
  br label %41

41:                                               ; preds = %10, %24, %39, %37
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @skip(i32) #1

declare dso_local i32 @pass(...) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
