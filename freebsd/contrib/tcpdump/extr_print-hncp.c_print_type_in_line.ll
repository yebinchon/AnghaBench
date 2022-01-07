; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-hncp.c_print_type_in_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-hncp.c_print_type_in_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@type_values = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"Easter Egg\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" (x%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32*)* @print_type_in_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_type_in_line(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %5
  %15 = load i32*, i32** %10, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i32*, i32** %10, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str to i32*))
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %32, %22
  %27 = load i32, i32* %11, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %11, align 4
  br label %26

35:                                               ; preds = %26
  br label %39

36:                                               ; preds = %18
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  br label %39

39:                                               ; preds = %36, %35
  br label %43

40:                                               ; preds = %14
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str.3 to i32*))
  br label %43

43:                                               ; preds = %40, %39
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @type_values, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @tok2str(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @ND_PRINT(i32* %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @ND_PRINT(i32* %57)
  br label %59

59:                                               ; preds = %53, %43
  br label %60

60:                                               ; preds = %59, %5
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
