; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_encode_actions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_encode_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collection_list = type { i32 }
%struct.tracepoint = type { i32, %struct.action_line* }
%struct.action_line = type { i8*, %struct.action_line* }
%struct.expression = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.value = type { i32 }
%struct.cmd_list_element = type { i32 }
%struct.agent_expr = type { i32 }
%struct.cleanup = type { i32 }
%struct.agent_reqs = type { i32, i32, i32*, i32, i32 }

@encode_actions.tdp_buff = internal global [2048 x i8] zeroinitializer, align 16
@encode_actions.step_buff = internal global [2048 x i8] zeroinitializer, align 16
@tracepoint_list = common dso_local global %struct.collection_list zeroinitializer, align 4
@stepping_list = common dso_local global %struct.collection_list zeroinitializer, align 4
@QUIT = common dso_local global i32 0, align 4
@cmdlist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Bad action list item: %s\00", align 1
@collect_pseudocommand = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"$reg\00", align 1
@NUM_REGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"$arg\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"$loc\00", align 1
@free_current_contents = common dso_local global i32 0, align 4
@info_verbose = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"OP_REGISTER: \00", align 1
@agent_flaw_none = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"malformed expression\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"gdb: Internal error: expression has min height < 0\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"expression too complicated, try simplifying\00", align 1
@while_stepping_pseudocommand = common dso_local global i32 0, align 4
@end_actions_pseudocommand = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracepoint*, i8***, i8***)* @encode_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_actions(%struct.tracepoint* %0, i8*** %1, i8*** %2) #0 {
  %4 = alloca %struct.tracepoint*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.expression*, align 8
  %9 = alloca %struct.action_line*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.value*, align 8
  %12 = alloca %struct.collection_list*, align 8
  %13 = alloca %struct.cmd_list_element*, align 8
  %14 = alloca %struct.agent_expr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.cleanup*, align 8
  %20 = alloca %struct.cleanup*, align 8
  %21 = alloca %struct.agent_reqs, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.tracepoint* %0, %struct.tracepoint** %4, align 8
  store i8*** %1, i8**** %5, align 8
  store i8*** %2, i8**** %6, align 8
  store %struct.expression* null, %struct.expression** %8, align 8
  %24 = call i32 @clear_collection_list(%struct.collection_list* @tracepoint_list)
  %25 = call i32 @clear_collection_list(%struct.collection_list* @stepping_list)
  store %struct.collection_list* @tracepoint_list, %struct.collection_list** %12, align 8
  %26 = load i8***, i8**** %5, align 8
  store i8** null, i8*** %26, align 8
  %27 = load i8***, i8**** %6, align 8
  store i8** null, i8*** %27, align 8
  %28 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %29 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @TARGET_VIRTUAL_FRAME_POINTER(i32 %30, i32* %15, i32* %16)
  %32 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %33 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %32, i32 0, i32 1
  %34 = load %struct.action_line*, %struct.action_line** %33, align 8
  store %struct.action_line* %34, %struct.action_line** %9, align 8
  br label %35

35:                                               ; preds = %313, %3
  %36 = load %struct.action_line*, %struct.action_line** %9, align 8
  %37 = icmp ne %struct.action_line* %36, null
  br i1 %37, label %38, label %317

38:                                               ; preds = %35
  %39 = load i32, i32* @QUIT, align 4
  %40 = load %struct.action_line*, %struct.action_line** %9, align 8
  %41 = getelementptr inbounds %struct.action_line, %struct.action_line* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %49, %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = call i64 @isspace(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  br label %43

52:                                               ; preds = %43
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 35
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %324

58:                                               ; preds = %52
  %59 = load i32, i32* @cmdlist, align 4
  %60 = call %struct.cmd_list_element* @lookup_cmd(i8** %7, i32 %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 -1, i32 1)
  store %struct.cmd_list_element* %60, %struct.cmd_list_element** %13, align 8
  %61 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %62 = icmp eq %struct.cmd_list_element* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %68 = load i32, i32* @collect_pseudocommand, align 4
  %69 = call i64 @cmd_cfunc_eq(%struct.cmd_list_element* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %293

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %290, %71
  %73 = load i32, i32* @QUIT, align 4
  br label %74

74:                                               ; preds = %80, %72
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = call i64 @isspace(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  br label %74

83:                                               ; preds = %74
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %84, i32 4)
  %86 = icmp eq i64 0, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %96, %87
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @NUM_REGS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load %struct.collection_list*, %struct.collection_list** %12, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @add_register(%struct.collection_list* %93, i32 %94)
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %88

99:                                               ; preds = %88
  %100 = load i8*, i8** %7, align 8
  %101 = call i8* @strchr(i8* %100, i8 signext 44)
  store i8* %101, i8** %7, align 8
  br label %280

102:                                              ; preds = %83
  %103 = load i8*, i8** %7, align 8
  %104 = call i64 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %103, i32 4)
  %105 = icmp eq i64 0, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load %struct.collection_list*, %struct.collection_list** %12, align 8
  %108 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %109 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @add_local_symbols(%struct.collection_list* %107, i32 %110, i32 %111, i32 %112, i8 signext 65)
  %114 = load i8*, i8** %7, align 8
  %115 = call i8* @strchr(i8* %114, i8 signext 44)
  store i8* %115, i8** %7, align 8
  br label %279

116:                                              ; preds = %102
  %117 = load i8*, i8** %7, align 8
  %118 = call i64 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %117, i32 4)
  %119 = icmp eq i64 0, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load %struct.collection_list*, %struct.collection_list** %12, align 8
  %122 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %123 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @add_local_symbols(%struct.collection_list* %121, i32 %124, i32 %125, i32 %126, i8 signext 76)
  %128 = load i8*, i8** %7, align 8
  %129 = call i8* @strchr(i8* %128, i8 signext 44)
  store i8* %129, i8** %7, align 8
  br label %278

130:                                              ; preds = %116
  store %struct.cleanup* null, %struct.cleanup** %19, align 8
  store %struct.cleanup* null, %struct.cleanup** %20, align 8
  %131 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %132 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @block_for_pc(i32 %133)
  %135 = call %struct.expression* @parse_exp_1(i8** %7, i32 %134, i32 1)
  store %struct.expression* %135, %struct.expression** %8, align 8
  %136 = load i32, i32* @free_current_contents, align 4
  %137 = call %struct.cleanup* @make_cleanup(i32 %136, %struct.expression** %8)
  store %struct.cleanup* %137, %struct.cleanup** %19, align 8
  %138 = load %struct.expression*, %struct.expression** %8, align 8
  %139 = getelementptr inbounds %struct.expression, %struct.expression* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %190 [
    i32 130, label %144
    i32 128, label %159
    i32 129, label %179
  ]

144:                                              ; preds = %130
  %145 = load %struct.expression*, %struct.expression** %8, align 8
  %146 = getelementptr inbounds %struct.expression, %struct.expression* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* @info_verbose, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = call i32 @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %144
  %156 = load %struct.collection_list*, %struct.collection_list** %12, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @add_register(%struct.collection_list* %156, i32 %157)
  br label %275

159:                                              ; preds = %130
  %160 = load %struct.expression*, %struct.expression** %8, align 8
  %161 = call %struct.value* @evaluate_expression(%struct.expression* %160)
  store %struct.value* %161, %struct.value** %11, align 8
  %162 = load %struct.value*, %struct.value** %11, align 8
  %163 = call i64 @VALUE_ADDRESS(%struct.value* %162)
  %164 = load %struct.value*, %struct.value** %11, align 8
  %165 = call i64 @VALUE_OFFSET(%struct.value* %164)
  %166 = add i64 %163, %165
  store i64 %166, i64* %17, align 8
  %167 = load %struct.expression*, %struct.expression** %8, align 8
  %168 = getelementptr inbounds %struct.expression, %struct.expression* %167, i32 0, i32 0
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 1
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @check_typedef(i32 %172)
  %174 = call i64 @TYPE_LENGTH(i32 %173)
  store i64 %174, i64* %18, align 8
  %175 = load %struct.collection_list*, %struct.collection_list** %12, align 8
  %176 = load i64, i64* %17, align 8
  %177 = load i64, i64* %18, align 8
  %178 = call i32 @add_memrange(%struct.collection_list* %175, i32 -1, i64 %176, i64 %177)
  br label %275

179:                                              ; preds = %130
  %180 = load %struct.collection_list*, %struct.collection_list** %12, align 8
  %181 = load %struct.expression*, %struct.expression** %8, align 8
  %182 = getelementptr inbounds %struct.expression, %struct.expression* %181, i32 0, i32 0
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 2
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %16, align 4
  %189 = call i32 @collect_symbol(%struct.collection_list* %180, i32 %186, i32 %187, i32 %188)
  br label %275

190:                                              ; preds = %130
  %191 = load %struct.tracepoint*, %struct.tracepoint** %4, align 8
  %192 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.expression*, %struct.expression** %8, align 8
  %195 = call %struct.agent_expr* @gen_trace_for_expr(i32 %193, %struct.expression* %194)
  store %struct.agent_expr* %195, %struct.agent_expr** %14, align 8
  %196 = load %struct.agent_expr*, %struct.agent_expr** %14, align 8
  %197 = call %struct.cleanup* @make_cleanup_free_agent_expr(%struct.agent_expr* %196)
  store %struct.cleanup* %197, %struct.cleanup** %20, align 8
  %198 = load %struct.agent_expr*, %struct.agent_expr** %14, align 8
  %199 = call i32 @ax_reqs(%struct.agent_expr* %198, %struct.agent_reqs* %21)
  %200 = getelementptr inbounds %struct.agent_reqs, %struct.agent_reqs* %21, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @agent_flaw_none, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %190
  %205 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %190
  %207 = getelementptr inbounds %struct.agent_reqs, %struct.agent_reqs* %21, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %206
  %213 = getelementptr inbounds %struct.agent_reqs, %struct.agent_reqs* %21, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp sgt i32 %214, 20
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %212
  %219 = load %struct.cleanup*, %struct.cleanup** %20, align 8
  %220 = call i32 @discard_cleanups(%struct.cleanup* %219)
  %221 = load %struct.collection_list*, %struct.collection_list** %12, align 8
  %222 = load %struct.agent_expr*, %struct.agent_expr** %14, align 8
  %223 = call i32 @add_aexpr(%struct.collection_list* %221, %struct.agent_expr* %222)
  %224 = getelementptr inbounds %struct.agent_reqs, %struct.agent_reqs* %21, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %274

227:                                              ; preds = %218
  store i32 0, i32* %22, align 4
  br label %228

228:                                              ; preds = %270, %227
  %229 = load i32, i32* %22, align 4
  %230 = getelementptr inbounds %struct.agent_reqs, %struct.agent_reqs* %21, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp slt i32 %229, %231
  br i1 %232, label %233, label %273

233:                                              ; preds = %228
  %234 = load i32, i32* @QUIT, align 4
  %235 = getelementptr inbounds %struct.agent_reqs, %struct.agent_reqs* %21, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %22, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %269

242:                                              ; preds = %233
  store i32 0, i32* %23, align 4
  br label %243

243:                                              ; preds = %265, %242
  %244 = load i32, i32* %23, align 4
  %245 = icmp slt i32 %244, 8
  br i1 %245, label %246, label %268

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.agent_reqs, %struct.agent_reqs* %21, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %22, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %23, align 4
  %254 = shl i32 1, %253
  %255 = and i32 %252, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %246
  %258 = load %struct.collection_list*, %struct.collection_list** %12, align 8
  %259 = load i32, i32* %22, align 4
  %260 = mul nsw i32 %259, 8
  %261 = load i32, i32* %23, align 4
  %262 = add nsw i32 %260, %261
  %263 = call i32 @add_register(%struct.collection_list* %258, i32 %262)
  br label %264

264:                                              ; preds = %257, %246
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %23, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %23, align 4
  br label %243

268:                                              ; preds = %243
  br label %269

269:                                              ; preds = %268, %233
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %22, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %22, align 4
  br label %228

273:                                              ; preds = %228
  br label %274

274:                                              ; preds = %273, %218
  br label %275

275:                                              ; preds = %274, %179, %159, %155
  %276 = load %struct.cleanup*, %struct.cleanup** %19, align 8
  %277 = call i32 @do_cleanups(%struct.cleanup* %276)
  br label %278

278:                                              ; preds = %275, %120
  br label %279

279:                                              ; preds = %278, %106
  br label %280

280:                                              ; preds = %279, %99
  br label %281

281:                                              ; preds = %280
  %282 = load i8*, i8** %7, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %290

284:                                              ; preds = %281
  %285 = load i8*, i8** %7, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %7, align 8
  %287 = load i8, i8* %285, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %288, 44
  br label %290

290:                                              ; preds = %284, %281
  %291 = phi i1 [ false, %281 ], [ %289, %284 ]
  br i1 %291, label %72, label %292

292:                                              ; preds = %290
  br label %312

293:                                              ; preds = %66
  %294 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %295 = load i32, i32* @while_stepping_pseudocommand, align 4
  %296 = call i64 @cmd_cfunc_eq(%struct.cmd_list_element* %294, i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  store %struct.collection_list* @stepping_list, %struct.collection_list** %12, align 8
  br label %311

299:                                              ; preds = %293
  %300 = load %struct.cmd_list_element*, %struct.cmd_list_element** %13, align 8
  %301 = load i32, i32* @end_actions_pseudocommand, align 4
  %302 = call i64 @cmd_cfunc_eq(%struct.cmd_list_element* %300, i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %299
  %305 = load %struct.collection_list*, %struct.collection_list** %12, align 8
  %306 = icmp eq %struct.collection_list* %305, @stepping_list
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  store %struct.collection_list* @tracepoint_list, %struct.collection_list** %12, align 8
  br label %309

308:                                              ; preds = %304
  br label %317

309:                                              ; preds = %307
  br label %310

310:                                              ; preds = %309, %299
  br label %311

311:                                              ; preds = %310, %298
  br label %312

312:                                              ; preds = %311, %292
  br label %313

313:                                              ; preds = %312
  %314 = load %struct.action_line*, %struct.action_line** %9, align 8
  %315 = getelementptr inbounds %struct.action_line, %struct.action_line* %314, i32 0, i32 1
  %316 = load %struct.action_line*, %struct.action_line** %315, align 8
  store %struct.action_line* %316, %struct.action_line** %9, align 8
  br label %35

317:                                              ; preds = %308, %35
  %318 = call i32 @memrange_sortmerge(%struct.collection_list* @tracepoint_list)
  %319 = call i32 @memrange_sortmerge(%struct.collection_list* @stepping_list)
  %320 = call i8** @stringify_collection_list(%struct.collection_list* @tracepoint_list, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @encode_actions.tdp_buff, i64 0, i64 0))
  %321 = load i8***, i8**** %5, align 8
  store i8** %320, i8*** %321, align 8
  %322 = call i8** @stringify_collection_list(%struct.collection_list* @stepping_list, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @encode_actions.step_buff, i64 0, i64 0))
  %323 = load i8***, i8**** %6, align 8
  store i8** %322, i8*** %323, align 8
  br label %324

324:                                              ; preds = %317, %57
  ret void
}

declare dso_local i32 @clear_collection_list(%struct.collection_list*) #1

declare dso_local i32 @TARGET_VIRTUAL_FRAME_POINTER(i32, i32*, i32*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local %struct.cmd_list_element* @lookup_cmd(i8**, i32, i8*, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @cmd_cfunc_eq(%struct.cmd_list_element*, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @add_register(%struct.collection_list*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @add_local_symbols(%struct.collection_list*, i32, i32, i32, i8 signext) #1

declare dso_local %struct.expression* @parse_exp_1(i8**, i32, i32) #1

declare dso_local i32 @block_for_pc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local %struct.value* @evaluate_expression(%struct.expression*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_OFFSET(%struct.value*) #1

declare dso_local i64 @TYPE_LENGTH(i32) #1

declare dso_local i32 @check_typedef(i32) #1

declare dso_local i32 @add_memrange(%struct.collection_list*, i32, i64, i64) #1

declare dso_local i32 @collect_symbol(%struct.collection_list*, i32, i32, i32) #1

declare dso_local %struct.agent_expr* @gen_trace_for_expr(i32, %struct.expression*) #1

declare dso_local %struct.cleanup* @make_cleanup_free_agent_expr(%struct.agent_expr*) #1

declare dso_local i32 @ax_reqs(%struct.agent_expr*, %struct.agent_reqs*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

declare dso_local i32 @add_aexpr(%struct.collection_list*, %struct.agent_expr*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @memrange_sortmerge(%struct.collection_list*) #1

declare dso_local i8** @stringify_collection_list(%struct.collection_list*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
