; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_difftm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_difftm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i64 }

@TM_YEAR_ORIGIN = common dso_local global i32 0, align 4
@DAY = common dso_local global i32 0, align 4
@HOUR = common dso_local global i32 0, align 4
@MINUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tm*, %struct.tm*)* @difftm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @difftm(%struct.tm* %0, %struct.tm* %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %8 = load %struct.tm*, %struct.tm** %3, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TM_YEAR_ORIGIN, align 4
  %12 = sub nsw i32 %11, 1
  %13 = add nsw i32 %10, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.tm*, %struct.tm** %4, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TM_YEAR_ORIGIN, align 4
  %18 = sub nsw i32 %17, 1
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.tm*, %struct.tm** %3, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tm*, %struct.tm** %4, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 2
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 2
  %31 = sub nsw i32 %28, %30
  %32 = add nsw i32 %26, %31
  %33 = load i32, i32* %5, align 4
  %34 = sdiv i32 %33, 100
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %35, 100
  %37 = sub nsw i32 %34, %36
  %38 = sub nsw i32 %32, %37
  %39 = load i32, i32* %5, align 4
  %40 = sdiv i32 %39, 100
  %41 = ashr i32 %40, 2
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %42, 100
  %44 = ashr i32 %43, 2
  %45 = sub nsw i32 %41, %44
  %46 = add nsw i32 %38, %45
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = mul nsw i64 %51, 365
  %53 = add nsw i64 %47, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DAY, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load %struct.tm*, %struct.tm** %3, align 8
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.tm*, %struct.tm** %4, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %60, %63
  %65 = load i32, i32* @HOUR, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %57, %66
  %68 = load %struct.tm*, %struct.tm** %3, align 8
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tm*, %struct.tm** %4, align 8
  %72 = getelementptr inbounds %struct.tm, %struct.tm* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  %75 = load i32, i32* @MINUTE, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %67, %76
  %78 = sext i32 %77 to i64
  %79 = load %struct.tm*, %struct.tm** %3, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.tm*, %struct.tm** %4, align 8
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = add nsw i64 %78, %85
  ret i64 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
