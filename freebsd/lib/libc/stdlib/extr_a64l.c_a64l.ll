; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_a64l.c_a64l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_a64l.c_a64l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASLASH = common dso_local global i8 0, align 1
@A0 = common dso_local global i32 0, align 4
@AA = common dso_local global i32 0, align 4
@Aa = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @a64l(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %79, %1
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 6
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i1 [ false, %7 ], [ %14, %12 ]
  br i1 %16, label %17, label %84

17:                                               ; preds = %15
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* @ASLASH, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sle i32 %20, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i8*, i8** %2, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @ASLASH, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %27, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %70

32:                                               ; preds = %17
  %33 = load i8*, i8** %2, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i32, i32* @A0, align 4
  %37 = add nsw i32 %36, 9
  %38 = icmp sle i32 %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i8*, i8** %2, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = load i32, i32* @A0, align 4
  %44 = sub nsw i32 %42, %43
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %4, align 4
  br label %69

46:                                               ; preds = %32
  %47 = load i8*, i8** %2, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = load i32, i32* @AA, align 4
  %51 = add nsw i32 %50, 25
  %52 = icmp sle i32 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i8*, i8** %2, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i32, i32* @AA, align 4
  %58 = sub nsw i32 %56, %57
  %59 = add nsw i32 %58, 12
  store i32 %59, i32* %4, align 4
  br label %68

60:                                               ; preds = %46
  %61 = load i8*, i8** %2, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @Aa, align 1
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %63, %65
  %67 = add nsw i32 %66, 38
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %60, %53
  br label %69

69:                                               ; preds = %68, %39
  br label %70

70:                                               ; preds = %69, %24
  %71 = load i32, i32* %4, align 4
  %72 = load i64, i64* %3, align 8
  %73 = trunc i64 %72 to i32
  %74 = shl i32 %71, %73
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i64, i64* %3, align 8
  %78 = add nsw i64 %77, 6
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  %82 = load i8*, i8** %2, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %2, align 8
  br label %7

84:                                               ; preds = %15
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  ret i64 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
