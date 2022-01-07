; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_set_tp_times.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_set_tp_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@autr_permit_small_holddown = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"orig_ttl is %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"rrsig_exp_interval is %d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"query_interval: %d, retry_time: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trust_anchor*, i32, i32, i32*)* @set_tp_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tp_times(%struct.trust_anchor* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.trust_anchor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.trust_anchor* %0, %struct.trust_anchor** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %13 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %18 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  store i32 1296000, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sdiv i32 %22, 2
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %4
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 2
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %35, 2
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* @autr_permit_small_holddown, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 3600
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %45 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 3600, i32* %47, align 4
  br label %54

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %51 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %43
  br label %61

55:                                               ; preds = %37
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %58 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %54
  store i32 86400, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sdiv i32 %62, 10
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = sdiv i32 %67, 10
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %6, align 4
  %71 = sdiv i32 %70, 10
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = sdiv i32 %75, 10
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* @autr_permit_small_holddown, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 3600
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %85 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 3600, i32* %87, align 4
  br label %94

88:                                               ; preds = %80
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %91 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %83
  br label %101

95:                                               ; preds = %77
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %98 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %94
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %104 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %102, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %112 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %110, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %109, %101
  %118 = load i32*, i32** %8, align 8
  store i32 1, i32* %118, align 4
  %119 = load i32, i32* @VERB_ALGO, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (i32, i8*, i32, ...) @verbose(i32 %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @VERB_ALGO, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 (i32, i8*, i32, ...) @verbose(i32 %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @VERB_ALGO, align 4
  %126 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %127 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %132 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i8*, i32, ...) @verbose(i32 %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %135)
  br label %137

137:                                              ; preds = %117, %109
  ret void
}

declare dso_local i32 @verbose(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
