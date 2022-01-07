; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32 (%struct.cfg*, i32, i8**)* }
%struct.cfg = type { i8*, i64, i32, %struct.TYPE_3__, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"/dev/etherswitch0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"f:mv?\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Can't open control file: %s\00", align 1
@IOETHERSWITCHGETINFO = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHGETINFO)\00", align 1
@IOETHERSWITCHGETCONF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHGETCONF)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"port%d\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"port unit must be between 0 and %d\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"vlangroup%d\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"vlangroup unit must be between 0 and %d\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"atu\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Unknown command \22%s\22\00", align 1
@cmds = common dso_local global %struct.TYPE_4__* null, align 8
@.str.16 = private unnamed_addr constant [24 x i8] c"%s needs %d argument%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 @bzero(%struct.cfg* %7, i32 48)
  %11 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %31 [
    i32 102, label %19
    i32 109, label %22
    i32 118, label %26
    i32 63, label %30
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @optarg, align 8
  %21 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  br label %34

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %34

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  br label %34

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %17, %30
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @usage(%struct.cfg* %7, i8** %32)
  br label %34

34:                                               ; preds = %31, %26, %22, %19
  br label %12

35:                                               ; preds = %12
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  %44 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @O_RDONLY, align 4
  %47 = call i64 @open(i8* %45, i32 %46)
  %48 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %35
  %53 = load i32, i32* @EX_UNAVAILABLE, align 4
  %54 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i32, i8*, ...) @err(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %52, %35
  %58 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @IOETHERSWITCHGETINFO, align 4
  %61 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 3
  %62 = call i64 @ioctl(i64 %59, i32 %60, %struct.TYPE_3__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EX_OSERR, align 4
  %66 = call i32 (i32, i8*, ...) @err(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %57
  %68 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @IOETHERSWITCHGETCONF, align 4
  %71 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 5
  %72 = call i64 @ioctl(i64 %69, i32 %70, %struct.TYPE_3__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @EX_OSERR, align 4
  %76 = call i32 (i32, i8*, ...) @err(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @print_info(%struct.cfg* %7)
  store i32 0, i32* %3, align 4
  br label %357

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 2
  store i32 132, i32* %83, align 8
  br label %84

84:                                               ; preds = %347, %344, %335, %326, %82
  %85 = load i32, i32* %4, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %352

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %347 [
    i32 132, label %90
    i32 130, label %211
    i32 133, label %211
    i32 128, label %211
    i32 134, label %211
    i32 129, label %329
    i32 131, label %338
  ]

90:                                               ; preds = %87
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = call i32 @print_info(%struct.cfg* %7)
  br label %210

98:                                               ; preds = %90
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 4
  %103 = call i32 @sscanf(i8* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %102)
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %127

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %111, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %109, %105
  %117 = load i32, i32* @EX_USAGE, align 4
  %118 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @errx(i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %116, %109
  %126 = call i32 @newmode(%struct.cfg* %7, i32 130)
  br label %209

127:                                              ; preds = %98
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 4
  %132 = call i32 @sscanf(i8* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %131)
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %156

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp sge i32 %140, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %138, %134
  %146 = load i32, i32* @EX_USAGE, align 4
  %147 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = call i32 @errx(i32 %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %145, %138
  %155 = call i32 @newmode(%struct.cfg* %7, i32 128)
  br label %208

156:                                              ; preds = %127
  %157 = load i8**, i8*** %5, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = call i32 @newmode(%struct.cfg* %7, i32 133)
  br label %207

164:                                              ; preds = %156
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = call i32 @newmode(%struct.cfg* %7, i32 131)
  br label %206

172:                                              ; preds = %164
  %173 = load i8**, i8*** %5, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = call i32 @newmode(%struct.cfg* %7, i32 129)
  br label %205

180:                                              ; preds = %172
  %181 = load i8**, i8*** %5, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @strcmp(i8* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load i8**, i8*** %5, align 8
  %188 = call i32 @usage(%struct.cfg* %7, i8** %187)
  br label %204

189:                                              ; preds = %180
  %190 = load i8**, i8*** %5, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = call i32 @newmode(%struct.cfg* %7, i32 134)
  br label %203

197:                                              ; preds = %189
  %198 = load i32, i32* @EX_USAGE, align 4
  %199 = load i8**, i8*** %5, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @errx(i32 %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %197, %195
  br label %204

204:                                              ; preds = %203, %186
  br label %205

205:                                              ; preds = %204, %178
  br label %206

206:                                              ; preds = %205, %170
  br label %207

207:                                              ; preds = %206, %162
  br label %208

208:                                              ; preds = %207, %154
  br label %209

209:                                              ; preds = %208, %125
  br label %210

210:                                              ; preds = %209, %96
  br label %347

211:                                              ; preds = %87, %87, %87, %87
  store i32 0, i32* %8, align 4
  br label %212

212:                                              ; preds = %315, %211
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmds, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %318

220:                                              ; preds = %212
  %221 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmds, align 8
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %222, %228
  br i1 %229, label %230, label %314

230:                                              ; preds = %220
  %231 = load i8**, i8*** %5, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 0
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmds, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @strcmp(i8* %233, i8* %239)
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %314

242:                                              ; preds = %230
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmds, align 8
  %244 = load i32, i32* %8, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, -1
  br i1 %249, label %250, label %283

250:                                              ; preds = %242
  %251 = load i32, i32* %4, align 4
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmds, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  %259 = icmp slt i32 %251, %258
  br i1 %259, label %260, label %283

260:                                              ; preds = %250
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmds, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmds, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmds, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %278, 1
  %280 = zext i1 %279 to i64
  %281 = select i1 %279, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)
  %282 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* %266, i32 %272, i8* %281)
  br label %318

283:                                              ; preds = %250, %242
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmds, align 8
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 3
  %289 = load i32 (%struct.cfg*, i32, i8**)*, i32 (%struct.cfg*, i32, i8**)** %288, align 8
  %290 = load i32, i32* %4, align 4
  %291 = load i8**, i8*** %5, align 8
  %292 = call i32 %289(%struct.cfg* %7, i32 %290, i8** %291)
  store i32 %292, i32* %9, align 4
  %293 = load i32, i32* %9, align 4
  %294 = icmp eq i32 %293, -1
  br i1 %294, label %295, label %296

295:                                              ; preds = %283
  store i32 0, i32* %4, align 4
  br label %318

296:                                              ; preds = %283
  %297 = load i32, i32* %9, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %296
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmds, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %9, align 4
  br label %306

306:                                              ; preds = %299, %296
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* %4, align 4
  %309 = sub nsw i32 %308, %307
  store i32 %309, i32* %4, align 4
  %310 = load i32, i32* %9, align 4
  %311 = load i8**, i8*** %5, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i8*, i8** %311, i64 %312
  store i8** %313, i8*** %5, align 8
  br label %318

314:                                              ; preds = %230, %220
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %8, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %8, align 4
  br label %212

318:                                              ; preds = %306, %295, %260, %212
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmds, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = icmp eq i8* %324, null
  br i1 %325, label %326, label %328

326:                                              ; preds = %318
  %327 = call i32 @newmode(%struct.cfg* %7, i32 132)
  br label %84

328:                                              ; preds = %318
  br label %347

329:                                              ; preds = %87
  %330 = load i8**, i8*** %5, align 8
  %331 = getelementptr inbounds i8*, i8** %330, i64 0
  %332 = load i8*, i8** %331, align 8
  %333 = call i32 @set_register(%struct.cfg* %7, i8* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %329
  %336 = call i32 @newmode(%struct.cfg* %7, i32 132)
  br label %84

337:                                              ; preds = %329
  br label %347

338:                                              ; preds = %87
  %339 = load i8**, i8*** %5, align 8
  %340 = getelementptr inbounds i8*, i8** %339, i64 0
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @set_phyregister(%struct.cfg* %7, i8* %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %338
  %345 = call i32 @newmode(%struct.cfg* %7, i32 132)
  br label %84

346:                                              ; preds = %338
  br label %347

347:                                              ; preds = %87, %346, %337, %328, %210
  %348 = load i32, i32* %4, align 4
  %349 = add nsw i32 %348, -1
  store i32 %349, i32* %4, align 4
  %350 = load i8**, i8*** %5, align 8
  %351 = getelementptr inbounds i8*, i8** %350, i32 1
  store i8** %351, i8*** %5, align 8
  br label %84

352:                                              ; preds = %84
  %353 = call i32 @newmode(%struct.cfg* %7, i32 132)
  %354 = getelementptr inbounds %struct.cfg, %struct.cfg* %7, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = call i32 @close(i64 %355)
  store i32 0, i32* %3, align 4
  br label %357

357:                                              ; preds = %352, %80
  %358 = load i32, i32* %3, align 4
  ret i32 %358
}

declare dso_local i32 @bzero(%struct.cfg*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(%struct.cfg*, i8**) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @ioctl(i64, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @print_info(%struct.cfg*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @newmode(%struct.cfg*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @set_register(%struct.cfg*, i8*) #1

declare dso_local i32 @set_phyregister(%struct.cfg*, i8*) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
