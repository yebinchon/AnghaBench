; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_load_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_load_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32, i32*, i32*, i32*, i32, i64, i32, i64, i32, i64, i64* }

@loadopt = common dso_local global i32 0, align 4
@PFCTL_FLAG_OPTION = common dso_local global i32 0, align 4
@PF_LIMIT_MAX = common dso_local global i32 0, align 4
@PF_OPT_MERGE = common dso_local global i32 0, align 4
@PF_LIMIT_STATES = common dso_local global i64 0, align 8
@PFTM_ADAPTIVE_START = common dso_local global i64 0, align 8
@PFTM_ADAPTIVE_END = common dso_local global i64 0, align 8
@PFTM_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_load_options(%struct.pfctl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pfctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pfctl* %0, %struct.pfctl** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @loadopt, align 4
  %7 = load i32, i32* @PFCTL_FLAG_OPTION, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %215

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %47, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PF_LIMIT_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %18 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PF_OPT_MERGE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %25 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %24, i32 0, i32 10
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %47

33:                                               ; preds = %23, %16
  %34 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %37 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @pfctl_load_limit(%struct.pfctl* %34, i32 %35, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %33
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %12

50:                                               ; preds = %12
  %51 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %52 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %51, i32 0, i32 10
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @PF_LIMIT_STATES, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %111

58:                                               ; preds = %50
  %59 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %60 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @PFTM_ADAPTIVE_START, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %111, label %66

66:                                               ; preds = %58
  %67 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %68 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @PFTM_ADAPTIVE_END, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %111, label %74

74:                                               ; preds = %66
  %75 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %76 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @PF_LIMIT_STATES, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 10
  %82 = mul nsw i32 %81, 6
  %83 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %84 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @PFTM_ADAPTIVE_START, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %89 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @PFTM_ADAPTIVE_START, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 1, i32* %92, align 4
  %93 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %94 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @PF_LIMIT_STATES, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %98, 10
  %100 = mul nsw i32 %99, 12
  %101 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %102 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @PFTM_ADAPTIVE_END, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 %100, i32* %105, align 4
  %106 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %107 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @PFTM_ADAPTIVE_END, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %74, %66, %58, %50
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %147, %111
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @PFTM_MAX, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %150

116:                                              ; preds = %112
  %117 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %118 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @PF_OPT_MERGE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %125 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %123
  br label %147

133:                                              ; preds = %123, %116
  %134 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %137 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @pfctl_load_timeout(%struct.pfctl* %134, i32 %135, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  store i32 1, i32* %5, align 4
  br label %146

146:                                              ; preds = %145, %133
  br label %147

147:                                              ; preds = %146, %132
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %112

150:                                              ; preds = %112
  %151 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %152 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @PF_OPT_MERGE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %159 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %158, i32 0, i32 9
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157, %150
  %163 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %164 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %165 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @pfctl_load_debug(%struct.pfctl* %163, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  store i32 1, i32* %5, align 4
  br label %170

170:                                              ; preds = %169, %162
  br label %171

171:                                              ; preds = %170, %157
  %172 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %173 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @PF_OPT_MERGE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %171
  %179 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %180 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %178, %171
  %184 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %185 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %186 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @pfctl_load_logif(%struct.pfctl* %184, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  store i32 1, i32* %5, align 4
  br label %191

191:                                              ; preds = %190, %183
  br label %192

192:                                              ; preds = %191, %178
  %193 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %194 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @PF_OPT_MERGE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %192
  %200 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %201 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %199, %192
  %205 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %206 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %207 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @pfctl_load_hostid(%struct.pfctl* %205, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  store i32 1, i32* %5, align 4
  br label %212

212:                                              ; preds = %211, %204
  br label %213

213:                                              ; preds = %212, %199
  %214 = load i32, i32* %5, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %213, %10
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local i64 @pfctl_load_limit(%struct.pfctl*, i32, i32) #1

declare dso_local i64 @pfctl_load_timeout(%struct.pfctl*, i32, i32) #1

declare dso_local i64 @pfctl_load_debug(%struct.pfctl*, i32) #1

declare dso_local i64 @pfctl_load_logif(%struct.pfctl*, i32) #1

declare dso_local i64 @pfctl_load_hostid(%struct.pfctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
