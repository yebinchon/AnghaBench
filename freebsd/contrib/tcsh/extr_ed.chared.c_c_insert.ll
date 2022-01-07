; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LastChar = common dso_local global i64 0, align 8
@InputLim = common dso_local global i64 0, align 8
@Cursor = common dso_local global i64 0, align 8
@Mark = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_insert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @LastChar, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %4, %6
  %8 = load i64, i64* @InputLim, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %51

11:                                               ; preds = %1
  %12 = load i64, i64* @Cursor, align 8
  %13 = load i64, i64* @LastChar, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i64, i64* @LastChar, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %3, align 8
  br label %18

18:                                               ; preds = %30, %15
  %19 = load i32*, i32** %3, align 8
  %20 = load i64, i64* @Cursor, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = icmp uge i32* %19, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %23
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 -1
  store i32* %32, i32** %3, align 8
  br label %18

33:                                               ; preds = %18
  %34 = load i64, i64* @Mark, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i64, i64* @Mark, align 8
  %38 = load i64, i64* @Cursor, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @Mark, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* @Mark, align 8
  br label %45

45:                                               ; preds = %40, %36, %33
  br label %46

46:                                               ; preds = %45, %11
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @LastChar, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* @LastChar, align 8
  br label %51

51:                                               ; preds = %46, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
