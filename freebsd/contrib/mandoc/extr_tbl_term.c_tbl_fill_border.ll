; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_fill_border.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl_term.c_tbl_fill_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32 }

@borders_locale = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"\\[u%04x]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i32, i64)* @tbl_fill_border to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tbl_fill_border(%struct.termp* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.termp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [12 x i8], align 1
  store %struct.termp* %0, %struct.termp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** @borders_locale, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = icmp sgt i32 %12, 127
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snprintf(i8* %15, i32 12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.termp*, %struct.termp** %4, align 8
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @tbl_fill_string(%struct.termp* %18, i8* %19, i64 %20)
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.termp*, %struct.termp** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @tbl_fill_char(%struct.termp* %23, i32 %24, i64 %25)
  br label %27

27:                                               ; preds = %22, %14
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @tbl_fill_string(%struct.termp*, i8*, i64) #1

declare dso_local i32 @tbl_fill_char(%struct.termp*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
