; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_load_ruleset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_load_ruleset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.pf_ruleset = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pf_rule = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.pf_ruleset }

@MAXPATHLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@PF_OPT_NOACTION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"pfctl_load_rulesets: pfctl_ruleset_trans %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PF_RULESET_FILTER = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_load_ruleset(%struct.pfctl* %0, i8* %1, %struct.pf_ruleset* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfctl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pf_ruleset*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pf_rule*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pfctl* %0, %struct.pfctl** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.pf_ruleset* %2, %struct.pf_ruleset** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.pf_ruleset*, %struct.pf_ruleset** %9, align 8
  %19 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %22 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %21, i32 0, i32 2
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i64, i64* @MAXPATHLEN, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %32, %34
  %36 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %37 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @snprintf(i8* %31, i64 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %57

42:                                               ; preds = %5
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i64, i64* @MAXPATHLEN, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %47, %49
  %51 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %52 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @snprintf(i8* %46, i64 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %42, %27
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %113

60:                                               ; preds = %57
  %61 = load %struct.pf_ruleset*, %struct.pf_ruleset** %9, align 8
  %62 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.pf_rule* @TAILQ_FIRST(i32 %69)
  %71 = icmp ne %struct.pf_rule* %70, null
  br i1 %71, label %72, label %102

72:                                               ; preds = %60
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  %75 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %76 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %72
  %84 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %85 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PF_OPT_NOACTION, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load %struct.pf_ruleset*, %struct.pf_ruleset** %9, align 8
  %94 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = call i32 @pfctl_ruleset_trans(%struct.pfctl* %91, i8* %92, %struct.TYPE_8__* %95)
  store i32 %96, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* %13, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %216

101:                                              ; preds = %90, %83
  br label %112

102:                                              ; preds = %60
  %103 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %104 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %102
  br label %112

112:                                              ; preds = %111, %101
  br label %113

113:                                              ; preds = %112, %57
  %114 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %115 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @PF_RULESET_FILTER, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %124 = load %struct.pf_ruleset*, %struct.pf_ruleset** %9, align 8
  %125 = call i32 @pfctl_optimize_ruleset(%struct.pfctl* %123, %struct.pf_ruleset* %124)
  br label %126

126:                                              ; preds = %122, %118, %113
  br label %127

127:                                              ; preds = %188, %126
  %128 = load %struct.pf_ruleset*, %struct.pf_ruleset** %9, align 8
  %129 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.pf_rule* @TAILQ_FIRST(i32 %136)
  store %struct.pf_rule* %137, %struct.pf_rule** %12, align 8
  %138 = icmp ne %struct.pf_rule* %137, null
  br i1 %138, label %139, label %191

139:                                              ; preds = %127
  %140 = load %struct.pf_ruleset*, %struct.pf_ruleset** %9, align 8
  %141 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %140, i32 0, i32 0
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.pf_rule*, %struct.pf_rule** %12, align 8
  %150 = load i32, i32* @entries, align 4
  %151 = call i32 @TAILQ_REMOVE(i32 %148, %struct.pf_rule* %149, i32 %150)
  %152 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = load %struct.pf_rule*, %struct.pf_rule** %12, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @pfctl_load_rule(%struct.pfctl* %152, i8* %153, %struct.pf_rule* %154, i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %139
  br label %216

159:                                              ; preds = %139
  %160 = load %struct.pf_rule*, %struct.pf_rule** %12, align 8
  %161 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %160, i32 0, i32 0
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = icmp ne %struct.TYPE_7__* %162, null
  br i1 %163, label %164, label %178

164:                                              ; preds = %159
  %165 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = load %struct.pf_rule*, %struct.pf_rule** %12, align 8
  %168 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %167, i32 0, i32 0
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  %174 = call i32 @pfctl_load_ruleset(%struct.pfctl* %165, i8* %166, %struct.pf_ruleset* %170, i32 %171, i32 %173)
  store i32 %174, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %164
  br label %216

177:                                              ; preds = %164
  br label %188

178:                                              ; preds = %159
  %179 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %180 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %178
  br label %188

188:                                              ; preds = %187, %177
  %189 = load %struct.pf_rule*, %struct.pf_rule** %12, align 8
  %190 = call i32 @free(%struct.pf_rule* %189)
  br label %127

191:                                              ; preds = %127
  %192 = load i32, i32* %15, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %211

194:                                              ; preds = %191
  %195 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %196 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %194
  %202 = load i32, i32* %11, align 4
  %203 = sub nsw i32 %202, 1
  %204 = load %struct.pfctl*, %struct.pfctl** %7, align 8
  %205 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %208 = and i32 %206, %207
  %209 = call i32 @INDENT(i32 %203, i32 %208)
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %211

211:                                              ; preds = %201, %194, %191
  %212 = load i8*, i8** %8, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  store i8 0, i8* %215, align 1
  store i32 0, i32* %6, align 4
  br label %222

216:                                              ; preds = %176, %158, %98
  %217 = load i8*, i8** %8, align 8
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  store i8 0, i8* %220, align 1
  %221 = load i32, i32* %13, align 4
  store i32 %221, i32* %6, align 4
  br label %222

222:                                              ; preds = %216, %211
  %223 = load i32, i32* %6, align 4
  ret i32 %223
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local %struct.pf_rule* @TAILQ_FIRST(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pfctl_ruleset_trans(%struct.pfctl*, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @pfctl_optimize_ruleset(%struct.pfctl*, %struct.pf_ruleset*) #1

declare dso_local i32 @TAILQ_REMOVE(i32, %struct.pf_rule*, i32) #1

declare dso_local i32 @pfctl_load_rule(%struct.pfctl*, i8*, %struct.pf_rule*, i32) #1

declare dso_local i32 @free(%struct.pf_rule*) #1

declare dso_local i32 @INDENT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
