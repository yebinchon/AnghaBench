; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_ag_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_ag_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag_info = type { i32, i32, i32, i64, i64, i64, i64, %struct.ag_info* }

@ag_finest = common dso_local global %struct.ag_info* null, align 8
@AGS_SUPPRESS = common dso_local global i32 0, align 4
@AGS_FINE_GATE = common dso_local global i32 0, align 4
@AGS_CORS_GATE = common dso_local global i32 0, align 4
@AGS_REDUN0 = common dso_local global i32 0, align 4
@AGS_REDUN1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ag_flush(i32 %0, i32 %1, void (%struct.ag_info*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.ag_info*)*, align 8
  %7 = alloca %struct.ag_info*, align 8
  %8 = alloca %struct.ag_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store void (%struct.ag_info*)* %2, void (%struct.ag_info*)** %6, align 8
  %10 = load %struct.ag_info*, %struct.ag_info** @ag_finest, align 8
  store %struct.ag_info* %10, %struct.ag_info** %7, align 8
  br label %11

11:                                               ; preds = %168, %3
  %12 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %13 = icmp ne %struct.ag_info* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %16 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %17, %18
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i1 [ false, %11 ], [ %19, %14 ]
  br i1 %21, label %22, label %170

22:                                               ; preds = %20
  %23 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %24 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %23, i32 0, i32 7
  %25 = load %struct.ag_info*, %struct.ag_info** %24, align 8
  store %struct.ag_info* %25, %struct.ag_info** %8, align 8
  %26 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %27 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %168

35:                                               ; preds = %22
  %36 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %37 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @AGS_SUPPRESS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %44 = load void (%struct.ag_info*)*, void (%struct.ag_info*)** %6, align 8
  %45 = call i32 @ag_out(%struct.ag_info* %43, void (%struct.ag_info*)* %44)
  br label %162

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %157, %46
  %48 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %49 = icmp eq %struct.ag_info* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %52 = load void (%struct.ag_info*)*, void (%struct.ag_info*)** %6, align 8
  %53 = call i32 @ag_out(%struct.ag_info* %51, void (%struct.ag_info*)* %52)
  br label %161

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %57 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %55, %58
  %60 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %61 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %156

64:                                               ; preds = %54
  %65 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %66 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %69 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %64
  %73 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %74 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @AGS_FINE_GATE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %72
  %80 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %81 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @AGS_CORS_GATE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %88 = load void (%struct.ag_info*)*, void (%struct.ag_info*)** %6, align 8
  %89 = call i32 @ag_out(%struct.ag_info* %87, void (%struct.ag_info*)* %88)
  br label %161

90:                                               ; preds = %79, %72, %64
  %91 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %92 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %95 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp sle i64 %93, %96
  br i1 %97, label %98, label %155

98:                                               ; preds = %90
  %99 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %100 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @AG_IS_REDUN(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %98
  %105 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %106 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %109 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %110, 1
  %112 = icmp eq i32 %107, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %104
  %114 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %115 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32, i32* @AGS_REDUN0, align 4
  %121 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %122 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %131

125:                                              ; preds = %113
  %126 = load i32, i32* @AGS_REDUN1, align 4
  %127 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %128 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %125, %119
  br label %132

132:                                              ; preds = %131, %104, %98
  %133 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %134 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %137 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %135, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %142 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %141, i32 0, i32 5
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %140, %132
  %144 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %145 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %148 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %146, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %153 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %152, i32 0, i32 6
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %151, %143
  br label %161

155:                                              ; preds = %90
  br label %156

156:                                              ; preds = %155, %54
  br label %157

157:                                              ; preds = %156
  %158 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  %159 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %158, i32 0, i32 7
  %160 = load %struct.ag_info*, %struct.ag_info** %159, align 8
  store %struct.ag_info* %160, %struct.ag_info** %8, align 8
  br label %47

161:                                              ; preds = %154, %86, %50
  br label %162

162:                                              ; preds = %161, %42
  %163 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %164 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %163, i32 0, i32 7
  %165 = load %struct.ag_info*, %struct.ag_info** %164, align 8
  store %struct.ag_info* %165, %struct.ag_info** %8, align 8
  %166 = load %struct.ag_info*, %struct.ag_info** %7, align 8
  %167 = call i32 @ag_del(%struct.ag_info* %166)
  br label %168

168:                                              ; preds = %162, %34
  %169 = load %struct.ag_info*, %struct.ag_info** %8, align 8
  store %struct.ag_info* %169, %struct.ag_info** %7, align 8
  br label %11

170:                                              ; preds = %20
  %171 = call i32 (...) @CHECK_AG()
  ret void
}

declare dso_local i32 @ag_out(%struct.ag_info*, void (%struct.ag_info*)*) #1

declare dso_local i64 @AG_IS_REDUN(i32) #1

declare dso_local i32 @ag_del(%struct.ag_info*) #1

declare dso_local i32 @CHECK_AG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
