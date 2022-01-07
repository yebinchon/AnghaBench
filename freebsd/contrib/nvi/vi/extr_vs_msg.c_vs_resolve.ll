; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_msg.c_vs_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_msg.c_vs_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32 (%struct.TYPE_27__*, i64, i64)*, i32, i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*, i32)*, i32, i32 (%struct.TYPE_27__*)*, i32 (%struct.TYPE_27__*, i64*, i64*)*, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { %struct.TYPE_28__*, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }

@G_BELLSCHED = common dso_local global i32 0, align 4
@SC_STATUS = common dso_local global i32 0, align 4
@MSTAT_TRUNCATE = common dso_local global i32 0, align 4
@SC_SCR_VI = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4
@VIP_CUR_INVALID = common dso_local global i32 0, align 4
@SCROLL_W = common dso_local global i32 0, align 4
@VIP_S_MODELINE = common dso_local global i32 0, align 4
@E_REPAINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vs_resolve(%struct.TYPE_27__* %0, %struct.TYPE_27__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_29__, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 7
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %9, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %19 = call %struct.TYPE_26__* @VIP(%struct.TYPE_27__* %18)
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %11, align 8
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %21 = icmp eq %struct.TYPE_27__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_27__* %23, %struct.TYPE_27__** %6, align 8
  br label %24

24:                                               ; preds = %22, %3
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 6
  %27 = load i32 (%struct.TYPE_27__*, i64*, i64*)*, i32 (%struct.TYPE_27__*, i64*, i64*)** %26, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %29 = call i32 %27(%struct.TYPE_27__* %28, i64* %12, i64* %13)
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %31 = load i32, i32* @G_BELLSCHED, align 4
  %32 = call i64 @F_ISSET(%struct.TYPE_27__* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %36 = load i32, i32* @G_BELLSCHED, align 4
  %37 = call i32 @F_CLR(%struct.TYPE_27__* %35, i32 %36)
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 5
  %40 = load i32 (%struct.TYPE_27__*)*, i32 (%struct.TYPE_27__*)** %39, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %42 = call i32 %40(%struct.TYPE_27__* %41)
  br label %43

43:                                               ; preds = %34, %24
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %45 = load i32, i32* @SC_STATUS, align 4
  %46 = call i64 @F_ISSET(%struct.TYPE_27__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %50 = load i32, i32* @SC_STATUS, align 4
  %51 = call i32 @F_CLR(%struct.TYPE_27__* %49, i32 %50)
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MSTAT_TRUNCATE, align 4
  %57 = call i32 @msgq_status(%struct.TYPE_27__* %52, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %48, %43
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %60 = call i32 @mod_rpt(%struct.TYPE_27__* %59)
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @SLIST_EMPTY(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %113, label %66

66:                                               ; preds = %58
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %68 = load i32, i32* @SC_SCR_VI, align 4
  %69 = call i64 @F_ISSET(%struct.TYPE_27__* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %73 = call i64 @vs_refresh(%struct.TYPE_27__* %72, i32 1)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %4, align 4
  br label %179

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %83, %76
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.TYPE_28__* @SLIST_FIRST(i32 %80)
  store %struct.TYPE_28__* %81, %struct.TYPE_28__** %10, align 8
  %82 = icmp ne %struct.TYPE_28__* %81, null
  br i1 %82, label %83, label %109

83:                                               ; preds = %77
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 3
  %86 = load i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*, i32)** %85, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %92, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 %86(%struct.TYPE_27__* %87, i32 %90, %struct.TYPE_28__* %93, i32 %96)
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @q, align 4
  %102 = call i32 @SLIST_REMOVE_HEAD(i32 %100, i32 %101)
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %104, align 8
  %106 = call i32 @free(%struct.TYPE_28__* %105)
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %108 = call i32 @free(%struct.TYPE_28__* %107)
  br label %77

109:                                              ; preds = %77
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %111 = load i32, i32* @VIP_CUR_INVALID, align 4
  %112 = call i32 @F_SET(%struct.TYPE_26__* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %58
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %130 [
    i32 0, label %117
    i32 1, label %118
  ]

117:                                              ; preds = %113
  store i32 0, i32* %14, align 4
  br label %159

118:                                              ; preds = %113
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %123 = load i32, i32* @SCROLL_W, align 4
  %124 = call i32 @vs_scroll(%struct.TYPE_27__* %122, i32* null, i32 %123)
  br label %129

125:                                              ; preds = %118
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %127 = load i32, i32* @VIP_S_MODELINE, align 4
  %128 = call i32 @F_SET(%struct.TYPE_26__* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %121
  store i32 0, i32* %14, align 4
  br label %159

130:                                              ; preds = %113
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %132 = load i32, i32* @SCROLL_W, align 4
  %133 = call i32 @vs_scroll(%struct.TYPE_27__* %131, i32* null, i32 %132)
  %134 = load i32, i32* @E_REPAINT, align 4
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 2
  store i32 %134, i32* %135, align 4
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sge i32 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %130
  br label %152

144:                                              ; preds = %130
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %147, %150
  br label %152

152:                                              ; preds = %144, %143
  %153 = phi i32 [ 1, %143 ], [ %151, %144 ]
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 0
  store i32 %153, i32* %154, align 4
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 1
  store i32 %157, i32* %158, align 4
  store i32 1, i32* %14, align 4
  br label %159

159:                                              ; preds = %152, %129, %117
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  store i32 0, i32* %161, align 4
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 2
  store i32 0, i32* %163, align 4
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 1
  store i32 0, i32* %165, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %159
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %170 = call i32 @vs_repaint(%struct.TYPE_27__* %169, %struct.TYPE_29__* %8)
  br label %171

171:                                              ; preds = %168, %159
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 1
  %174 = load i32 (%struct.TYPE_27__*, i64, i64)*, i32 (%struct.TYPE_27__*, i64, i64)** %173, align 8
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* %13, align 8
  %178 = call i32 %174(%struct.TYPE_27__* %175, i64 %176, i64 %177)
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %171, %75
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.TYPE_26__* @VIP(%struct.TYPE_27__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @msgq_status(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @mod_rpt(%struct.TYPE_27__*) #1

declare dso_local i32 @SLIST_EMPTY(i32) #1

declare dso_local i64 @vs_refresh(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_28__* @SLIST_FIRST(i32) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_28__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @vs_scroll(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i32 @vs_repaint(%struct.TYPE_27__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
