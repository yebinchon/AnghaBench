; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlTick.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlTick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%.*s not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ficlTick(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @vmGetWord(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @vmGetDict(i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32* @dictLookup(i32 %9, i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @SI_COUNT(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @SI_PTR(i32 %19)
  %21 = call i32 @vmThrowErr(i32* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @PUSHPTR(i32* %23)
  ret void
}

declare dso_local i32 @vmGetWord(i32*) #1

declare dso_local i32* @dictLookup(i32, i32) #1

declare dso_local i32 @vmGetDict(i32*) #1

declare dso_local i32 @SI_COUNT(i32) #1

declare dso_local i32 @vmThrowErr(i32*, i8*, i32, i32) #1

declare dso_local i32 @SI_PTR(i32) #1

declare dso_local i32 @PUSHPTR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
