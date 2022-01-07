; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-gre.c_gre_sre_asn_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-gre.c_gre_sre_asn_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c", badoffset=%u\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c", badlength=%u\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c", badoff/len=%u/%u\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %s%x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32)* @gre_sre_asn_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_sre_asn_print(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %10, align 8
  store i32* %13, i32** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @ND_PRINT(i32* %21)
  store i32 1, i32* %6, align 4
  br label %83

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @ND_PRINT(i32* %31)
  store i32 1, i32* %6, align 4
  br label %83

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @ND_PRINT(i32* %42)
  store i32 1, i32* %6, align 4
  br label %83

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %58, %44
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ND_TTEST2(i32 %50, i32 2)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %83

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %83

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp eq i64 %65, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @EXTRACT_16BITS(i32* %71)
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i32*
  %75 = call i32 @ND_PRINT(i32* %74)
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32* %77, i32** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %78, 2
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, 2
  store i32 %81, i32* %9, align 4
  br label %45

82:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %57, %53, %37, %27, %17
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TTEST2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
