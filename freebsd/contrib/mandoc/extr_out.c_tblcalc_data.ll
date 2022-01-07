; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_out.c_tblcalc_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_out.c_tblcalc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rofftbl = type { i64 (i32, i32)*, i32 }
%struct.roffcol = type { i64 }
%struct.tbl_opts = type { i32 }
%struct.tbl_dat = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rofftbl*, %struct.roffcol*, %struct.tbl_opts*, %struct.tbl_dat*, i64)* @tblcalc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tblcalc_data(%struct.rofftbl* %0, %struct.roffcol* %1, %struct.tbl_opts* %2, %struct.tbl_dat* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.rofftbl*, align 8
  %8 = alloca %struct.roffcol*, align 8
  %9 = alloca %struct.tbl_opts*, align 8
  %10 = alloca %struct.tbl_dat*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.rofftbl* %0, %struct.rofftbl** %7, align 8
  store %struct.roffcol* %1, %struct.roffcol** %8, align 8
  store %struct.tbl_opts* %2, %struct.tbl_opts** %9, align 8
  store %struct.tbl_dat* %3, %struct.tbl_dat** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.tbl_dat*, %struct.tbl_dat** %10, align 8
  %14 = getelementptr inbounds %struct.tbl_dat, %struct.tbl_dat* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %53 [
    i32 132, label %18
    i32 134, label %18
    i32 130, label %40
    i32 135, label %40
    i32 131, label %40
    i32 128, label %40
    i32 129, label %46
    i32 133, label %52
  ]

18:                                               ; preds = %5, %5
  %19 = load %struct.rofftbl*, %struct.rofftbl** %7, align 8
  %20 = getelementptr inbounds %struct.rofftbl, %struct.rofftbl* %19, i32 0, i32 0
  %21 = load i64 (i32, i32)*, i64 (i32, i32)** %20, align 8
  %22 = load %struct.rofftbl*, %struct.rofftbl** %7, align 8
  %23 = getelementptr inbounds %struct.rofftbl, %struct.rofftbl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 %21(i32 1, i32 %24)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %27 = icmp ne %struct.roffcol* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %30 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %37 = getelementptr inbounds %struct.roffcol, %struct.roffcol* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %28, %18
  %39 = load i64, i64* %12, align 8
  store i64 %39, i64* %6, align 8
  br label %55

40:                                               ; preds = %5, %5, %5, %5
  %41 = load %struct.rofftbl*, %struct.rofftbl** %7, align 8
  %42 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %43 = load %struct.tbl_dat*, %struct.tbl_dat** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @tblcalc_literal(%struct.rofftbl* %41, %struct.roffcol* %42, %struct.tbl_dat* %43, i64 %44)
  store i64 %45, i64* %6, align 8
  br label %55

46:                                               ; preds = %5
  %47 = load %struct.rofftbl*, %struct.rofftbl** %7, align 8
  %48 = load %struct.roffcol*, %struct.roffcol** %8, align 8
  %49 = load %struct.tbl_opts*, %struct.tbl_opts** %9, align 8
  %50 = load %struct.tbl_dat*, %struct.tbl_dat** %10, align 8
  %51 = call i64 @tblcalc_number(%struct.rofftbl* %47, %struct.roffcol* %48, %struct.tbl_opts* %49, %struct.tbl_dat* %50)
  store i64 %51, i64* %6, align 8
  br label %55

52:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %55

53:                                               ; preds = %5
  %54 = call i32 (...) @abort() #3
  unreachable

55:                                               ; preds = %52, %46, %40, %38
  %56 = load i64, i64* %6, align 8
  ret i64 %56
}

declare dso_local i64 @tblcalc_literal(%struct.rofftbl*, %struct.roffcol*, %struct.tbl_dat*, i64) #1

declare dso_local i64 @tblcalc_number(%struct.rofftbl*, %struct.roffcol*, %struct.tbl_opts*, %struct.tbl_dat*) #1

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
