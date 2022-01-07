; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos_policy.c___is_num_in_range_arr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_qos_policy.c___is_num_in_range_arr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i32, i64)* @__is_num_in_range_arr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__is_num_in_range_arr(i64** %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64** %0, i64*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub i32 %11, 1
  store i32 %12, i32* %9, align 4
  %13 = load i64**, i64*** %5, align 8
  %14 = icmp ne i64** %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %111

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %104, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %109

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = load i64**, i64*** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64*, i64** %27, i64 %29
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %26, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %25
  %36 = load i64, i64* %7, align 8
  %37 = load i64**, i64*** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64*, i64** %37, i64 %39
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %36, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35, %25
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %111

47:                                               ; preds = %35
  %48 = load i64, i64* %7, align 8
  %49 = load i64**, i64*** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64*, i64** %49, i64 %51
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %48, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %47
  %58 = load i64, i64* %7, align 8
  %59 = load i64**, i64*** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64*, i64** %59, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %58, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %57, %47
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %4, align 4
  br label %111

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 %72, %73
  %75 = add i32 %74, 1
  %76 = udiv i32 %75, 2
  %77 = add i32 %71, %76
  store i32 %77, i32* %10, align 4
  %78 = load i64, i64* %7, align 8
  %79 = load i64**, i64*** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64*, i64** %79, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %78, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %9, align 4
  br label %104

89:                                               ; preds = %70
  %90 = load i64, i64* %7, align 8
  %91 = load i64**, i64*** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64*, i64** %91, i64 %93
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %90, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %8, align 4
  br label %103

101:                                              ; preds = %89
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %4, align 4
  br label %111

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %87
  %105 = load i32, i32* %8, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %9, align 4
  br label %21

109:                                              ; preds = %21
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %101, %67, %45, %18
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
