; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtable.c_AcpiDmLineHeader2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtable.c_AcpiDmLineHeader2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_DoTemplates = common dso_local global i64 0, align 8
@AslGbl_VerboseTemplates = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"[%.4d] %30s %3d : \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%36s % 3d : \00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"[%3.3Xh %4.4d %3d] %24s %3d : \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"[%3.3Xh %4.4d   ] %24s %3d : \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmLineHeader2(i64 %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* @AslGbl_DoTemplates, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %4
  %12 = load i32, i32* @AslGbl_VerboseTemplates, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 (i8*, i8*, i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20, i64 %21)
  br label %28

23:                                               ; preds = %14
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 (i8*, i8*, i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %26)
  br label %28

28:                                               ; preds = %23, %17
  br label %50

29:                                               ; preds = %11, %4
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i64, i64* %5, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i64, i64* %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 (i8*, i8*, i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* %36, i64 %37, i8* %38, i64 %39)
  br label %49

41:                                               ; preds = %29
  %42 = load i64, i64* %5, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i64, i64* %5, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 (i8*, i8*, i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %43, i8* %45, i8* %46, i64 %47)
  br label %49

49:                                               ; preds = %41, %32
  br label %50

50:                                               ; preds = %49, %28
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
