; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_query_for_targets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_query_for_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i8**, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iter_qstate = type { i64, i64*, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.delegpt_ns* }
%struct.delegpt_ns = type { i32, i32, i32, i32, i32, %struct.delegpt_ns* }
%struct.iter_env = type { i64, i64, i64 }

@MAX_TARGET_COUNT = common dso_local global i64 0, align 8
@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"request %s has exceeded the maximum number of glue fetches %d\00", align 1
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@module_wait_subquery = common dso_local global i8* null, align 8
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, %struct.iter_env*, i32, i32, i32*)* @query_for_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_for_targets(%struct.module_qstate* %0, %struct.iter_qstate* %1, %struct.iter_env* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.module_qstate*, align 8
  %9 = alloca %struct.iter_qstate*, align 8
  %10 = alloca %struct.iter_env*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.delegpt_ns*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %8, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %9, align 8
  store %struct.iter_env* %2, %struct.iter_env** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %21 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.iter_env*, %struct.iter_env** %10, align 8
  %24 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %245

28:                                               ; preds = %6
  %29 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %30 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %35 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %33
  %39 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %40 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MAX_TARGET_COUNT, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %38
  %47 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %48 = add nsw i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %18, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %19, align 8
  %52 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %53 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dname_str(i32 %55, i8* %51)
  %57 = load i32, i32* @VERB_QUERY, align 4
  %58 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %59 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @verbose(i32 %57, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %51, i64 %62)
  store i32 0, i32* %7, align 4
  %64 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %64)
  br label %245

65:                                               ; preds = %38, %33, %28
  %66 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %67 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %68 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %67, i32 0, i32 3
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = call i32 @iter_mark_cycle_targets(%struct.module_qstate* %66, %struct.TYPE_9__* %69)
  %71 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %72 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %71, i32 0, i32 3
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i64 @delegpt_count_missing_targets(%struct.TYPE_9__* %73)
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @log_assert(i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %65
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %65
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %17, align 4
  br label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = load i32, i32* %17, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32*, i32** %13, align 8
  store i32 0, i32* %94, align 4
  store i32 1, i32* %7, align 4
  br label %245

95:                                               ; preds = %90
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp sle i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @log_assert(i32 %99)
  %101 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %102 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %101, i32 0, i32 3
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.delegpt_ns*, %struct.delegpt_ns** %104, align 8
  store %struct.delegpt_ns* %105, %struct.delegpt_ns** %15, align 8
  br label %106

106:                                              ; preds = %227, %95
  %107 = load %struct.delegpt_ns*, %struct.delegpt_ns** %15, align 8
  %108 = icmp ne %struct.delegpt_ns* %107, null
  br i1 %108, label %109, label %231

109:                                              ; preds = %106
  %110 = load %struct.delegpt_ns*, %struct.delegpt_ns** %15, align 8
  %111 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %227

115:                                              ; preds = %109
  %116 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %117 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @iter_ns_probability(i32 %120, i32 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %16, align 4
  br label %227

128:                                              ; preds = %115
  %129 = load %struct.iter_env*, %struct.iter_env** %10, align 8
  %130 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %172

133:                                              ; preds = %128
  %134 = load %struct.delegpt_ns*, %struct.delegpt_ns** %15, align 8
  %135 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %172, label %138

138:                                              ; preds = %133
  %139 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %140 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.delegpt_ns*, %struct.delegpt_ns** %15, align 8
  %143 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.delegpt_ns*, %struct.delegpt_ns** %15, align 8
  %146 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %149 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %150 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @generate_target_query(%struct.module_qstate* %139, %struct.iter_qstate* %140, i32 %141, i32 %144, i32 %147, i32 %148, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %169, label %155

155:                                              ; preds = %138
  %156 = load i32, i32* %14, align 4
  %157 = load i32*, i32** %13, align 8
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load i8*, i8** @module_wait_subquery, align 8
  %162 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %163 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %162, i32 0, i32 0
  %164 = load i8**, i8*** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  store i8* %161, i8** %167, align 8
  br label %168

168:                                              ; preds = %160, %155
  store i32 0, i32* %7, align 4
  br label %245

169:                                              ; preds = %138
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %172

172:                                              ; preds = %169, %133, %128
  %173 = load %struct.iter_env*, %struct.iter_env** %10, align 8
  %174 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %216

177:                                              ; preds = %172
  %178 = load %struct.delegpt_ns*, %struct.delegpt_ns** %15, align 8
  %179 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %216, label %182

182:                                              ; preds = %177
  %183 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %184 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.delegpt_ns*, %struct.delegpt_ns** %15, align 8
  %187 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.delegpt_ns*, %struct.delegpt_ns** %15, align 8
  %190 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %193 = load %struct.iter_qstate*, %struct.iter_qstate** %9, align 8
  %194 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @generate_target_query(%struct.module_qstate* %183, %struct.iter_qstate* %184, i32 %185, i32 %188, i32 %191, i32 %192, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %213, label %199

199:                                              ; preds = %182
  %200 = load i32, i32* %14, align 4
  %201 = load i32*, i32** %13, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load i8*, i8** @module_wait_subquery, align 8
  %206 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %207 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %206, i32 0, i32 0
  %208 = load i8**, i8*** %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  store i8* %205, i8** %211, align 8
  br label %212

212:                                              ; preds = %204, %199
  store i32 0, i32* %7, align 4
  br label %245

213:                                              ; preds = %182
  %214 = load i32, i32* %14, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %14, align 4
  br label %216

216:                                              ; preds = %213, %177, %172
  %217 = load %struct.delegpt_ns*, %struct.delegpt_ns** %15, align 8
  %218 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %217, i32 0, i32 0
  store i32 1, i32* %218, align 8
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %17, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %17, align 4
  %223 = load i32, i32* %17, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %216
  br label %231

226:                                              ; preds = %216
  br label %227

227:                                              ; preds = %226, %125, %114
  %228 = load %struct.delegpt_ns*, %struct.delegpt_ns** %15, align 8
  %229 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %228, i32 0, i32 5
  %230 = load %struct.delegpt_ns*, %struct.delegpt_ns** %229, align 8
  store %struct.delegpt_ns* %230, %struct.delegpt_ns** %15, align 8
  br label %106

231:                                              ; preds = %225, %106
  %232 = load i32, i32* %14, align 4
  %233 = load i32*, i32** %13, align 8
  store i32 %232, i32* %233, align 4
  %234 = load i32, i32* %14, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %231
  %237 = load i8*, i8** @module_wait_subquery, align 8
  %238 = load %struct.module_qstate*, %struct.module_qstate** %8, align 8
  %239 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %238, i32 0, i32 0
  %240 = load i8**, i8*** %239, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  store i8* %237, i8** %243, align 8
  br label %244

244:                                              ; preds = %236, %231
  store i32 1, i32* %7, align 4
  br label %245

245:                                              ; preds = %244, %212, %168, %93, %46, %27
  %246 = load i32, i32* %7, align 4
  ret i32 %246
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dname_str(i32, i8*) #2

declare dso_local i32 @verbose(i32, i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @iter_mark_cycle_targets(%struct.module_qstate*, %struct.TYPE_9__*) #2

declare dso_local i64 @delegpt_count_missing_targets(%struct.TYPE_9__*) #2

declare dso_local i32 @log_assert(i32) #2

declare dso_local i32 @iter_ns_probability(i32, i32, i32) #2

declare dso_local i32 @generate_target_query(%struct.module_qstate*, %struct.iter_qstate*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
