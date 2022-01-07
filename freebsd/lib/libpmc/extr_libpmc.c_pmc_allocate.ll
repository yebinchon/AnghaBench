; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_allocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_event_alias = type { i8*, i64 }
%struct.pmc_class_descr = type { i32, i64 (i32, i8*, %struct.pmc_op_pmcallocate*)*, i32, i32 }
%struct.pmc_op_pmcallocate = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pmc_event_descr = type { i32 }

@PMC_MODE_SS = common dso_local global i32 0, align 4
@PMC_MODE_TS = common dso_local global i32 0, align 4
@PMC_MODE_SC = common dso_local global i32 0, align 4
@PMC_MODE_TC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PMC_CAP_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@PMCALLOCATE = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"ERROR: pmc_pmu_allocate failed, check for ctrname %s\0A\00", align 1
@pmc_mdep_event_aliases = common dso_local global %struct.pmc_event_alias* null, align 8
@PMC_CLASS_TABLE_SIZE = common dso_local global i64 0, align 8
@pmc_class_table = common dso_local global %struct.pmc_class_descr** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_allocate(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.pmc_event_descr*, align 8
  %19 = alloca %struct.pmc_event_alias*, align 8
  %20 = alloca %struct.pmc_op_pmcallocate, align 4
  %21 = alloca %struct.pmc_class_descr*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i8* null, i8** %16, align 8
  store i32 -1, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PMC_MODE_SS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %6
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @PMC_MODE_TS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @PMC_MODE_SC, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PMC_MODE_TC, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* @errno, align 4
  br label %228

39:                                               ; preds = %33, %29, %25, %6
  %40 = call i32 @bzero(%struct.pmc_op_pmcallocate* %20, i32 32)
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %20, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %20, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %20, i32 0, i32 7
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %12, align 4
  %48 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %20, i32 0, i32 6
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @PMC_IS_SAMPLING_MODE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load i32, i32* @PMC_CAP_INTERRUPT, align 4
  %54 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %20, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %39
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @strdup(i8* %58)
  store i8* %59, i8** %16, align 8
  store i8* %59, i8** %15, align 8
  %60 = call i8* @strsep(i8** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %60, i8** %17, align 8
  %61 = call i64 (...) @pmc_pmu_enabled()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load i8*, i8** %17, align 8
  %65 = call i64 @pmc_pmu_pmcallocate(i8* %64, %struct.pmc_op_pmcallocate* %20)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32, i32* @PMCALLOCATE, align 4
  %69 = call i64 @PMC_CALL(i32 %68, %struct.pmc_op_pmcallocate* %20)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %228

72:                                               ; preds = %67
  store i32 0, i32* %14, align 4
  %73 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %20, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  br label %228

76:                                               ; preds = %63
  %77 = load i32, i32* @EX_USAGE, align 4
  %78 = load i8*, i8** %17, align 8
  %79 = call i32 @errx(i32 %77, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  br label %83

80:                                               ; preds = %57
  %81 = load i8*, i8** %16, align 8
  %82 = call i32 @free(i8* %81)
  store i8* null, i8** %16, align 8
  br label %83

83:                                               ; preds = %80, %76
  %84 = load %struct.pmc_event_alias*, %struct.pmc_event_alias** @pmc_mdep_event_aliases, align 8
  %85 = icmp ne %struct.pmc_event_alias* %84, null
  br i1 %85, label %86, label %110

86:                                               ; preds = %83
  %87 = load %struct.pmc_event_alias*, %struct.pmc_event_alias** @pmc_mdep_event_aliases, align 8
  store %struct.pmc_event_alias* %87, %struct.pmc_event_alias** %19, align 8
  br label %88

88:                                               ; preds = %106, %86
  %89 = load %struct.pmc_event_alias*, %struct.pmc_event_alias** %19, align 8
  %90 = getelementptr inbounds %struct.pmc_event_alias, %struct.pmc_event_alias* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = load %struct.pmc_event_alias*, %struct.pmc_event_alias** %19, align 8
  %96 = getelementptr inbounds %struct.pmc_event_alias, %struct.pmc_event_alias* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @strcasecmp(i8* %94, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load %struct.pmc_event_alias*, %struct.pmc_event_alias** %19, align 8
  %102 = getelementptr inbounds %struct.pmc_event_alias, %struct.pmc_event_alias* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @strdup(i8* %103)
  store i8* %104, i8** %16, align 8
  br label %109

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.pmc_event_alias*, %struct.pmc_event_alias** %19, align 8
  %108 = getelementptr inbounds %struct.pmc_event_alias, %struct.pmc_event_alias* %107, i32 1
  store %struct.pmc_event_alias* %108, %struct.pmc_event_alias** %19, align 8
  br label %88

109:                                              ; preds = %100, %88
  br label %110

110:                                              ; preds = %109, %83
  %111 = load i8*, i8** %16, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i8*, i8** %7, align 8
  %115 = call i8* @strdup(i8* %114)
  store i8* %115, i8** %16, align 8
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i8*, i8** %16, align 8
  store i8* %117, i8** %15, align 8
  %118 = call i8* @strsep(i8** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %118, i8** %17, align 8
  store %struct.pmc_event_descr* null, %struct.pmc_event_descr** %18, align 8
  store i64 0, i64* %13, align 8
  br label %119

119:                                              ; preds = %160, %116
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* @PMC_CLASS_TABLE_SIZE, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %163

123:                                              ; preds = %119
  %124 = load %struct.pmc_class_descr**, %struct.pmc_class_descr*** @pmc_class_table, align 8
  %125 = load i64, i64* %13, align 8
  %126 = getelementptr inbounds %struct.pmc_class_descr*, %struct.pmc_class_descr** %124, i64 %125
  %127 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %126, align 8
  store %struct.pmc_class_descr* %127, %struct.pmc_class_descr** %21, align 8
  %128 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %21, align 8
  %129 = icmp ne %struct.pmc_class_descr* %128, null
  br i1 %129, label %130, label %159

130:                                              ; preds = %123
  %131 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %21, align 8
  %132 = getelementptr inbounds %struct.pmc_class_descr, %struct.pmc_class_descr* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @pmc_mdep_is_compatible_class(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %130
  %137 = load i8*, i8** %17, align 8
  %138 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %21, align 8
  %139 = getelementptr inbounds %struct.pmc_class_descr, %struct.pmc_class_descr* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %21, align 8
  %142 = getelementptr inbounds %struct.pmc_class_descr, %struct.pmc_class_descr* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @strncasecmp(i8* %137, i32 %140, i32 %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %136
  %147 = load i8*, i8** %17, align 8
  %148 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %21, align 8
  %149 = getelementptr inbounds %struct.pmc_class_descr, %struct.pmc_class_descr* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %147, i64 %151
  %153 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %21, align 8
  %154 = call %struct.pmc_event_descr* @pmc_match_event_class(i8* %152, %struct.pmc_class_descr* %153)
  store %struct.pmc_event_descr* %154, %struct.pmc_event_descr** %18, align 8
  %155 = icmp eq %struct.pmc_event_descr* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i32, i32* @EINVAL, align 4
  store i32 %157, i32* @errno, align 4
  br label %228

158:                                              ; preds = %146
  br label %163

159:                                              ; preds = %136, %130, %123
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %13, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %13, align 8
  br label %119

163:                                              ; preds = %158, %119
  store i64 0, i64* %13, align 8
  br label %164

164:                                              ; preds = %191, %163
  %165 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** %18, align 8
  %166 = icmp eq %struct.pmc_event_descr* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* @PMC_CLASS_TABLE_SIZE, align 8
  %170 = icmp ult i64 %168, %169
  br label %171

171:                                              ; preds = %167, %164
  %172 = phi i1 [ false, %164 ], [ %170, %167 ]
  br i1 %172, label %173, label %194

173:                                              ; preds = %171
  %174 = load %struct.pmc_class_descr**, %struct.pmc_class_descr*** @pmc_class_table, align 8
  %175 = load i64, i64* %13, align 8
  %176 = getelementptr inbounds %struct.pmc_class_descr*, %struct.pmc_class_descr** %174, i64 %175
  %177 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %176, align 8
  store %struct.pmc_class_descr* %177, %struct.pmc_class_descr** %21, align 8
  %178 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %21, align 8
  %179 = icmp ne %struct.pmc_class_descr* %178, null
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %21, align 8
  %182 = getelementptr inbounds %struct.pmc_class_descr, %struct.pmc_class_descr* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @pmc_mdep_is_compatible_class(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = load i8*, i8** %17, align 8
  %188 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %21, align 8
  %189 = call %struct.pmc_event_descr* @pmc_match_event_class(i8* %187, %struct.pmc_class_descr* %188)
  store %struct.pmc_event_descr* %189, %struct.pmc_event_descr** %18, align 8
  br label %190

190:                                              ; preds = %186, %180, %173
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %13, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %13, align 8
  br label %164

194:                                              ; preds = %171
  %195 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** %18, align 8
  %196 = icmp eq %struct.pmc_event_descr* %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = load i32, i32* @EINVAL, align 4
  store i32 %198, i32* @errno, align 4
  br label %228

199:                                              ; preds = %194
  %200 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** %18, align 8
  %201 = getelementptr inbounds %struct.pmc_event_descr, %struct.pmc_event_descr* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %20, i32 0, i32 4
  store i32 %202, i32* %203, align 4
  %204 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %21, align 8
  %205 = getelementptr inbounds %struct.pmc_class_descr, %struct.pmc_class_descr* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %20, i32 0, i32 3
  store i32 %206, i32* %207, align 4
  %208 = load %struct.pmc_class_descr*, %struct.pmc_class_descr** %21, align 8
  %209 = getelementptr inbounds %struct.pmc_class_descr, %struct.pmc_class_descr* %208, i32 0, i32 1
  %210 = load i64 (i32, i8*, %struct.pmc_op_pmcallocate*)*, i64 (i32, i8*, %struct.pmc_op_pmcallocate*)** %209, align 8
  %211 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** %18, align 8
  %212 = getelementptr inbounds %struct.pmc_event_descr, %struct.pmc_event_descr* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i8*, i8** %15, align 8
  %215 = call i64 %210(i32 %213, i8* %214, %struct.pmc_op_pmcallocate* %20)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %199
  %218 = load i32, i32* @EINVAL, align 4
  store i32 %218, i32* @errno, align 4
  br label %228

219:                                              ; preds = %199
  %220 = load i32, i32* @PMCALLOCATE, align 4
  %221 = call i64 @PMC_CALL(i32 %220, %struct.pmc_op_pmcallocate* %20)
  %222 = icmp slt i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  br label %228

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %20, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %11, align 8
  store i32 %226, i32* %227, align 4
  store i32 0, i32* %14, align 4
  br label %228

228:                                              ; preds = %224, %223, %217, %197, %156, %72, %71, %37
  %229 = load i8*, i8** %16, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i8*, i8** %16, align 8
  %233 = call i32 @free(i8* %232)
  br label %234

234:                                              ; preds = %231, %228
  %235 = load i32, i32* %14, align 4
  ret i32 %235
}

declare dso_local i32 @bzero(%struct.pmc_op_pmcallocate*, i32) #1

declare dso_local i64 @PMC_IS_SAMPLING_MODE(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @pmc_pmu_enabled(...) #1

declare dso_local i64 @pmc_pmu_pmcallocate(i8*, %struct.pmc_op_pmcallocate*) #1

declare dso_local i64 @PMC_CALL(i32, %struct.pmc_op_pmcallocate*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i64) #1

declare dso_local i64 @pmc_mdep_is_compatible_class(i32) #1

declare dso_local i64 @strncasecmp(i8*, i32, i32) #1

declare dso_local %struct.pmc_event_descr* @pmc_match_event_class(i8*, %struct.pmc_class_descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
