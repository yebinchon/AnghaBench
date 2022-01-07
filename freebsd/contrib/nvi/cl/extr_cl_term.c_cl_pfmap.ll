; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_term.c_cl_pfmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_term.c_cl_pfmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"kf%d\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"233|This terminal has no %s key\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"function key %d\00", align 1
@SEQ_NOOVERWRITE = common dso_local global i32 0, align 4
@SEQ_SCREEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64, i32*, i64)* @cl_pfmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cl_pfmap(i32* %0, i32 %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [64 x i8], align 16
  %17 = alloca [64 x i32], align 16
  %18 = alloca [20 x i32], align 16
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %22 = load i32*, i32** %10, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = call i64 @STRTOL(i32* %23, i32* null, i32 10)
  %25 = trunc i64 %24 to i32
  %26 = call i32 @snprintf(i8* %21, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %28 = call i8* @tigetstr(i8* %27)
  store i8* %28, i8** %15, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %6
  %31 = load i8*, i8** %15, align 8
  %32 = icmp eq i8* %31, inttoptr (i64 -1 to i8*)
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %15, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %30, %6
  store i8* null, i8** %15, align 8
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i8*, i8** %15, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* @M_ERR, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @msgq_wstr(i32* %42, i32 %43, i32* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %80

46:                                               ; preds = %38
  %47 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %48 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %49 = call i32 @SIZE(i32* %48)
  %50 = call i32 @L(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = call i64 @STRTOL(i32* %52, i32* null, i32 10)
  %54 = trunc i64 %53 to i32
  %55 = call i64 @SPRINTF(i32* %47, i32 %49, i32 %50, i32 %54)
  store i64 %55, i64* %14, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = load i32*, i32** %19, align 8
  %61 = load i64, i64* %20, align 8
  %62 = call i32 @CHAR2INT(i32* %56, i8* %57, i64 %59, i32* %60, i64 %61)
  %63 = getelementptr inbounds [20 x i32], [20 x i32]* %18, i64 0, i64 0
  %64 = load i32*, i32** %19, align 8
  %65 = load i64, i64* %20, align 8
  %66 = call i32 @MEMCPY(i32* %63, i32* %64, i64 %65)
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %69 = load i64, i64* %14, align 8
  %70 = getelementptr inbounds [20 x i32], [20 x i32]* %18, i64 0, i64 0
  %71 = load i8*, i8** %15, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = load i32*, i32** %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @SEQ_NOOVERWRITE, align 4
  %77 = load i32, i32* @SEQ_SCREEN, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @seq_set(i32* %67, i32* %68, i64 %69, i32* %70, i64 %72, i32* %73, i64 %74, i32 %75, i32 %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %46, %41
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @STRTOL(i32*, i32*, i32) #1

declare dso_local i8* @tigetstr(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @msgq_wstr(i32*, i32, i32*, i8*) #1

declare dso_local i64 @SPRINTF(i32*, i32, i32, i32) #1

declare dso_local i32 @SIZE(i32*) #1

declare dso_local i32 @L(i8*) #1

declare dso_local i32 @CHAR2INT(i32*, i8*, i64, i32*, i64) #1

declare dso_local i32 @MEMCPY(i32*, i32*, i64) #1

declare dso_local i32 @seq_set(i32*, i32*, i64, i32*, i64, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
