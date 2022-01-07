; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_swabst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_swabst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unknown conversion character: %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swabst(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %60, %13, %2
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %63

10:                                               ; preds = %6
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %54 [
    i32 48, label %13
    i32 49, label %13
    i32 50, label %13
    i32 51, label %13
    i32 52, label %13
    i32 53, label %13
    i32 54, label %13
    i32 55, label %13
    i32 56, label %13
    i32 57, label %13
    i32 115, label %21
    i32 119, label %21
    i32 104, label %21
    i32 108, label %29
    i32 113, label %37
    i32 98, label %45
  ]

13:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 10
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %3, align 8
  %18 = load i32, i32* %16, align 4
  %19 = sub nsw i32 %18, 48
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %5, align 4
  br label %6

21:                                               ; preds = %10, %10, %10
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32* @swabshort(i32* %26, i32 %27)
  store i32* %28, i32** %4, align 8
  br label %60

29:                                               ; preds = %10
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32* @swablong(i32* %34, i32 %35)
  store i32* %36, i32** %4, align 8
  br label %60

37:                                               ; preds = %10
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32* @swabquad(i32* %42, i32 %43)
  store i32* %44, i32** %4, align 8
  br label %60

45:                                               ; preds = %10
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %5, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %4, align 8
  br label %60

54:                                               ; preds = %10
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = call i32 @done(i32 0)
  br label %60

60:                                               ; preds = %54, %49, %41, %33, %25
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

63:                                               ; preds = %6
  ret void
}

declare dso_local i32* @swabshort(i32*, i32) #1

declare dso_local i32* @swablong(i32*, i32) #1

declare dso_local i32* @swabquad(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
