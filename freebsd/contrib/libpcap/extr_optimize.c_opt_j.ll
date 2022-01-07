; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_opt_j.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_opt_j.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32* }
%struct.edge = type { i32*, %struct.block*, i32 }
%struct.block = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.block* }

@BITS_PER_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.edge*)* @opt_j to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opt_j(%struct.TYPE_5__* %0, %struct.edge* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.edge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.block*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.edge* %1, %struct.edge** %4, align 8
  %9 = load %struct.edge*, %struct.edge** %4, align 8
  %10 = getelementptr inbounds %struct.edge, %struct.edge* %9, i32 0, i32 1
  %11 = load %struct.block*, %struct.block** %10, align 8
  %12 = call i64 @JT(%struct.block* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %116

15:                                               ; preds = %2
  %16 = load %struct.edge*, %struct.edge** %4, align 8
  %17 = getelementptr inbounds %struct.edge, %struct.edge* %16, i32 0, i32 1
  %18 = load %struct.block*, %struct.block** %17, align 8
  %19 = call i64 @JT(%struct.block* %18)
  %20 = load %struct.edge*, %struct.edge** %4, align 8
  %21 = getelementptr inbounds %struct.edge, %struct.edge* %20, i32 0, i32 1
  %22 = load %struct.block*, %struct.block** %21, align 8
  %23 = call i64 @JF(%struct.block* %22)
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %15
  %26 = load %struct.edge*, %struct.edge** %4, align 8
  %27 = getelementptr inbounds %struct.edge, %struct.edge* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.edge*, %struct.edge** %4, align 8
  %30 = getelementptr inbounds %struct.edge, %struct.edge* %29, i32 0, i32 1
  %31 = load %struct.block*, %struct.block** %30, align 8
  %32 = getelementptr inbounds %struct.block, %struct.block* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.block*, %struct.block** %33, align 8
  %35 = call i32 @use_conflict(i32 %28, %struct.block* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %25
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.edge*, %struct.edge** %4, align 8
  %41 = getelementptr inbounds %struct.edge, %struct.edge* %40, i32 0, i32 1
  %42 = load %struct.block*, %struct.block** %41, align 8
  %43 = call i64 @JT(%struct.block* %42)
  %44 = inttoptr i64 %43 to %struct.block*
  %45 = load %struct.edge*, %struct.edge** %4, align 8
  %46 = getelementptr inbounds %struct.edge, %struct.edge* %45, i32 0, i32 1
  store %struct.block* %44, %struct.block** %46, align 8
  br label %47

47:                                               ; preds = %37, %25
  br label %48

48:                                               ; preds = %47, %15
  br label %49

49:                                               ; preds = %109, %48
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %113, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %116

56:                                               ; preds = %50
  %57 = load %struct.edge*, %struct.edge** %4, align 8
  %58 = getelementptr inbounds %struct.edge, %struct.edge* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %111, %56
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %112

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @lowest_set_bit(i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = shl i32 1, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @BITS_PER_WORD, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load %struct.edge*, %struct.edge** %4, align 8
  %81 = getelementptr inbounds %struct.edge, %struct.edge* %80, i32 0, i32 1
  %82 = load %struct.block*, %struct.block** %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.block* @fold_edge(%struct.block* %82, i32 %89)
  store %struct.block* %90, %struct.block** %7, align 8
  %91 = load %struct.block*, %struct.block** %7, align 8
  %92 = icmp ne %struct.block* %91, null
  br i1 %92, label %93, label %111

93:                                               ; preds = %67
  %94 = load %struct.edge*, %struct.edge** %4, align 8
  %95 = getelementptr inbounds %struct.edge, %struct.edge* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.block*, %struct.block** %7, align 8
  %98 = call i32 @use_conflict(i32 %96, %struct.block* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %93
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.block*, %struct.block** %7, align 8
  %104 = load %struct.edge*, %struct.edge** %4, align 8
  %105 = getelementptr inbounds %struct.edge, %struct.edge* %104, i32 0, i32 1
  store %struct.block* %103, %struct.block** %105, align 8
  %106 = load %struct.block*, %struct.block** %7, align 8
  %107 = call i64 @JT(%struct.block* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %49

110:                                              ; preds = %100
  br label %116

111:                                              ; preds = %93, %67
  br label %64

112:                                              ; preds = %64
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %50

116:                                              ; preds = %14, %110, %50
  ret void
}

declare dso_local i64 @JT(%struct.block*) #1

declare dso_local i64 @JF(%struct.block*) #1

declare dso_local i32 @use_conflict(i32, %struct.block*) #1

declare dso_local i32 @lowest_set_bit(i32) #1

declare dso_local %struct.block* @fold_edge(%struct.block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
