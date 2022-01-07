; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_parseln.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_parseln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@ROFFT_EQN = common dso_local global i64 0, align 8
@MDOC_NEWLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"nS\00", align 1
@MDOC_SYNOPSIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdoc_parseln(%struct.roff_man* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.roff_man*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %10 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ROFFT_EQN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %19 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %17, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16, %4
  %25 = load i32, i32* @MDOC_NEWLINE, align 4
  %26 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %27 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %16
  %31 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %32 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @roff_getreg(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* @MDOC_SYNOPSIS, align 4
  %38 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %39 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %49

42:                                               ; preds = %30
  %43 = load i32, i32* @MDOC_SYNOPSIS, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %46 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %51 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @roff_getcontrol(i32 %52, i8* %53, i32* %8)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @mdoc_pmacro(%struct.roff_man* %57, i32 %58, i8* %59, i32 %60)
  br label %68

62:                                               ; preds = %49
  %63 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @mdoc_ptext(%struct.roff_man* %63, i32 %64, i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i32 [ %61, %56 ], [ %67, %62 ]
  ret i32 %69
}

declare dso_local i64 @roff_getreg(i32, i8*) #1

declare dso_local i64 @roff_getcontrol(i32, i8*, i32*) #1

declare dso_local i32 @mdoc_pmacro(%struct.roff_man*, i32, i8*, i32) #1

declare dso_local i32 @mdoc_ptext(%struct.roff_man*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
