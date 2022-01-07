; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_learn.c_bgscan_learn_get_probe_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_learn.c_bgscan_learn_get_probe_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgscan_learn_data = type { i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bgscan learn: Probe new freq %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.bgscan_learn_data*, i32*, i64)* @bgscan_learn_get_probe_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bgscan_learn_get_probe_freq(%struct.bgscan_learn_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bgscan_learn_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.bgscan_learn_data* %0, %struct.bgscan_learn_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %11 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %4, align 8
  br label %105

16:                                               ; preds = %3
  %17 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %18 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %97, %16
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %23 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @in_array(i32* %21, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %84, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %34 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %44 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %46 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %49 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %31
  %56 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %57 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %56, i32 0, i32 1
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %31
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 2
  %62 = call i32* @os_realloc_array(i32* %59, i64 %61, i32 4)
  store i32* %62, i32** %9, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32*, i32** %6, align 8
  store i32* %66, i32** %4, align 8
  br label %105

67:                                               ; preds = %58
  %68 = load i32*, i32** %9, align 8
  store i32* %68, i32** %6, align 8
  %69 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %70 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %75, i32* %78, align 4
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %7, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 0, i32* %83, align 4
  br label %103

84:                                               ; preds = %20
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  %87 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %88 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %84
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %5, align 8
  %100 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %20, label %103

103:                                              ; preds = %97, %67
  %104 = load i32*, i32** %6, align 8
  store i32* %104, i32** %4, align 8
  br label %105

105:                                              ; preds = %103, %65, %14
  %106 = load i32*, i32** %4, align 8
  ret i32* %106
}

declare dso_local i32 @in_array(i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32* @os_realloc_array(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
