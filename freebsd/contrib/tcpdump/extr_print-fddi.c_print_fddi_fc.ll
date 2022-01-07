; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fddi.c_print_fddi_fc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fddi.c_print_fddi_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"void \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"nrt \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rt \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"info \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"nsa \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"beacon \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"claim \00", align 1
@FDDIFC_CLFF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"mac%1x \00", align 1
@FDDIFC_ZZZZ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"smt%1x \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"async%1x \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"sync%1x \00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"imp_async%1x \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"imp_sync%1x \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_fddi_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_fddi_fc(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %27 [
    i32 128, label %6
    i32 133, label %9
    i32 132, label %12
    i32 130, label %15
    i32 129, label %18
    i32 135, label %21
    i32 134, label %24
  ]

6:                                                ; preds = %2
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str to i32*))
  br label %86

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.1 to i32*))
  br label %86

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  br label %86

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.3 to i32*))
  br label %86

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.4 to i32*))
  br label %86

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.5 to i32*))
  br label %86

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.6 to i32*))
  br label %86

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @FDDIFC_CLFF, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %79 [
    i32 136, label %31
    i32 131, label %39
    i32 138, label %47
    i32 137, label %55
    i32 140, label %63
    i32 139, label %71
  ]

31:                                               ; preds = %27
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @FDDIFC_ZZZZ, align 4
  %35 = and i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @ND_PRINT(i32* %37)
  br label %85

39:                                               ; preds = %27
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @FDDIFC_ZZZZ, align 4
  %43 = and i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @ND_PRINT(i32* %45)
  br label %85

47:                                               ; preds = %27
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @FDDIFC_ZZZZ, align 4
  %51 = and i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @ND_PRINT(i32* %53)
  br label %85

55:                                               ; preds = %27
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @FDDIFC_ZZZZ, align 4
  %59 = and i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i32*
  %62 = call i32 @ND_PRINT(i32* %61)
  br label %85

63:                                               ; preds = %27
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @FDDIFC_ZZZZ, align 4
  %67 = and i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i32*
  %70 = call i32 @ND_PRINT(i32* %69)
  br label %85

71:                                               ; preds = %27
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @FDDIFC_ZZZZ, align 4
  %75 = and i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i32*
  %78 = call i32 @ND_PRINT(i32* %77)
  br label %85

79:                                               ; preds = %27
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i32*
  %84 = call i32 @ND_PRINT(i32* %83)
  br label %85

85:                                               ; preds = %79, %71, %63, %55, %47, %39, %31
  br label %86

86:                                               ; preds = %85, %24, %21, %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
