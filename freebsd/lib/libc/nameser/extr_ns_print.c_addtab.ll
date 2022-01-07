; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_print.c_addtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_print.c_addtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i8**, i64*)* @addtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addtab(i64 %0, i64 %1, i32 %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i64*, i64** %11, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i8**, i8*** %10, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub i64 %23, 1
  %25 = icmp uge i64 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21, %5
  %27 = load i8**, i8*** %10, align 8
  %28 = load i64*, i64** %11, align 8
  %29 = call i64 @addstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i8** %27, i64* %28)
  %30 = call i32 @T(i64 %29)
  store i32 1, i32* %9, align 4
  br label %56

31:                                               ; preds = %21
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %32, %33
  %35 = sub i64 %34, 1
  %36 = udiv i64 %35, 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %52, %31
  %39 = load i32, i32* %14, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i8**, i8*** %10, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = call i64 @addstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i8** %42, i64* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i64, i64* %12, align 8
  %48 = load i64*, i64** %11, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8**, i8*** %10, align 8
  store i8* %49, i8** %50, align 8
  store i32 -1, i32* %6, align 4
  br label %58

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %14, align 4
  br label %38

55:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %46
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @T(i64) #1

declare dso_local i64 @addstr(i8*, i32, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
