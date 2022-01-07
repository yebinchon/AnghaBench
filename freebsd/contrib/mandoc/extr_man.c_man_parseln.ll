; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man.c_man_parseln.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man.c_man_parseln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@ROFFT_EQN = common dso_local global i64 0, align 8
@MAN_NEWLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @man_parseln(%struct.roff_man* %0, i32 %1, i8* %2, i32 %3) #0 {
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
  %25 = load i32, i32* @MAN_NEWLINE, align 4
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
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @roff_getcontrol(i32 %33, i8* %34, i32* %8)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @man_pmacro(%struct.roff_man* %38, i32 %39, i8* %40, i32 %41)
  br label %49

43:                                               ; preds = %30
  %44 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @man_ptext(%struct.roff_man* %44, i32 %45, i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i32 [ %42, %37 ], [ %48, %43 ]
  ret i32 %50
}

declare dso_local i64 @roff_getcontrol(i32, i8*, i32*) #1

declare dso_local i32 @man_pmacro(%struct.roff_man*, i32, i8*, i32) #1

declare dso_local i32 @man_ptext(%struct.roff_man*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
