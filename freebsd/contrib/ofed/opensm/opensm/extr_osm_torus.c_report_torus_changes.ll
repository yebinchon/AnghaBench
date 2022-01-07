; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_report_torus_changes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_report_torus_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32*** }
%struct.TYPE_2__ = type { i32 }

@OSM_LOG_ROUTING = common dso_local global i32 0, align 4
@OSM_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Torus x radix was %d now %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Torus y radix was %d now %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Torus z radix was %d now %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Too many torus changes; stopping reporting early\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.torus*, %struct.torus*)* @report_torus_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_torus_changes(%struct.torus* %0, %struct.torus* %1) #0 {
  %3 = alloca %struct.torus*, align 8
  %4 = alloca %struct.torus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %3, align 8
  store %struct.torus* %1, %struct.torus** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.torus*, %struct.torus** %3, align 8
  %14 = getelementptr inbounds %struct.torus, %struct.torus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.torus*, %struct.torus** %3, align 8
  %17 = getelementptr inbounds %struct.torus, %struct.torus* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.torus*, %struct.torus** %3, align 8
  %20 = getelementptr inbounds %struct.torus, %struct.torus* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.torus*, %struct.torus** %3, align 8
  %23 = getelementptr inbounds %struct.torus, %struct.torus* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.torus*, %struct.torus** %3, align 8
  %26 = getelementptr inbounds %struct.torus, %struct.torus* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* @OSM_LOG_ROUTING, align 4
  %30 = call i64 @OSM_LOG_IS_ACTIVE_V2(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.torus*, %struct.torus** %3, align 8
  %34 = call i32 @dump_torus(%struct.torus* %33)
  br label %35

35:                                               ; preds = %32, %2
  %36 = load %struct.torus*, %struct.torus** %4, align 8
  %37 = icmp ne %struct.torus* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %205

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.torus*, %struct.torus** %4, align 8
  %42 = getelementptr inbounds %struct.torus, %struct.torus* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load %struct.torus*, %struct.torus** %3, align 8
  %49 = getelementptr inbounds %struct.torus, %struct.torus* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* @OSM_LOG_INFO, align 4
  %53 = load %struct.torus*, %struct.torus** %4, align 8
  %54 = getelementptr inbounds %struct.torus, %struct.torus* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.torus*, %struct.torus** %3, align 8
  %57 = getelementptr inbounds %struct.torus, %struct.torus* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %51, i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.torus*, %struct.torus** %4, align 8
  %62 = getelementptr inbounds %struct.torus, %struct.torus* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ugt i32 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %45
  %66 = load %struct.torus*, %struct.torus** %4, align 8
  %67 = getelementptr inbounds %struct.torus, %struct.torus* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %45
  br label %70

70:                                               ; preds = %69, %39
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.torus*, %struct.torus** %4, align 8
  %73 = getelementptr inbounds %struct.torus, %struct.torus* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load %struct.torus*, %struct.torus** %3, align 8
  %80 = getelementptr inbounds %struct.torus, %struct.torus* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* @OSM_LOG_INFO, align 4
  %84 = load %struct.torus*, %struct.torus** %4, align 8
  %85 = getelementptr inbounds %struct.torus, %struct.torus* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.torus*, %struct.torus** %3, align 8
  %88 = getelementptr inbounds %struct.torus, %struct.torus* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %82, i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.torus*, %struct.torus** %4, align 8
  %93 = getelementptr inbounds %struct.torus, %struct.torus* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ugt i32 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %76
  %97 = load %struct.torus*, %struct.torus** %4, align 8
  %98 = getelementptr inbounds %struct.torus, %struct.torus* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %96, %76
  br label %101

101:                                              ; preds = %100, %70
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.torus*, %struct.torus** %4, align 8
  %104 = getelementptr inbounds %struct.torus, %struct.torus* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %101
  %108 = load i32, i32* %5, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %5, align 4
  %110 = load %struct.torus*, %struct.torus** %3, align 8
  %111 = getelementptr inbounds %struct.torus, %struct.torus* %110, i32 0, i32 4
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* @OSM_LOG_INFO, align 4
  %115 = load %struct.torus*, %struct.torus** %4, align 8
  %116 = getelementptr inbounds %struct.torus, %struct.torus* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.torus*, %struct.torus** %3, align 8
  %119 = getelementptr inbounds %struct.torus, %struct.torus* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %113, i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.torus*, %struct.torus** %4, align 8
  %124 = getelementptr inbounds %struct.torus, %struct.torus* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ugt i32 %122, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %107
  %128 = load %struct.torus*, %struct.torus** %4, align 8
  %129 = getelementptr inbounds %struct.torus, %struct.torus* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %127, %107
  br label %132

132:                                              ; preds = %131, %101
  store i32 0, i32* %8, align 4
  br label %133

133:                                              ; preds = %202, %132
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %205

137:                                              ; preds = %133
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %198, %137
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %201

142:                                              ; preds = %138
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %194, %142
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %147, label %197

147:                                              ; preds = %143
  %148 = load %struct.torus*, %struct.torus** %3, align 8
  %149 = getelementptr inbounds %struct.torus, %struct.torus* %148, i32 0, i32 5
  %150 = load i32***, i32**** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32**, i32*** %150, i64 %152
  %154 = load i32**, i32*** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.torus*, %struct.torus** %4, align 8
  %164 = getelementptr inbounds %struct.torus, %struct.torus* %163, i32 0, i32 5
  %165 = load i32***, i32**** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32**, i32*** %165, i64 %167
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @tsw_changes(i32 %162, i32 %177)
  %179 = load i32, i32* %5, align 4
  %180 = zext i32 %179 to i64
  %181 = add nsw i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp ugt i32 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %147
  %187 = load %struct.torus*, %struct.torus** %3, align 8
  %188 = getelementptr inbounds %struct.torus, %struct.torus* %187, i32 0, i32 4
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32, i32* @OSM_LOG_INFO, align 4
  %192 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %190, i32 %191, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %205

193:                                              ; preds = %147
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %6, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %143

197:                                              ; preds = %143
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %7, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %138

201:                                              ; preds = %138
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %8, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %133

205:                                              ; preds = %38, %186, %133
  ret void
}

declare dso_local i64 @OSM_LOG_IS_ACTIVE_V2(i32*, i32) #1

declare dso_local i32 @dump_torus(%struct.torus*) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local i64 @tsw_changes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
