; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_literal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.tbl_dat = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.roffcol = type { i64 }

@ASCII_NBRSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, %struct.tbl_dat*, %struct.roffcol*)* @tbl_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbl_literal(%struct.termp* %0, %struct.tbl_dat* %1, %struct.roffcol* %2) #0 {
  %4 = alloca %struct.termp*, align 8
  %5 = alloca %struct.tbl_dat*, align 8
  %6 = alloca %struct.roffcol*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %4, align 8
  store %struct.tbl_dat* %1, %struct.tbl_dat** %5, align 8
  store %struct.roffcol* %2, %struct.roffcol** %6, align 8
  %13 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %14 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.termp*, %struct.termp** %4, align 8
  %18 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %19 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @term_strlen(%struct.termp* %17, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.roffcol*, %struct.roffcol** %6, align 8
  %23 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %26 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %31 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %37, %3
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %12, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.termp*, %struct.termp** %4, align 8
  %39 = getelementptr inbounds %struct.termp, %struct.termp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 3
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %10, align 8
  br label %33

51:                                               ; preds = %33
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %56, %57
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i64 [ %58, %55 ], [ 0, %59 ]
  store i64 %61, i64* %9, align 8
  store i64 0, i64* %8, align 8
  %62 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %63 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %92 [
    i32 129, label %67
    i32 130, label %80
    i32 128, label %90
  ]

67:                                               ; preds = %60
  %68 = load %struct.termp*, %struct.termp** %4, align 8
  %69 = call i64 @term_len(%struct.termp* %68, i32 1)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = sub i64 %74, %75
  br label %78

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i64 [ %76, %73 ], [ 0, %77 ]
  store i64 %79, i64* %9, align 8
  br label %93

80:                                               ; preds = %60
  %81 = load i64, i64* %9, align 8
  %82 = icmp ugt i64 2, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %93

84:                                               ; preds = %80
  %85 = load i64, i64* %9, align 8
  %86 = udiv i64 %85, 2
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %9, align 8
  br label %93

90:                                               ; preds = %60
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %93

92:                                               ; preds = %60
  br label %93

93:                                               ; preds = %92, %90, %84, %83, %78
  %94 = load %struct.termp*, %struct.termp** %4, align 8
  %95 = load i32, i32* @ASCII_NBRSP, align 4
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @tbl_fill_char(%struct.termp* %94, i32 %95, i64 %96)
  %98 = load %struct.termp*, %struct.termp** %4, align 8
  %99 = load %struct.tbl_dat*, %struct.tbl_dat** %5, align 8
  %100 = call i32 @tbl_word(%struct.termp* %98, %struct.tbl_dat* %99)
  %101 = load %struct.termp*, %struct.termp** %4, align 8
  %102 = load i32, i32* @ASCII_NBRSP, align 4
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @tbl_fill_char(%struct.termp* %101, i32 %102, i64 %103)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @term_strlen(%struct.termp*, i32) #1

declare dso_local i64 @term_len(%struct.termp*, i32) #1

declare dso_local i32 @tbl_fill_char(%struct.termp*, i32, i64) #1

declare dso_local i32 @tbl_word(%struct.termp*, %struct.tbl_dat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
