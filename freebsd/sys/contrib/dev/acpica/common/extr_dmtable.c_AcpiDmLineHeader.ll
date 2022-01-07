; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtable.c_AcpiDmLineHeader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtable.c_AcpiDmLineHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AslGbl_DoTemplates = common dso_local global i64 0, align 8
@AslGbl_VerboseTemplates = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"[%.4d] %34s : \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%41s : \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%41s   \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"[%3.3Xh %4.4d% 4d] %28s : \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%44s : \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%44s   \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmLineHeader(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %10

10:                                               ; preds = %9, %3
  %11 = load i64, i64* @AslGbl_DoTemplates, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load i32, i32* @AslGbl_VerboseTemplates, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i8*, i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %22)
  br label %35

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i8*, i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %19
  br label %58

36:                                               ; preds = %13, %10
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i64, i64* %4, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i8*, i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %41, i64 %42, i64 %43, i8* %44)
  br label %57

46:                                               ; preds = %36
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (i8*, i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  br label %56

53:                                               ; preds = %46
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 (i8*, i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %39
  br label %58

58:                                               ; preds = %57, %35
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
