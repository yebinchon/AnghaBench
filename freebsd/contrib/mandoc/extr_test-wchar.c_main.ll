; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_test-wchar.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_test-wchar.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"setlocale(LC_ALL, \22\22) failed\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@UTF8_LOCALE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"setlocale(LC_CTYPE, \22%s\22) failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"wcwidth(L' ') returned %d\0A\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"bad putwchar return value\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @LC_ALL, align 4
  %5 = call i32* @setlocale(i32 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  store i32 1, i32* %1, align 4
  br label %39

10:                                               ; preds = %0
  %11 = load i32, i32* @LC_CTYPE, align 4
  %12 = load i8*, i8** @UTF8_LOCALE, align 8
  %13 = call i32* @setlocale(i32 %11, i8* %12)
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** @UTF8_LOCALE, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  store i32 1, i32* %1, align 4
  br label %39

19:                                               ; preds = %10
  %20 = call i32 @wcwidth(i32 32)
  store i32 %20, i32* %3, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  store i32 1, i32* %1, align 4
  br label %39

26:                                               ; preds = %19
  %27 = load i32, i32* @STDERR_FILENO, align 4
  %28 = load i32, i32* @STDOUT_FILENO, align 4
  %29 = call i32 @dup2(i32 %27, i32 %28)
  store i32 42, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @putwchar(i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  store i32 1, i32* %1, align 4
  br label %39

38:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %38, %35, %22, %15, %7
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @wcwidth(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i64 @putwchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
