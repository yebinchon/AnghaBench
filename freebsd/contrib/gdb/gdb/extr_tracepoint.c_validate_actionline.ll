; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_validate_actionline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_validate_actionline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { i32, i32 }
%struct.cmd_list_element = type { i32 }
%struct.expression = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.cleanup = type { i32 }
%struct.agent_expr = type { i64 }
%struct.agent_reqs = type { i64, i64, i32, %struct.expression** }

@END = common dso_local global i32 0, align 4
@BADLINE = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@cmdlist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"'%s' is not an action that I know, or is ambiguous.\00", align 1
@collect_pseudocommand = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"loc\00", align 1
@free_current_contents = common dso_local global i32 0, align 4
@OP_VAR_VALUE = common dso_local global i64 0, align 8
@LOC_CONST = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"constant %s (value %ld) will not be collected.\00", align 1
@LOC_OPTIMIZED_OUT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"%s is optimized away and cannot be collected.\00", align 1
@MAX_AGENT_EXPR_LEN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [44 x i8] c"expression too complicated, try simplifying\00", align 1
@xfree = common dso_local global i32 0, align 4
@agent_flaw_none = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"malformed expression\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"gdb: Internal error: expression has min height < 0\00", align 1
@while_stepping_pseudocommand = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"'%s': bad step-count; command ignored.\00", align 1
@STEPPING = common dso_local global i32 0, align 4
@end_actions_pseudocommand = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"'%s' is not a supported tracepoint action.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_actionline(i8** %0, %struct.tracepoint* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.tracepoint*, align 8
  %6 = alloca %struct.cmd_list_element*, align 8
  %7 = alloca %struct.expression*, align 8
  %8 = alloca %struct.cleanup*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.agent_expr*, align 8
  %11 = alloca %struct.agent_reqs, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.tracepoint* %1, %struct.tracepoint** %5, align 8
  store %struct.expression* null, %struct.expression** %7, align 8
  store %struct.cleanup* null, %struct.cleanup** %8, align 8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @END, align 4
  store i32 %17, i32* %3, align 4
  br label %261

18:                                               ; preds = %2
  %19 = load i8**, i8*** %4, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %27, %18
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i64 @isspace(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %9, align 8
  br label %21

30:                                               ; preds = %21
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @BADLINE, align 4
  store i32 %36, i32* %3, align 4
  br label %261

37:                                               ; preds = %30
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 35
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @GENERIC, align 4
  store i32 %43, i32* %3, align 4
  br label %261

44:                                               ; preds = %37
  %45 = load i32, i32* @cmdlist, align 4
  %46 = call %struct.cmd_list_element* @lookup_cmd(i8** %9, i32 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 -1, i32 1)
  store %struct.cmd_list_element* %46, %struct.cmd_list_element** %6, align 8
  %47 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %48 = icmp eq %struct.cmd_list_element* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @BADLINE, align 4
  store i32 %52, i32* %3, align 4
  br label %261

53:                                               ; preds = %44
  %54 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %55 = load i32, i32* @collect_pseudocommand, align 4
  %56 = call i64 @cmd_cfunc_eq(%struct.cmd_list_element* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %215

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %211, %58
  %60 = load i32, i32* @QUIT, align 4
  br label %61

61:                                               ; preds = %67, %59
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call i64 @isspace(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  br label %61

70:                                               ; preds = %61
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 36
  br i1 %74, label %75, label %94

75:                                               ; preds = %70
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = call i64 @strncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %77, i32 3)
  %79 = icmp eq i64 0, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = call i64 @strncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %82, i32 3)
  %84 = icmp eq i64 0, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = call i64 @strncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %87, i32 3)
  %89 = icmp eq i64 0, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85, %80, %75
  %91 = load i8*, i8** %9, align 8
  %92 = call i8* @strchr(i8* %91, i8 signext 44)
  store i8* %92, i8** %9, align 8
  br label %202

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %70
  %95 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %96 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @block_for_pc(i32 %97)
  %99 = call %struct.expression* @parse_exp_1(i8** %9, i32 %98, i32 1)
  store %struct.expression* %99, %struct.expression** %7, align 8
  %100 = load i32, i32* @free_current_contents, align 4
  %101 = call %struct.cleanup* @make_cleanup(i32 %100, %struct.expression** %7)
  store %struct.cleanup* %101, %struct.cleanup** %8, align 8
  %102 = load %struct.expression*, %struct.expression** %7, align 8
  %103 = getelementptr inbounds %struct.expression, %struct.expression* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @OP_VAR_VALUE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %159

110:                                              ; preds = %94
  %111 = load %struct.expression*, %struct.expression** %7, align 8
  %112 = getelementptr inbounds %struct.expression, %struct.expression* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @SYMBOL_CLASS(i32 %116)
  %118 = load i64, i64* @LOC_CONST, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %110
  %121 = load %struct.expression*, %struct.expression** %7, align 8
  %122 = getelementptr inbounds %struct.expression, %struct.expression* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @DEPRECATED_SYMBOL_NAME(i32 %126)
  %128 = load %struct.expression*, %struct.expression** %7, align 8
  %129 = getelementptr inbounds %struct.expression, %struct.expression* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @SYMBOL_VALUE(i32 %133)
  %135 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %127, i32 %134)
  %136 = load i32, i32* @BADLINE, align 4
  store i32 %136, i32* %3, align 4
  br label %261

137:                                              ; preds = %110
  %138 = load %struct.expression*, %struct.expression** %7, align 8
  %139 = getelementptr inbounds %struct.expression, %struct.expression* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @SYMBOL_CLASS(i32 %143)
  %145 = load i64, i64* @LOC_OPTIMIZED_OUT, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %137
  %148 = load %struct.expression*, %struct.expression** %7, align 8
  %149 = getelementptr inbounds %struct.expression, %struct.expression* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 2
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @DEPRECATED_SYMBOL_NAME(i32 %153)
  %155 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %154)
  %156 = load i32, i32* @BADLINE, align 4
  store i32 %156, i32* %3, align 4
  br label %261

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %157
  br label %159

159:                                              ; preds = %158, %94
  %160 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %161 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.expression*, %struct.expression** %7, align 8
  %164 = call %struct.agent_expr* @gen_trace_for_expr(i32 %162, %struct.expression* %163)
  store %struct.agent_expr* %164, %struct.agent_expr** %10, align 8
  %165 = load %struct.agent_expr*, %struct.agent_expr** %10, align 8
  %166 = call i32 @make_cleanup_free_agent_expr(%struct.agent_expr* %165)
  %167 = load %struct.agent_expr*, %struct.agent_expr** %10, align 8
  %168 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @MAX_AGENT_EXPR_LEN, align 8
  %171 = icmp sgt i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %159
  %173 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %159
  %175 = load %struct.agent_expr*, %struct.agent_expr** %10, align 8
  %176 = call i32 @ax_reqs(%struct.agent_expr* %175, %struct.agent_reqs* %11)
  %177 = load i32, i32* @xfree, align 4
  %178 = getelementptr inbounds %struct.agent_reqs, %struct.agent_reqs* %11, i32 0, i32 3
  %179 = load %struct.expression**, %struct.expression*** %178, align 8
  %180 = call %struct.cleanup* @make_cleanup(i32 %177, %struct.expression** %179)
  %181 = getelementptr inbounds %struct.agent_reqs, %struct.agent_reqs* %11, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @agent_flaw_none, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %174
  %186 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %174
  %188 = getelementptr inbounds %struct.agent_reqs, %struct.agent_reqs* %11, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %187
  %194 = getelementptr inbounds %struct.agent_reqs, %struct.agent_reqs* %11, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp sgt i32 %195, 20
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %193
  %200 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %201 = call i32 @do_cleanups(%struct.cleanup* %200)
  br label %202

202:                                              ; preds = %199, %90
  %203 = load i8*, i8** %9, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %9, align 8
  %208 = load i8, i8* %206, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 44
  br label %211

211:                                              ; preds = %205, %202
  %212 = phi i1 [ false, %202 ], [ %210, %205 ]
  br i1 %212, label %59, label %213

213:                                              ; preds = %211
  %214 = load i32, i32* @GENERIC, align 4
  store i32 %214, i32* %3, align 4
  br label %261

215:                                              ; preds = %53
  %216 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %217 = load i32, i32* @while_stepping_pseudocommand, align 4
  %218 = call i64 @cmd_cfunc_eq(%struct.cmd_list_element* %216, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %249

220:                                              ; preds = %215
  br label %221

221:                                              ; preds = %227, %220
  %222 = load i8*, i8** %9, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = call i64 @isspace(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %221
  %228 = load i8*, i8** %9, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %9, align 8
  br label %221

230:                                              ; preds = %221
  %231 = load i8*, i8** %9, align 8
  store i8* %231, i8** %12, align 8
  %232 = load i8*, i8** %9, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %230
  %237 = load i8*, i8** %9, align 8
  %238 = call i32 @strtol(i8* %237, i8** %9, i32 0)
  %239 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %240 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 4
  %241 = icmp eq i32 %238, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %236, %230
  %243 = load i8**, i8*** %4, align 8
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* %244)
  %246 = load i32, i32* @BADLINE, align 4
  store i32 %246, i32* %3, align 4
  br label %261

247:                                              ; preds = %236
  %248 = load i32, i32* @STEPPING, align 4
  store i32 %248, i32* %3, align 4
  br label %261

249:                                              ; preds = %215
  %250 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %251 = load i32, i32* @end_actions_pseudocommand, align 4
  %252 = call i64 @cmd_cfunc_eq(%struct.cmd_list_element* %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %249
  %255 = load i32, i32* @END, align 4
  store i32 %255, i32* %3, align 4
  br label %261

256:                                              ; preds = %249
  %257 = load i8**, i8*** %4, align 8
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* %258)
  %260 = load i32, i32* @BADLINE, align 4
  store i32 %260, i32* %3, align 4
  br label %261

261:                                              ; preds = %256, %254, %247, %242, %213, %147, %120, %49, %42, %35, %16
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local i64 @isspace(i32) #1

declare dso_local %struct.cmd_list_element* @lookup_cmd(i8**, i32, i8*, i32, i32) #1

declare dso_local i32 @warning(i8*, i8*, ...) #1

declare dso_local i64 @cmd_cfunc_eq(%struct.cmd_list_element*, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.expression* @parse_exp_1(i8**, i32, i32) #1

declare dso_local i32 @block_for_pc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local i64 @SYMBOL_CLASS(i32) #1

declare dso_local i8* @DEPRECATED_SYMBOL_NAME(i32) #1

declare dso_local i32 @SYMBOL_VALUE(i32) #1

declare dso_local %struct.agent_expr* @gen_trace_for_expr(i32, %struct.expression*) #1

declare dso_local i32 @make_cleanup_free_agent_expr(%struct.agent_expr*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @ax_reqs(%struct.agent_expr*, %struct.agent_reqs*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
