; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_sets_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_sets_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_opts = type { i32, i32, i64, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"set needs command\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@co = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"requesting config failed\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@RESVD_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" enable\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"set swap needs 2 set numbers\0A\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"invalid set number %s\0A\00", align 1
@IP_FW_SET_SWAP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@IPFW_RCFLAG_RANGE = common dso_local global i32 0, align 4
@IP_FW_XMOVE = common dso_local global i32 0, align 4
@IP_FW_SET_MOVE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"syntax: set move [rule] X to Y\0A\00", align 1
@IPFW_DEFAULT_RULE = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [26 x i8] c"invalid source number %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"invalid dest. set %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"failed to move %s\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"invalid set number %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"invalid set command %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"cannot enable and disable the same set\0A\00", align 1
@IP_FW_SET_ENABLE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [49 x i8] c"set enable/disable: setsockopt(IP_FW_SET_ENABLE)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_sets_handler(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.format_opts, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.format_opts, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %13 = load i8**, i8*** %2, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %14, i8*** %2, align 8
  %15 = call i32 @memset(%struct.format_opts* %3, i32 0, i32 32)
  %16 = load i8**, i8*** %2, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EX_USAGE, align 4
  %22 = call i32 (i32, i8*, ...) @errx(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i8**, i8*** %2, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @_substrcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %87

28:                                               ; preds = %23
  %29 = call i32 @memset(%struct.format_opts* %10, i32 0, i32 32)
  %30 = call i64 @ipfw_get_config(i32* @co, %struct.format_opts* %10, %struct.TYPE_4__** %11, i64* %5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EX_OSERR, align 4
  %34 = call i32 (i32, i8*, ...) @err(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %28
  store i32 0, i32* %7, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @RESVD_SET, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %49, i32 %50)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %52

52:                                               ; preds = %48, %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %36

56:                                               ; preds = %36
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, -1
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  store i8* %62, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %80, %56
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @RESVD_SET, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %76, i32 %77)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %79

79:                                               ; preds = %75, %67
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %63

83:                                               ; preds = %63
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %86 = call i32 @free(%struct.TYPE_4__* %85)
  br label %412

87:                                               ; preds = %23
  %88 = load i8**, i8*** %2, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @_substrcmp(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %158

92:                                               ; preds = %87
  %93 = load i8**, i8*** %2, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %94, i8*** %2, align 8
  %95 = load i8**, i8*** %2, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = load i8**, i8*** %2, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %99, %92
  %105 = load i32, i32* @EX_USAGE, align 4
  %106 = call i32 (i32, i8*, ...) @errx(i32 %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i8**, i8*** %2, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* @atoi(i8* %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 0
  store i32 %112, i32* %113, align 8
  %114 = load i8**, i8*** %2, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @atoi(i8* %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  %120 = load i8**, i8*** %2, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i8, i8* %122, align 1
  %124 = call i64 @isdigit(i8 signext %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %107
  %127 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @RESVD_SET, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %126, %107
  %132 = load i32, i32* @EX_DATAERR, align 4
  %133 = load i8**, i8*** %2, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (i32, i8*, ...) @errx(i32 %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %131, %126
  %138 = load i8**, i8*** %2, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 1
  %140 = load i8*, i8** %139, align 8
  %141 = load i8, i8* %140, align 1
  %142 = call i64 @isdigit(i8 signext %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @RESVD_SET, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %144, %137
  %150 = load i32, i32* @EX_DATAERR, align 4
  %151 = load i8**, i8*** %2, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 (i32, i8*, ...) @errx(i32 %150, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %149, %144
  %156 = load i32, i32* @IP_FW_SET_SWAP, align 4
  %157 = call i32 @do_range_cmd(i32 %156, %struct.format_opts* %3)
  store i32 %157, i32* %7, align 4
  br label %411

158:                                              ; preds = %87
  %159 = load i8**, i8*** %2, align 8
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @_substrcmp(i8* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %303

163:                                              ; preds = %158
  %164 = load i8**, i8*** %2, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i32 1
  store i8** %165, i8*** %2, align 8
  %166 = load i8**, i8*** %2, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 0
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %181

170:                                              ; preds = %163
  %171 = load i8**, i8*** %2, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @_substrcmp(i8* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, i32* @IPFW_RCFLAG_RANGE, align 4
  %177 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 4
  store i32 %176, i32* %177, align 8
  %178 = load i32, i32* @IP_FW_XMOVE, align 4
  store i32 %178, i32* %9, align 4
  %179 = load i8**, i8*** %2, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i32 1
  store i8** %180, i8*** %2, align 8
  br label %183

181:                                              ; preds = %170, %163
  %182 = load i32, i32* @IP_FW_SET_MOVE, align 4
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %181, %175
  %184 = load i8**, i8*** %2, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 0
  %186 = load i8*, i8** %185, align 8
  %187 = icmp eq i8* %186, null
  br i1 %187, label %209, label %188

188:                                              ; preds = %183
  %189 = load i8**, i8*** %2, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 1
  %191 = load i8*, i8** %190, align 8
  %192 = icmp eq i8* %191, null
  br i1 %192, label %209, label %193

193:                                              ; preds = %188
  %194 = load i8**, i8*** %2, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 2
  %196 = load i8*, i8** %195, align 8
  %197 = icmp eq i8* %196, null
  br i1 %197, label %209, label %198

198:                                              ; preds = %193
  %199 = load i8**, i8*** %2, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 3
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %209, label %203

203:                                              ; preds = %198
  %204 = load i8**, i8*** %2, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 1
  %206 = load i8*, i8** %205, align 8
  %207 = call i64 @_substrcmp(i8* %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %203, %198, %193, %188, %183
  %210 = load i32, i32* @EX_USAGE, align 4
  %211 = call i32 (i32, i8*, ...) @errx(i32 %210, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %203
  %213 = load i8**, i8*** %2, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i8* @atoi(i8* %215)
  store i8* %216, i8** %8, align 8
  %217 = load i8**, i8*** %2, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 2
  %219 = load i8*, i8** %218, align 8
  %220 = call i8* @atoi(i8* %219)
  %221 = ptrtoint i8* %220 to i32
  %222 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 1
  store i32 %221, i32* %222, align 4
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* @IP_FW_XMOVE, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %212
  %227 = load i8*, i8** %8, align 8
  %228 = ptrtoint i8* %227 to i64
  %229 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 2
  store i64 %228, i64* %229, align 8
  %230 = load i8*, i8** %8, align 8
  %231 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 3
  store i8* %230, i8** %231, align 8
  br label %236

232:                                              ; preds = %212
  %233 = load i8*, i8** %8, align 8
  %234 = ptrtoint i8* %233 to i32
  %235 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 0
  store i32 %234, i32* %235, align 8
  br label %236

236:                                              ; preds = %232, %226
  %237 = load i8**, i8*** %2, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 2
  %239 = load i8*, i8** %238, align 8
  %240 = call i8* @atoi(i8* %239)
  %241 = ptrtoint i8* %240 to i32
  %242 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 1
  store i32 %241, i32* %242, align 4
  %243 = load i8**, i8*** %2, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 0
  %245 = load i8*, i8** %244, align 8
  %246 = load i8, i8* %245, align 1
  %247 = call i64 @isdigit(i8 signext %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %265

249:                                              ; preds = %236
  %250 = load i32, i32* %9, align 4
  %251 = icmp eq i32 %250, 3
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @RESVD_SET, align 4
  %256 = icmp sgt i32 %254, %255
  br i1 %256, label %265, label %257

257:                                              ; preds = %252, %249
  %258 = load i32, i32* %9, align 4
  %259 = icmp eq i32 %258, 2
  br i1 %259, label %260, label %271

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @IPFW_DEFAULT_RULE, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %260, %252, %236
  %266 = load i32, i32* @EX_DATAERR, align 4
  %267 = load i8**, i8*** %2, align 8
  %268 = getelementptr inbounds i8*, i8** %267, i64 0
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 (i32, i8*, ...) @errx(i32 %266, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8* %269)
  br label %271

271:                                              ; preds = %265, %260, %257
  %272 = load i8**, i8*** %2, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 2
  %274 = load i8*, i8** %273, align 8
  %275 = load i8, i8* %274, align 1
  %276 = call i64 @isdigit(i8 signext %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @RESVD_SET, align 4
  %282 = icmp sgt i32 %280, %281
  br i1 %282, label %283, label %289

283:                                              ; preds = %278, %271
  %284 = load i32, i32* @EX_DATAERR, align 4
  %285 = load i8**, i8*** %2, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 1
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 (i32, i8*, ...) @errx(i32 %284, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %287)
  br label %289

289:                                              ; preds = %283, %278
  %290 = load i32, i32* %9, align 4
  %291 = call i32 @do_range_cmd(i32 %290, %struct.format_opts* %3)
  store i32 %291, i32* %7, align 4
  %292 = load i32, i32* %7, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %289
  %295 = load i32, i32* @EX_OSERR, align 4
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* @IP_FW_SET_MOVE, align 4
  %298 = icmp eq i32 %296, %297
  %299 = zext i1 %298 to i64
  %300 = select i1 %298, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  %301 = call i32 (i32, i8*, ...) @err(i32 %295, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* %300)
  br label %302

302:                                              ; preds = %294, %289
  br label %410

303:                                              ; preds = %158
  %304 = load i8**, i8*** %2, align 8
  %305 = load i8*, i8** %304, align 8
  %306 = call i64 @_substrcmp(i8* %305, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %313, label %308

308:                                              ; preds = %303
  %309 = load i8**, i8*** %2, align 8
  %310 = load i8*, i8** %309, align 8
  %311 = call i64 @_substrcmp(i8* %310, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %404

313:                                              ; preds = %308, %303
  %314 = load i8**, i8*** %2, align 8
  %315 = load i8*, i8** %314, align 8
  %316 = call i64 @_substrcmp(i8* %315, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %317 = icmp eq i64 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i32 1, i32 0
  store i32 %319, i32* %12, align 4
  %320 = load i8**, i8*** %2, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i32 1
  store i8** %321, i8*** %2, align 8
  %322 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %322, align 4
  %323 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %323, align 4
  br label %324

324:                                              ; preds = %377, %313
  %325 = load i8**, i8*** %2, align 8
  %326 = getelementptr inbounds i8*, i8** %325, i64 0
  %327 = load i8*, i8** %326, align 8
  %328 = icmp ne i8* %327, null
  br i1 %328, label %329, label %380

329:                                              ; preds = %324
  %330 = load i8**, i8*** %2, align 8
  %331 = load i8*, i8** %330, align 8
  %332 = load i8, i8* %331, align 1
  %333 = call i64 @isdigit(i8 signext %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %358

335:                                              ; preds = %329
  %336 = load i8**, i8*** %2, align 8
  %337 = load i8*, i8** %336, align 8
  %338 = call i8* @atoi(i8* %337)
  %339 = ptrtoint i8* %338 to i32
  store i32 %339, i32* %7, align 4
  %340 = load i32, i32* %7, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %346, label %342

342:                                              ; preds = %335
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* @RESVD_SET, align 4
  %345 = icmp sgt i32 %343, %344
  br i1 %345, label %346, label %350

346:                                              ; preds = %342, %335
  %347 = load i32, i32* @EX_DATAERR, align 4
  %348 = load i32, i32* %7, align 4
  %349 = call i32 (i32, i8*, ...) @errx(i32 %347, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 %348)
  br label %350

350:                                              ; preds = %346, %342
  %351 = load i32, i32* %7, align 4
  %352 = shl i32 1, %351
  %353 = load i32, i32* %12, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = or i32 %356, %352
  store i32 %357, i32* %355, align 4
  br label %377

358:                                              ; preds = %329
  %359 = load i8**, i8*** %2, align 8
  %360 = load i8*, i8** %359, align 8
  %361 = call i64 @_substrcmp(i8* %360, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %358
  store i32 0, i32* %12, align 4
  br label %376

364:                                              ; preds = %358
  %365 = load i8**, i8*** %2, align 8
  %366 = load i8*, i8** %365, align 8
  %367 = call i64 @_substrcmp(i8* %366, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %364
  store i32 1, i32* %12, align 4
  br label %375

370:                                              ; preds = %364
  %371 = load i32, i32* @EX_DATAERR, align 4
  %372 = load i8**, i8*** %2, align 8
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 (i32, i8*, ...) @errx(i32 %371, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i8* %373)
  br label %375

375:                                              ; preds = %370, %369
  br label %376

376:                                              ; preds = %375, %363
  br label %377

377:                                              ; preds = %376, %350
  %378 = load i8**, i8*** %2, align 8
  %379 = getelementptr inbounds i8*, i8** %378, i32 1
  store i8** %379, i8*** %2, align 8
  br label %324

380:                                              ; preds = %324
  %381 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %382 = load i32, i32* %381, align 4
  %383 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %384 = load i32, i32* %383, align 4
  %385 = and i32 %382, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %380
  %388 = load i32, i32* @EX_DATAERR, align 4
  %389 = call i32 (i32, i8*, ...) @errx(i32 %388, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0))
  br label %390

390:                                              ; preds = %387, %380
  %391 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %392 = load i32, i32* %391, align 4
  %393 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 0
  store i32 %392, i32* %393, align 8
  %394 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %395 = load i32, i32* %394, align 4
  %396 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %3, i32 0, i32 1
  store i32 %395, i32* %396, align 4
  %397 = load i32, i32* @IP_FW_SET_ENABLE, align 4
  %398 = call i32 @do_range_cmd(i32 %397, %struct.format_opts* %3)
  store i32 %398, i32* %7, align 4
  %399 = load i32, i32* %7, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %390
  %402 = call i32 @warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i64 0, i64 0))
  br label %403

403:                                              ; preds = %401, %390
  br label %409

404:                                              ; preds = %308
  %405 = load i32, i32* @EX_USAGE, align 4
  %406 = load i8**, i8*** %2, align 8
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 (i32, i8*, ...) @errx(i32 %405, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i8* %407)
  br label %409

409:                                              ; preds = %404, %403
  br label %410

410:                                              ; preds = %409, %302
  br label %411

411:                                              ; preds = %410, %155
  br label %412

412:                                              ; preds = %411, %83
  ret void
}

declare dso_local i32 @memset(%struct.format_opts*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @_substrcmp(i8*, i8*) #1

declare dso_local i64 @ipfw_get_config(i32*, %struct.format_opts*, %struct.TYPE_4__**, i64*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @do_range_cmd(i32, %struct.format_opts*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
