; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32 }
%struct.tbl_opts = type { i32 }
%struct.tbl_cell = type { i32 }
%struct.tbl_dat = type { i32 }
%struct.roffcol = type { i32 }

@BHORIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, %struct.tbl_opts*, %struct.tbl_cell*, %struct.tbl_dat*, %struct.roffcol*)* @tbl_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbl_data(%struct.termp* %0, %struct.tbl_opts* %1, %struct.tbl_cell* %2, %struct.tbl_dat* %3, %struct.roffcol* %4) #0 {
  %6 = alloca %struct.termp*, align 8
  %7 = alloca %struct.tbl_opts*, align 8
  %8 = alloca %struct.tbl_cell*, align 8
  %9 = alloca %struct.tbl_dat*, align 8
  %10 = alloca %struct.roffcol*, align 8
  store %struct.termp* %0, %struct.termp** %6, align 8
  store %struct.tbl_opts* %1, %struct.tbl_opts** %7, align 8
  store %struct.tbl_cell* %2, %struct.tbl_cell** %8, align 8
  store %struct.tbl_dat* %3, %struct.tbl_dat** %9, align 8
  store %struct.roffcol* %4, %struct.roffcol** %10, align 8
  %11 = load %struct.tbl_cell*, %struct.tbl_cell** %8, align 8
  %12 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %29 [
    i32 138, label %14
    i32 140, label %21
  ]

14:                                               ; preds = %5
  %15 = load %struct.termp*, %struct.termp** %6, align 8
  %16 = load i32, i32* @BHORIZ, align 4
  %17 = load %struct.roffcol*, %struct.roffcol** %10, align 8
  %18 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @tbl_fill_border(%struct.termp* %15, i32 %16, i32 %19)
  br label %73

21:                                               ; preds = %5
  %22 = load %struct.termp*, %struct.termp** %6, align 8
  %23 = load i32, i32* @BHORIZ, align 4
  %24 = mul nsw i32 %23, 2
  %25 = load %struct.roffcol*, %struct.roffcol** %10, align 8
  %26 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @tbl_fill_border(%struct.termp* %22, i32 %24, i32 %27)
  br label %73

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %32 = icmp eq %struct.tbl_dat* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %73

34:                                               ; preds = %30
  %35 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %36 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %54 [
    i32 128, label %38
    i32 131, label %39
    i32 129, label %39
    i32 130, label %46
    i32 132, label %46
  ]

38:                                               ; preds = %34
  br label %73

39:                                               ; preds = %34, %34
  %40 = load %struct.termp*, %struct.termp** %6, align 8
  %41 = load i32, i32* @BHORIZ, align 4
  %42 = load %struct.roffcol*, %struct.roffcol** %10, align 8
  %43 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @tbl_fill_border(%struct.termp* %40, i32 %41, i32 %44)
  br label %73

46:                                               ; preds = %34, %34
  %47 = load %struct.termp*, %struct.termp** %6, align 8
  %48 = load i32, i32* @BHORIZ, align 4
  %49 = mul nsw i32 %48, 2
  %50 = load %struct.roffcol*, %struct.roffcol** %10, align 8
  %51 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @tbl_fill_border(%struct.termp* %47, i32 %49, i32 %52)
  br label %73

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.tbl_cell*, %struct.tbl_cell** %8, align 8
  %57 = getelementptr inbounds %struct.tbl_cell, %struct.tbl_cell* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %71 [
    i32 136, label %59
    i32 141, label %59
    i32 137, label %59
    i32 134, label %59
    i32 135, label %64
    i32 139, label %70
    i32 133, label %70
  ]

59:                                               ; preds = %55, %55, %55, %55
  %60 = load %struct.termp*, %struct.termp** %6, align 8
  %61 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %62 = load %struct.roffcol*, %struct.roffcol** %10, align 8
  %63 = call i32 @tbl_literal(%struct.termp* %60, %struct.tbl_dat* %61, %struct.roffcol* %62)
  br label %73

64:                                               ; preds = %55
  %65 = load %struct.termp*, %struct.termp** %6, align 8
  %66 = load %struct.tbl_opts*, %struct.tbl_opts** %7, align 8
  %67 = load %struct.tbl_dat*, %struct.tbl_dat** %9, align 8
  %68 = load %struct.roffcol*, %struct.roffcol** %10, align 8
  %69 = call i32 @tbl_number(%struct.termp* %65, %struct.tbl_opts* %66, %struct.tbl_dat* %67, %struct.roffcol* %68)
  br label %73

70:                                               ; preds = %55, %55
  br label %73

71:                                               ; preds = %55
  %72 = call i32 (...) @abort() #3
  unreachable

73:                                               ; preds = %14, %21, %33, %38, %39, %46, %70, %64, %59
  ret void
}

declare dso_local i32 @tbl_fill_border(%struct.termp*, i32, i32) #1

declare dso_local i32 @tbl_literal(%struct.termp*, %struct.tbl_dat*, %struct.roffcol*) #1

declare dso_local i32 @tbl_number(%struct.termp*, %struct.tbl_opts*, %struct.tbl_dat*, %struct.roffcol*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
