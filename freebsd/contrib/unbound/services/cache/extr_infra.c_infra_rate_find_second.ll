; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_rate_find_second.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_rate_find_second.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_data = type { i64*, i32* }

@RATE_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64)* @infra_rate_find_second to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @infra_rate_find_second(i8* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rate_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rate_data*
  store %struct.rate_data* %10, %struct.rate_data** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @RATE_WINDOW, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load %struct.rate_data*, %struct.rate_data** %6, align 8
  %17 = getelementptr inbounds %struct.rate_data, %struct.rate_data* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load %struct.rate_data*, %struct.rate_data** %6, align 8
  %27 = getelementptr inbounds %struct.rate_data, %struct.rate_data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %3, align 8
  br label %83

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %11

36:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %60, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @RATE_WINDOW, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  %42 = load %struct.rate_data*, %struct.rate_data** %6, align 8
  %43 = getelementptr inbounds %struct.rate_data, %struct.rate_data* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.rate_data*, %struct.rate_data** %6, align 8
  %50 = getelementptr inbounds %struct.rate_data, %struct.rate_data* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %48, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %41
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %37

63:                                               ; preds = %37
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.rate_data*, %struct.rate_data** %6, align 8
  %66 = getelementptr inbounds %struct.rate_data, %struct.rate_data* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %64, i64* %70, align 8
  %71 = load %struct.rate_data*, %struct.rate_data** %6, align 8
  %72 = getelementptr inbounds %struct.rate_data, %struct.rate_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 0, i32* %76, align 4
  %77 = load %struct.rate_data*, %struct.rate_data** %6, align 8
  %78 = getelementptr inbounds %struct.rate_data, %struct.rate_data* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32* %82, i32** %3, align 8
  br label %83

83:                                               ; preds = %63, %25
  %84 = load i32*, i32** %3, align 8
  ret i32* %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
