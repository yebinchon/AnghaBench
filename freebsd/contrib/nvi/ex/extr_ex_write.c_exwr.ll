; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_write.c_exwr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_write.c_exwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i8*, %struct.TYPE_42__*, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32 (%struct.TYPE_42__*, i8*, i32)* }
%struct.TYPE_44__ = type { i32, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_40__**, %struct.TYPE_39__*, i32 }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_40__ = type { i8*, i32 }
%struct.TYPE_39__ = type { i8*, i32 }
%struct.TYPE_43__ = type { i8* }

@FS_POSSIBLE = common dso_local global i32 0, align 4
@E_C_FORCE = common dso_local global i32 0, align 4
@FS_FORCE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@O_SECURE = common dso_local global i32 0, align 4
@EXM_SECURE_F = common dso_local global i32 0, align 4
@EXM_USAGE = common dso_local global i32 0, align 4
@SC_EX_WAIT_YES = common dso_local global i32 0, align 4
@FILTER_WRITE = common dso_local global i32 0, align 4
@SC_VI = common dso_local global i32 0, align 4
@SC_EX_SILENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"!\0A\00", align 1
@FS_ALL = common dso_local global i32 0, align 4
@XIT = common dso_local global i32 0, align 4
@FS_APPEND = common dso_local global i32 0, align 4
@FR_TMPFILE = common dso_local global i32 0, align 4
@FR_EXNAMED = common dso_local global i32 0, align 4
@FR_TMPEXIT = common dso_local global i32 0, align 4
@FR_NAMECHANGE = common dso_local global i32 0, align 4
@EXM_FILECOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_42__*, %struct.TYPE_44__*, i32)* @exwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exwr(%struct.TYPE_42__* %0, %struct.TYPE_44__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca %struct.TYPE_44__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_43__*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %5, align 8
  store %struct.TYPE_44__* %1, %struct.TYPE_44__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %11, align 8
  %16 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %17 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %18 = call i32 @NEEDFILE(%struct.TYPE_42__* %16, %struct.TYPE_44__* %17)
  %19 = load i32, i32* @FS_POSSIBLE, align 4
  %20 = call i32 @LF_INIT(i32 %19)
  %21 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @E_C_FORCE, align 4
  %25 = call i64 @FL_ISSET(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @FS_FORCE, align 4
  %29 = call i32 @LF_SET(i32 %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %38, i64 0
  %40 = load %struct.TYPE_40__*, %struct.TYPE_40__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %11, align 8
  br label %43

43:                                               ; preds = %56, %35
  %44 = load i8*, i8** %11, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @cmdskip(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ false, %43 ], [ %52, %48 ]
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %11, align 8
  br label %43

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %30
  %61 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %189

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @WRITE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %189

69:                                               ; preds = %65
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 33
  br i1 %73, label %74, label %189

74:                                               ; preds = %69
  %75 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %76 = load i32, i32* @O_SECURE, align 4
  %77 = call i64 @O_ISSET(%struct.TYPE_42__* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %81 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_39__*, %struct.TYPE_39__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @EXM_SECURE_F, align 4
  %87 = call i32 @ex_wemsg(%struct.TYPE_42__* %80, i32 %85, i32 %86)
  store i32 1, i32* %4, align 4
  br label %397

88:                                               ; preds = %74
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %11, align 8
  br label %91

91:                                               ; preds = %104, %88
  %92 = load i8*, i8** %11, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i8*, i8** %11, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i64 @cmdskip(i8 signext %98)
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %96, %91
  %102 = phi i1 [ false, %91 ], [ %100, %96 ]
  br i1 %102, label %103, label %107

103:                                              ; preds = %101
  br label %104

104:                                              ; preds = %103
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %11, align 8
  br label %91

107:                                              ; preds = %101
  %108 = load i8*, i8** %11, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %114 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_39__*, %struct.TYPE_39__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* @EXM_USAGE, align 4
  %120 = call i32 @ex_emsg(%struct.TYPE_42__* %113, i8* %118, i32 %119)
  store i32 1, i32* %4, align 4
  br label %397

121:                                              ; preds = %107
  %122 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %123 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @STRLEN(i8* %125)
  %127 = call i64 @argv_exp1(%struct.TYPE_42__* %122, %struct.TYPE_44__* %123, i8* %124, i32 %126, i32 1)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  store i32 1, i32* %4, align 4
  br label %397

130:                                              ; preds = %121
  %131 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %132 = call %struct.TYPE_43__* @EXP(%struct.TYPE_42__* %131)
  store %struct.TYPE_43__* %132, %struct.TYPE_43__** %15, align 8
  %133 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @free(i8* %135)
  %137 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %138 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %140, i64 1
  %142 = load %struct.TYPE_40__*, %struct.TYPE_40__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %147, i64 1
  %149 = load %struct.TYPE_40__*, %struct.TYPE_40__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i8* @v_wstrdup(%struct.TYPE_42__* %137, i8* %144, i32 %151)
  %153 = load %struct.TYPE_43__*, %struct.TYPE_43__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %156 = load i32, i32* @SC_EX_WAIT_YES, align 4
  %157 = call i32 @F_SET(%struct.TYPE_42__* %155, i32 %156)
  %158 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %159 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %160 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %166, i64 1
  %168 = load %struct.TYPE_40__*, %struct.TYPE_40__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* @FILTER_WRITE, align 4
  %172 = call i64 @ex_filter(%struct.TYPE_42__* %158, %struct.TYPE_44__* %159, %struct.TYPE_37__* %161, %struct.TYPE_38__* %163, i32* %8, i8* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %130
  store i32 1, i32* %4, align 4
  br label %397

175:                                              ; preds = %130
  %176 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %177 = load i32, i32* @SC_VI, align 4
  %178 = call i64 @F_ISSET(%struct.TYPE_42__* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %175
  %181 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %182 = load i32, i32* @SC_EX_SILENT, align 4
  %183 = call i64 @F_ISSET(%struct.TYPE_42__* %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %187 = call i32 @ex_puts(%struct.TYPE_42__* %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %180, %175
  store i32 0, i32* %4, align 4
  br label %397

189:                                              ; preds = %69, %65, %60
  %190 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp sle i32 %193, 1
  br i1 %194, label %195, label %207

195:                                              ; preds = %189
  %196 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %197 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, 1
  %202 = call i32 @db_exist(%struct.TYPE_42__* %196, i64 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %195
  %205 = load i32, i32* @FS_ALL, align 4
  %206 = call i32 @LF_SET(i32 %205)
  br label %207

207:                                              ; preds = %204, %195, %189
  %208 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %250

212:                                              ; preds = %207
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* @XIT, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %250

216:                                              ; preds = %212
  %217 = load i8*, i8** %11, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 62
  br i1 %221, label %222, label %250

222:                                              ; preds = %216
  %223 = load i8*, i8** %11, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 1
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 62
  br i1 %227, label %228, label %250

228:                                              ; preds = %222
  %229 = load i32, i32* @FS_APPEND, align 4
  %230 = call i32 @LF_SET(i32 %229)
  %231 = load i8*, i8** %11, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 2
  store i8* %232, i8** %11, align 8
  br label %233

233:                                              ; preds = %246, %228
  %234 = load i8*, i8** %11, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %233
  %239 = load i8*, i8** %11, align 8
  %240 = load i8, i8* %239, align 1
  %241 = call i64 @cmdskip(i8 signext %240)
  %242 = icmp ne i64 %241, 0
  br label %243

243:                                              ; preds = %238, %233
  %244 = phi i1 [ false, %233 ], [ %242, %238 ]
  br i1 %244, label %245, label %249

245:                                              ; preds = %243
  br label %246

246:                                              ; preds = %245
  %247 = load i8*, i8** %11, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %11, align 8
  br label %233

249:                                              ; preds = %243
  br label %250

250:                                              ; preds = %249, %222, %216, %212, %207
  %251 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load i8*, i8** %11, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %255, %250
  %261 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %262 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %264, i32 0, i32 1
  %266 = load i32, i32* %9, align 4
  %267 = call i32 @file_write(%struct.TYPE_42__* %261, %struct.TYPE_37__* %263, %struct.TYPE_38__* %265, i8* null, i32 %266)
  store i32 %267, i32* %4, align 4
  br label %397

268:                                              ; preds = %255
  %269 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %270 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %271 = load i8*, i8** %11, align 8
  %272 = load i8*, i8** %11, align 8
  %273 = call i32 @STRLEN(i8* %272)
  %274 = call i64 @argv_exp2(%struct.TYPE_42__* %269, %struct.TYPE_44__* %270, i8* %271, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %268
  store i32 1, i32* %4, align 4
  br label %397

277:                                              ; preds = %268
  %278 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  switch i32 %280, label %372 [
    i32 0, label %281
    i32 1, label %281
    i32 2, label %283
  ]

281:                                              ; preds = %277, %277
  %282 = call i32 (...) @abort() #3
  unreachable

283:                                              ; preds = %277
  %284 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %285 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %287, i64 1
  %289 = load %struct.TYPE_40__*, %struct.TYPE_40__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %292, i32 0, i32 3
  %294 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %294, i64 1
  %296 = load %struct.TYPE_40__*, %struct.TYPE_40__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = add nsw i32 %298, 1
  %300 = load i8*, i8** %13, align 8
  %301 = load i64, i64* %12, align 8
  %302 = call i32 @INT2CHAR(%struct.TYPE_42__* %284, i8* %291, i32 %299, i8* %300, i64 %301)
  %303 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %304 = load i8*, i8** %13, align 8
  %305 = load i64, i64* %12, align 8
  %306 = sub i64 %305, 1
  %307 = call i8* @v_strdup(%struct.TYPE_42__* %303, i8* %304, i64 %306)
  store i8* %307, i8** %10, align 8
  %308 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_42__*, %struct.TYPE_42__** %309, align 8
  %311 = load i32, i32* @FR_TMPFILE, align 4
  %312 = call i64 @F_ISSET(%struct.TYPE_42__* %310, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %367

314:                                              ; preds = %283
  %315 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_42__*, %struct.TYPE_42__** %316, align 8
  %318 = load i32, i32* @FR_EXNAMED, align 4
  %319 = call i64 @F_ISSET(%struct.TYPE_42__* %317, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %367, label %321

321:                                              ; preds = %314
  %322 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %323 = load i8*, i8** %10, align 8
  %324 = load i64, i64* %12, align 8
  %325 = sub i64 %324, 1
  %326 = call i8* @v_strdup(%struct.TYPE_42__* %322, i8* %323, i64 %325)
  store i8* %326, i8** %13, align 8
  %327 = icmp ne i8* %326, null
  br i1 %327, label %328, label %340

328:                                              ; preds = %321
  %329 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_42__*, %struct.TYPE_42__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %331, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8
  %334 = call i32 @free(i8* %333)
  %335 = load i8*, i8** %13, align 8
  %336 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_42__*, %struct.TYPE_42__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %338, i32 0, i32 0
  store i8* %335, i8** %339, align 8
  br label %340

340:                                              ; preds = %328, %321
  %341 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_42__*, %struct.TYPE_42__** %342, align 8
  %344 = load i32, i32* @FR_TMPEXIT, align 4
  %345 = load i32, i32* @FR_TMPFILE, align 4
  %346 = or i32 %344, %345
  %347 = call i32 @F_CLR(%struct.TYPE_42__* %343, i32 %346)
  %348 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %348, i32 0, i32 1
  %350 = load %struct.TYPE_42__*, %struct.TYPE_42__** %349, align 8
  %351 = load i32, i32* @FR_NAMECHANGE, align 4
  %352 = load i32, i32* @FR_EXNAMED, align 4
  %353 = or i32 %351, %352
  %354 = call i32 @F_SET(%struct.TYPE_42__* %350, i32 %353)
  %355 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %355, i32 0, i32 2
  %357 = load %struct.TYPE_41__*, %struct.TYPE_41__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %357, i32 0, i32 0
  %359 = load i32 (%struct.TYPE_42__*, i8*, i32)*, i32 (%struct.TYPE_42__*, i8*, i32)** %358, align 8
  %360 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %361 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_42__*, %struct.TYPE_42__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 %359(%struct.TYPE_42__* %360, i8* %365, i32 1)
  br label %371

367:                                              ; preds = %314, %283
  %368 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %369 = load i8*, i8** %10, align 8
  %370 = call i32 @set_alt_name(%struct.TYPE_42__* %368, i8* %369)
  br label %371

371:                                              ; preds = %367, %340
  br label %385

372:                                              ; preds = %277
  %373 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %374 = load i8*, i8** %11, align 8
  %375 = load i8*, i8** %11, align 8
  %376 = call i32 @STRLEN(i8* %375)
  %377 = add nsw i32 %376, 1
  %378 = load i8*, i8** %13, align 8
  %379 = load i64, i64* %12, align 8
  %380 = call i32 @INT2CHAR(%struct.TYPE_42__* %373, i8* %374, i32 %377, i8* %378, i64 %379)
  %381 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %382 = load i8*, i8** %13, align 8
  %383 = load i32, i32* @EXM_FILECOUNT, align 4
  %384 = call i32 @ex_emsg(%struct.TYPE_42__* %381, i8* %382, i32 %383)
  store i32 1, i32* %4, align 4
  br label %397

385:                                              ; preds = %371
  %386 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %387 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %387, i32 0, i32 2
  %389 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %389, i32 0, i32 1
  %391 = load i8*, i8** %10, align 8
  %392 = load i32, i32* %9, align 4
  %393 = call i32 @file_write(%struct.TYPE_42__* %386, %struct.TYPE_37__* %388, %struct.TYPE_38__* %390, i8* %391, i32 %392)
  store i32 %393, i32* %14, align 4
  %394 = load i8*, i8** %10, align 8
  %395 = call i32 @free(i8* %394)
  %396 = load i32, i32* %14, align 4
  store i32 %396, i32* %4, align 4
  br label %397

397:                                              ; preds = %385, %372, %276, %260, %188, %174, %129, %112, %79
  %398 = load i32, i32* %4, align 4
  ret i32 %398
}

declare dso_local i32 @NEEDFILE(%struct.TYPE_42__*, %struct.TYPE_44__*) #1

declare dso_local i32 @LF_INIT(i32) #1

declare dso_local i64 @FL_ISSET(i32, i32) #1

declare dso_local i32 @LF_SET(i32) #1

declare dso_local i64 @cmdskip(i8 signext) #1

declare dso_local i64 @O_ISSET(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @ex_wemsg(%struct.TYPE_42__*, i32, i32) #1

declare dso_local i32 @ex_emsg(%struct.TYPE_42__*, i8*, i32) #1

declare dso_local i64 @argv_exp1(%struct.TYPE_42__*, %struct.TYPE_44__*, i8*, i32, i32) #1

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local %struct.TYPE_43__* @EXP(%struct.TYPE_42__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @v_wstrdup(%struct.TYPE_42__*, i8*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_42__*, i32) #1

declare dso_local i64 @ex_filter(%struct.TYPE_42__*, %struct.TYPE_44__*, %struct.TYPE_37__*, %struct.TYPE_38__*, i32*, i8*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @ex_puts(%struct.TYPE_42__*, i8*) #1

declare dso_local i32 @db_exist(%struct.TYPE_42__*, i64) #1

declare dso_local i32 @file_write(%struct.TYPE_42__*, %struct.TYPE_37__*, %struct.TYPE_38__*, i8*, i32) #1

declare dso_local i64 @argv_exp2(%struct.TYPE_42__*, %struct.TYPE_44__*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @INT2CHAR(%struct.TYPE_42__*, i8*, i32, i8*, i64) #1

declare dso_local i8* @v_strdup(%struct.TYPE_42__*, i8*, i64) #1

declare dso_local i32 @F_CLR(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @set_alt_name(%struct.TYPE_42__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
