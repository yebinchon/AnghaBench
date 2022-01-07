; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ofw/libofw/extr_ofw_copy.c_ofw_readin.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ofw/libofw/extr_ofw_copy.c_ofw_readin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@READIN_BUF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"ofw_readin: buf malloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ofw_readin: map error\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ofw_readin: read failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ofw_readin(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i64, i64* @READIN_BUF, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @min(i64 %15, i64 %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i8* @malloc(i64 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %73

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @ofw_mapmem(i64 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @free(i8* %31)
  store i64 0, i64* %4, align 8
  br label %73

33:                                               ; preds = %24
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %60, %33
  %36 = load i64, i64* %9, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %35
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @min(i64 %39, i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @read(i32 %42, i8* %43, i64 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load i64, i64* %12, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %48
  br label %67

54:                                               ; preds = %38
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %13, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @bcopy(i8* %55, i8* %57, i64 %58)
  br label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %13, align 8
  br label %35

67:                                               ; preds = %53, %35
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = sub i64 %70, %71
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %67, %29, %22
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @ofw_mapmem(i64, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
