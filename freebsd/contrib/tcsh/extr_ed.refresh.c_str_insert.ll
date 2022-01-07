; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_str_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_str_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*, i32)* @str_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @str_insert(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %84

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %18, %19
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %47, %29
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = icmp uge i8* %41, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %11, align 8
  %50 = load i8, i8* %48, align 1
  %51 = load i8*, i8** %12, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 -1
  store i8* %52, i8** %12, align 8
  store i8 %50, i8* %51, align 1
  br label %40

53:                                               ; preds = %40
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %53, %26
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %11, align 8
  br label %63

63:                                               ; preds = %81, %58
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = icmp ult i8* %64, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 0
  br label %73

73:                                               ; preds = %70, %63
  %74 = phi i1 [ false, %63 ], [ %72, %70 ]
  br i1 %74, label %75, label %84

75:                                               ; preds = %73
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %9, align 8
  %78 = load i8, i8* %76, align 1
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  store i8 %78, i8* %79, align 1
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %10, align 4
  br label %63

84:                                               ; preds = %15, %73
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
