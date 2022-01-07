; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-gre.c_gre_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-gre.c_gre_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GRE_VERS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"GREv%u\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" ERROR: unknown-version\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gre_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ND_TCHECK2(i32 %11, i32 2)
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %41

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @EXTRACT_16BITS(i32* %17)
  %19 = load i32, i32* @GRE_VERS_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @ND_PRINT(i32* %24)
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %37 [
    i32 0, label %27
    i32 1, label %32
  ]

27:                                               ; preds = %16
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @gre_print_0(i32* %28, i32* %29, i32 %30)
  br label %40

32:                                               ; preds = %16
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @gre_print_1(i32* %33, i32* %34, i32 %35)
  br label %40

37:                                               ; preds = %16
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @ND_PRINT(i32* bitcast ([24 x i8]* @.str.1 to i32*))
  br label %40

40:                                               ; preds = %37, %32, %27
  br label %47

41:                                               ; preds = %15
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @tstr, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @ND_PRINT(i32* %45)
  br label %47

47:                                               ; preds = %41, %40
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @gre_print_0(i32*, i32*, i32) #1

declare dso_local i32 @gre_print_1(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
