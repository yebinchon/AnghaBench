; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32 }
%struct.tbl_dat = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TBL_CELL_BOLD = common dso_local global i32 0, align 4
@TERMFONT_BOLD = common dso_local global i32 0, align 4
@TBL_CELL_ITALIC = common dso_local global i32 0, align 4
@TERMFONT_UNDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, %struct.tbl_dat*)* @tbl_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbl_word(%struct.termp* %0, %struct.tbl_dat* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca %struct.tbl_dat*, align 8
  %5 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store %struct.tbl_dat* %1, %struct.tbl_dat** %4, align 8
  %6 = load %struct.termp*, %struct.termp** %3, align 8
  %7 = getelementptr inbounds %struct.termp, %struct.termp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.tbl_dat*, %struct.tbl_dat** %4, align 8
  %10 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TBL_CELL_BOLD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.termp*, %struct.termp** %3, align 8
  %19 = load i32, i32* @TERMFONT_BOLD, align 4
  %20 = call i32 @term_fontpush(%struct.termp* %18, i32 %19)
  br label %35

21:                                               ; preds = %2
  %22 = load %struct.tbl_dat*, %struct.tbl_dat** %4, align 8
  %23 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TBL_CELL_ITALIC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.termp*, %struct.termp** %3, align 8
  %32 = load i32, i32* @TERMFONT_UNDER, align 4
  %33 = call i32 @term_fontpush(%struct.termp* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %21
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.termp*, %struct.termp** %3, align 8
  %37 = load %struct.tbl_dat*, %struct.tbl_dat** %4, align 8
  %38 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @term_word(%struct.termp* %36, i32 %39)
  %41 = load %struct.termp*, %struct.termp** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @term_fontpopq(%struct.termp* %41, i32 %42)
  ret void
}

declare dso_local i32 @term_fontpush(%struct.termp*, i32) #1

declare dso_local i32 @term_word(%struct.termp*, i32) #1

declare dso_local i32 @term_fontpopq(%struct.termp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
