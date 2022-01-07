; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dvmrp.c_dvmrp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dvmrp.c_dvmrp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c" Probe\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" Report\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" Ask-neighbors(old)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c" Neighbors(old)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" Ask-neighbors2\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" Neighbors2\00", align 1
@target_level = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c" Prune\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" Graft\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" Graft-ACK\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" [type %d]\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"[|dvmrp]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvmrp_print(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp uge i32* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %155

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ND_TCHECK(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 8
  store i32* %26, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 8
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %145 [
    i32 130, label %30
    i32 128, label %47
    i32 136, label %64
    i32 132, label %67
    i32 135, label %78
    i32 131, label %81
    i32 129, label %118
    i32 134, label %127
    i32 133, label %136
  ]

30:                                               ; preds = %17
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([7 x i8]* @.str to %struct.TYPE_11__*))
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @print_probe(%struct.TYPE_11__* %38, i32* %39, i32* %40, i32 %41)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %152

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %30
  br label %151

47:                                               ; preds = %17
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([8 x i8]* @.str.1 to %struct.TYPE_11__*))
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @print_report(%struct.TYPE_11__* %55, i32* %56, i32* %57, i32 %58)
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %152

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %47
  br label %151

64:                                               ; preds = %17
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([20 x i8]* @.str.2 to %struct.TYPE_11__*))
  br label %151

67:                                               ; preds = %17
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([16 x i8]* @.str.3 to %struct.TYPE_11__*))
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @print_neighbors(%struct.TYPE_11__* %70, i32* %71, i32* %72, i32 %73)
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %152

77:                                               ; preds = %67
  br label %151

78:                                               ; preds = %17
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([16 x i8]* @.str.4 to %struct.TYPE_11__*))
  br label %151

81:                                               ; preds = %17
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([12 x i8]* @.str.5 to %struct.TYPE_11__*))
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 -4
  store i32* %85, i32** %5, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ND_TCHECK2(i32 %88, i32 4)
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 24
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 16
  %98 = or i32 %93, %97
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 8
  %103 = or i32 %98, %102
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %103, %106
  store i32 %107, i32* @target_level, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32* %109, i32** %5, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @print_neighbors2(%struct.TYPE_11__* %110, i32* %111, i32* %112, i32 %113)
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %81
  br label %152

117:                                              ; preds = %81
  br label %151

118:                                              ; preds = %17
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([7 x i8]* @.str.6 to %struct.TYPE_11__*))
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @print_prune(%struct.TYPE_11__* %121, i32* %122)
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %152

126:                                              ; preds = %118
  br label %151

127:                                              ; preds = %17
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %129 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([7 x i8]* @.str.7 to %struct.TYPE_11__*))
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @print_graft(%struct.TYPE_11__* %130, i32* %131)
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %152

135:                                              ; preds = %127
  br label %151

136:                                              ; preds = %17
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([11 x i8]* @.str.8 to %struct.TYPE_11__*))
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @print_graft_ack(%struct.TYPE_11__* %139, i32* %140)
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %152

144:                                              ; preds = %136
  br label %151

145:                                              ; preds = %17
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to %struct.TYPE_11__*
  %150 = call i32 @ND_PRINT(%struct.TYPE_11__* %149)
  br label %151

151:                                              ; preds = %145, %144, %135, %126, %117, %78, %77, %64, %63, %46
  br label %155

152:                                              ; preds = %143, %134, %125, %116, %76, %61, %44
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([9 x i8]* @.str.10 to %struct.TYPE_11__*))
  br label %155

155:                                              ; preds = %152, %151, %16
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_11__*) #1

declare dso_local i32 @print_probe(%struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @print_report(%struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @print_neighbors(%struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @print_neighbors2(%struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @print_prune(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @print_graft(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @print_graft_ack(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
