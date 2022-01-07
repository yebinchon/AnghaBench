; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_symbol.c_pmcstat_symbol_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_symbol.c_pmcstat_symbol_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_symbol = type { i8*, i8*, i32* }
%struct.pmcstat_image = type { i32, i32* }

@pmcstat_symbol_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pmcstat_symbol* @pmcstat_symbol_search(%struct.pmcstat_image* %0, i8* %1) #0 {
  %3 = alloca %struct.pmcstat_symbol*, align 8
  %4 = alloca %struct.pmcstat_image*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pmcstat_symbol, align 8
  store %struct.pmcstat_image* %0, %struct.pmcstat_image** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pmcstat_image*, %struct.pmcstat_image** %4, align 8
  %8 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.pmcstat_symbol* null, %struct.pmcstat_symbol** %3, align 8
  br label %28

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %6, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %6, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr i8, i8* %16, i64 1
  %18 = getelementptr inbounds %struct.pmcstat_symbol, %struct.pmcstat_symbol* %6, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = bitcast %struct.pmcstat_symbol* %6 to i8*
  %20 = load %struct.pmcstat_image*, %struct.pmcstat_image** %4, align 8
  %21 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.pmcstat_image*, %struct.pmcstat_image** %4, align 8
  %24 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @pmcstat_symbol_compare, align 4
  %27 = call %struct.pmcstat_symbol* @bsearch(i8* %19, i32* %22, i32 %25, i32 24, i32 %26)
  store %struct.pmcstat_symbol* %27, %struct.pmcstat_symbol** %3, align 8
  br label %28

28:                                               ; preds = %12, %11
  %29 = load %struct.pmcstat_symbol*, %struct.pmcstat_symbol** %3, align 8
  ret %struct.pmcstat_symbol* %29
}

declare dso_local %struct.pmcstat_symbol* @bsearch(i8*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
