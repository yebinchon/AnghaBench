; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = call i32 (...) @POPUNS()
  store i32 %6, i32* %3, align 4
  %7 = call i8* (...) @POPPTR()
  store i8* %7, i8** %4, align 8
  %8 = call i8* (...) @POPPTR()
  store i8* %8, i8** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %55

12:                                               ; preds = %1
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp uge i8* %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %26, %16
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load i8, i8* %21, align 1
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  store i8 %23, i8* %24, align 1
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %3, align 4
  br label %17

29:                                               ; preds = %17
  br label %54

30:                                               ; preds = %12
  %31 = load i32, i32* %3, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i8*, i8** %4, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %4, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i8*, i8** %5, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %50, %30
  %42 = load i32, i32* %3, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** %5, align 8
  %47 = load i8, i8* %45, align 1
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %4, align 8
  store i8 %47, i8* %48, align 1
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %3, align 4
  br label %41

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %54, %11
  ret void
}

declare dso_local i32 @POPUNS(...) #1

declare dso_local i8* @POPPTR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
