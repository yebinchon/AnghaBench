; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_commentLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_commentLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @commentLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commentLine(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @vmGetInBuf(i32* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @vmGetInBufEnd(i32* %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %5, align 1
  br label %12

12:                                               ; preds = %26, %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i8, i8* %5, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 13
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8, i8* %5, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 10
  br label %24

24:                                               ; preds = %20, %16, %12
  %25 = phi i1 [ false, %16 ], [ false, %12 ], [ %23, %20 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %5, align 1
  br label %12

30:                                               ; preds = %24
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = icmp ne i8* %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load i8, i8* %5, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8*, i8** %3, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %3, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %47
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %3, align 8
  br label %60

60:                                               ; preds = %57, %52, %40, %34
  br label %61

61:                                               ; preds = %60, %30
  %62 = load i32*, i32** %2, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @vmUpdateTib(i32* %62, i8* %63)
  ret void
}

declare dso_local i8* @vmGetInBuf(i32*) #1

declare dso_local i8* @vmGetInBufEnd(i32*) #1

declare dso_local i32 @vmUpdateTib(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
