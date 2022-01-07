; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_lnumeric.c_numeric_load_locale.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_lnumeric.c_numeric_load_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.xlocale_numeric = type { i32, %struct.lc_numeric_T }
%struct.lc_numeric_T = type { i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"LC_NUMERIC\00", align 1
@LCNUMERIC_SIZE = common dso_local global i32 0, align 4
@_LDP_ERROR = common dso_local global i32 0, align 4
@_LDP_LOADED = common dso_local global i32 0, align 4
@_C_numeric_locale = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlocale_numeric*, i32*, i32*, i8*)* @numeric_load_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numeric_load_locale(%struct.xlocale_numeric* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.xlocale_numeric*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lc_numeric_T*, align 8
  store %struct.xlocale_numeric* %0, %struct.xlocale_numeric** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.xlocale_numeric*, %struct.xlocale_numeric** %5, align 8
  %12 = getelementptr inbounds %struct.xlocale_numeric, %struct.xlocale_numeric* %11, i32 0, i32 1
  store %struct.lc_numeric_T* %12, %struct.lc_numeric_T** %10, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.xlocale_numeric*, %struct.xlocale_numeric** %5, align 8
  %16 = getelementptr inbounds %struct.xlocale_numeric, %struct.xlocale_numeric* %15, i32 0, i32 0
  %17 = load i32, i32* @LCNUMERIC_SIZE, align 4
  %18 = load i32, i32* @LCNUMERIC_SIZE, align 4
  %19 = load %struct.lc_numeric_T*, %struct.lc_numeric_T** %10, align 8
  %20 = bitcast %struct.lc_numeric_T* %19 to i8**
  %21 = call i32 @__part_load_locale(i8* %13, i32* %14, i32* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i8** %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @_LDP_ERROR, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @_LDP_LOADED, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load %struct.lc_numeric_T*, %struct.lc_numeric_T** %10, align 8
  %33 = getelementptr inbounds %struct.lc_numeric_T, %struct.lc_numeric_T* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_C_numeric_locale, i32 0, i32 0), align 8
  %40 = load %struct.lc_numeric_T*, %struct.lc_numeric_T** %10, align 8
  %41 = getelementptr inbounds %struct.lc_numeric_T, %struct.lc_numeric_T* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.lc_numeric_T*, %struct.lc_numeric_T** %10, align 8
  %44 = getelementptr inbounds %struct.lc_numeric_T, %struct.lc_numeric_T* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @__fix_locale_grouping_str(i32 %45)
  %47 = load %struct.lc_numeric_T*, %struct.lc_numeric_T** %10, align 8
  %48 = getelementptr inbounds %struct.lc_numeric_T, %struct.lc_numeric_T* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %27
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @__part_load_locale(i8*, i32*, i32*, i8*, i32, i32, i8**) #1

declare dso_local i32 @__fix_locale_grouping_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
