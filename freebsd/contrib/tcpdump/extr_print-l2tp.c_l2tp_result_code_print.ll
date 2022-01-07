; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-l2tp.c_l2tp_result_code_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-l2tp.c_l2tp_result_code_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"AVP too short\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" AVP too short\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"/%u\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @l2tp_result_code_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2tp_result_code_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  store i32* %8, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str to i32*))
  br label %55

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @EXTRACT_16BITS(i32* %16)
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32*
  %20 = call i32 @ND_PRINT(i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 2
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %55

28:                                               ; preds = %14
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.2 to i32*))
  br label %55

34:                                               ; preds = %28
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @EXTRACT_16BITS(i32* %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  %40 = call i32 @ND_PRINT(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 2
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %55

48:                                               ; preds = %34
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.4 to i32*))
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @print_string(i32* %51, i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %47, %31, %27, %11
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @print_string(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
