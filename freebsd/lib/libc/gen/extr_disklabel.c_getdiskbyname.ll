; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_disklabel.c_getdiskbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_disklabel.c_getdiskbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disklabel = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32*, i8*, i8*, %struct.partition*, i32 }
%struct.partition = type { i64, i64, i32, i64, i32 }

@getdiskbyname.disk = internal global %struct.disklabel zeroinitializer, align 8
@_PATH_DISKTAB = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"ty\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"removable\00", align 1
@D_REMOVABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"simulated\00", align 1
@D_RAMDISK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"sf\00", align 1
@D_BADSECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"se\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@dktypenames = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"sc\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"il\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"sk\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"bs\00", align 1
@BBSIZE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"bx\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"fx\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"ox\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@MAXPARTITIONS = common dso_local global i8 0, align 1
@fstypenames = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"dx\00", align 1
@NDDATA = common dso_local global i8 0, align 1
@DISKMAGIC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.disklabel* @getdiskbyname(i8* %0) #0 {
  %2 = alloca %struct.disklabel*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.disklabel*, align 8
  %5 = alloca %struct.partition*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [3 x i8], align 1
  %13 = alloca [3 x i8], align 1
  %14 = alloca [3 x i8], align 1
  %15 = alloca [3 x i8], align 1
  %16 = alloca [3 x i8], align 1
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.disklabel* @getdiskbyname.disk, %struct.disklabel** %4, align 8
  %38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %39 = load i8*, i8** @_PATH_DISKTAB, align 8
  store i8* %39, i8** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* null, i8** %40, align 8
  %41 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @cgetent(i8** %6, i8** %41, i8* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  store %struct.disklabel* null, %struct.disklabel** %2, align 8
  br label %493

46:                                               ; preds = %1
  %47 = call i32 @bzero(i8* bitcast (%struct.disklabel* @getdiskbyname.disk to i8*), i32 112)
  %48 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %49 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %78, %46
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %55 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 8
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  %59 = icmp ult i8* %53, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %52
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %9, align 8
  store i8 %62, i8* %63, align 1
  %64 = sext i8 %62 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 124
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 58
  br label %76

76:                                               ; preds = %71, %66, %60, %52
  %77 = phi i1 [ false, %66 ], [ false, %60 ], [ false, %52 ], [ %75, %71 ]
  br i1 %77, label %78, label %83

78:                                               ; preds = %76
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %8, align 8
  br label %52

83:                                               ; preds = %76
  %84 = load i8*, i8** %9, align 8
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %6, align 8
  %86 = call i64 @cgetstr(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9)
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %115

88:                                               ; preds = %83
  %89 = load i8*, i8** %9, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* @D_REMOVABLE, align 4
  %94 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %95 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %94, i32 0, i32 21
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %112

98:                                               ; preds = %88
  %99 = load i8*, i8** %9, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i8*, i8** %9, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* @D_RAMDISK, align 4
  %107 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %108 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %107, i32 0, i32 21
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %101, %98
  br label %112

112:                                              ; preds = %111, %92
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @free(i8* %113)
  br label %115

115:                                              ; preds = %112, %83
  %116 = load i8*, i8** %6, align 8
  %117 = call i32* @cgetcap(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8 signext 58)
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i32, i32* @D_BADSECT, align 4
  %121 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %122 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %121, i32 0, i32 21
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %115
  %126 = load i8*, i8** %6, align 8
  %127 = call i64 @cgetnum(i8* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64* %18)
  %128 = icmp eq i64 %127, -1
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* @DEV_BSIZE, align 4
  %131 = sext i32 %130 to i64
  br label %134

132:                                              ; preds = %125
  %133 = load i64, i64* %18, align 8
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i64 [ %131, %129 ], [ %133, %132 ]
  %136 = trunc i64 %135 to i32
  %137 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %138 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = call i64 @cgetnum(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64* %19)
  %141 = icmp eq i64 %140, -1
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %145

143:                                              ; preds = %134
  %144 = load i64, i64* %19, align 8
  br label %145

145:                                              ; preds = %143, %142
  %146 = phi i64 [ 0, %142 ], [ %144, %143 ]
  %147 = trunc i64 %146 to i32
  %148 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %149 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load i8*, i8** %6, align 8
  %151 = call i64 @cgetnum(i8* %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64* %20)
  %152 = icmp eq i64 %151, -1
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %156

154:                                              ; preds = %145
  %155 = load i64, i64* %20, align 8
  br label %156

156:                                              ; preds = %154, %153
  %157 = phi i64 [ 0, %153 ], [ %155, %154 ]
  %158 = trunc i64 %157 to i32
  %159 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %160 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = call i64 @cgetnum(i8* %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64* %21)
  %163 = icmp eq i64 %162, -1
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %167

165:                                              ; preds = %156
  %166 = load i64, i64* %21, align 8
  br label %167

167:                                              ; preds = %165, %164
  %168 = phi i64 [ 0, %164 ], [ %166, %165 ]
  %169 = trunc i64 %168 to i32
  %170 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %171 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  %172 = load i8*, i8** %6, align 8
  %173 = call i64 @cgetstr(i8* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %9)
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %167
  %176 = load i8*, i8** %9, align 8
  %177 = load i32, i32* @dktypenames, align 4
  %178 = call i8* @gettype(i8* %176, i32 %177)
  %179 = ptrtoint i8* %178 to i32
  %180 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %181 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 @free(i8* %182)
  br label %196

184:                                              ; preds = %167
  %185 = load i8*, i8** %6, align 8
  %186 = call i64 @cgetnum(i8* %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64* %22)
  %187 = icmp eq i64 %186, -1
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  br label %191

189:                                              ; preds = %184
  %190 = load i64, i64* %22, align 8
  br label %191

191:                                              ; preds = %189, %188
  %192 = phi i64 [ 0, %188 ], [ %190, %189 ]
  %193 = trunc i64 %192 to i32
  %194 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %195 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %194, i32 0, i32 5
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %191, %175
  %197 = load i8*, i8** %6, align 8
  %198 = call i64 @cgetnum(i8* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64* %23)
  %199 = icmp eq i64 %198, -1
  br i1 %199, label %200, label %209

200:                                              ; preds = %196
  %201 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %202 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %205 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %203, %206
  %208 = sext i32 %207 to i64
  br label %211

209:                                              ; preds = %196
  %210 = load i64, i64* %23, align 8
  br label %211

211:                                              ; preds = %209, %200
  %212 = phi i64 [ %208, %200 ], [ %210, %209 ]
  %213 = trunc i64 %212 to i32
  %214 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %215 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %214, i32 0, i32 6
  store i32 %213, i32* %215, align 4
  %216 = load i8*, i8** %6, align 8
  %217 = call i64 @cgetnum(i8* %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64* %24)
  %218 = icmp eq i64 %217, -1
  br i1 %218, label %219, label %228

219:                                              ; preds = %211
  %220 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %221 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %224 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = mul nsw i32 %222, %225
  %227 = sext i32 %226 to i64
  br label %230

228:                                              ; preds = %211
  %229 = load i64, i64* %24, align 8
  br label %230

230:                                              ; preds = %228, %219
  %231 = phi i64 [ %227, %219 ], [ %229, %228 ]
  %232 = trunc i64 %231 to i32
  %233 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %234 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %233, i32 0, i32 7
  store i32 %232, i32* %234, align 8
  %235 = load i8*, i8** %6, align 8
  %236 = call i64 @cgetnum(i8* %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64* %25)
  %237 = icmp eq i64 %236, -1
  br i1 %237, label %238, label %239

238:                                              ; preds = %230
  br label %241

239:                                              ; preds = %230
  %240 = load i64, i64* %25, align 8
  br label %241

241:                                              ; preds = %239, %238
  %242 = phi i64 [ 3600, %238 ], [ %240, %239 ]
  %243 = trunc i64 %242 to i32
  %244 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %245 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %244, i32 0, i32 8
  store i32 %243, i32* %245, align 4
  %246 = load i8*, i8** %6, align 8
  %247 = call i64 @cgetnum(i8* %246, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64* %26)
  %248 = icmp eq i64 %247, -1
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  br label %252

250:                                              ; preds = %241
  %251 = load i64, i64* %26, align 8
  br label %252

252:                                              ; preds = %250, %249
  %253 = phi i64 [ 1, %249 ], [ %251, %250 ]
  %254 = trunc i64 %253 to i32
  %255 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %256 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %255, i32 0, i32 9
  store i32 %254, i32* %256, align 8
  %257 = load i8*, i8** %6, align 8
  %258 = call i64 @cgetnum(i8* %257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64* %27)
  %259 = icmp eq i64 %258, -1
  br i1 %259, label %260, label %261

260:                                              ; preds = %252
  br label %263

261:                                              ; preds = %252
  %262 = load i64, i64* %27, align 8
  br label %263

263:                                              ; preds = %261, %260
  %264 = phi i64 [ 0, %260 ], [ %262, %261 ]
  %265 = trunc i64 %264 to i32
  %266 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %267 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %266, i32 0, i32 10
  store i32 %265, i32* %267, align 4
  %268 = load i8*, i8** %6, align 8
  %269 = call i64 @cgetnum(i8* %268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i64* %28)
  %270 = icmp eq i64 %269, -1
  br i1 %270, label %271, label %272

271:                                              ; preds = %263
  br label %274

272:                                              ; preds = %263
  %273 = load i64, i64* %28, align 8
  br label %274

274:                                              ; preds = %272, %271
  %275 = phi i64 [ 0, %271 ], [ %273, %272 ]
  %276 = trunc i64 %275 to i32
  %277 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %278 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %277, i32 0, i32 11
  store i32 %276, i32* %278, align 8
  %279 = load i8*, i8** %6, align 8
  %280 = call i64 @cgetnum(i8* %279, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64* %29)
  %281 = icmp eq i64 %280, -1
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  br label %285

283:                                              ; preds = %274
  %284 = load i64, i64* %29, align 8
  br label %285

285:                                              ; preds = %283, %282
  %286 = phi i64 [ 0, %282 ], [ %284, %283 ]
  %287 = trunc i64 %286 to i32
  %288 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %289 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %288, i32 0, i32 12
  store i32 %287, i32* %289, align 4
  %290 = load i8*, i8** %6, align 8
  %291 = call i64 @cgetnum(i8* %290, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64* %30)
  %292 = icmp eq i64 %291, -1
  br i1 %292, label %293, label %294

293:                                              ; preds = %285
  br label %296

294:                                              ; preds = %285
  %295 = load i64, i64* %30, align 8
  br label %296

296:                                              ; preds = %294, %293
  %297 = phi i64 [ 0, %293 ], [ %295, %294 ]
  %298 = trunc i64 %297 to i32
  %299 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %300 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %299, i32 0, i32 13
  store i32 %298, i32* %300, align 8
  %301 = load i8*, i8** %6, align 8
  %302 = call i64 @cgetnum(i8* %301, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64* %31)
  %303 = icmp eq i64 %302, -1
  br i1 %303, label %304, label %307

304:                                              ; preds = %296
  %305 = load i32, i32* @BBSIZE, align 4
  %306 = sext i32 %305 to i64
  br label %309

307:                                              ; preds = %296
  %308 = load i64, i64* %31, align 8
  br label %309

309:                                              ; preds = %307, %304
  %310 = phi i64 [ %306, %304 ], [ %308, %307 ]
  %311 = trunc i64 %310 to i32
  %312 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %313 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %312, i32 0, i32 14
  store i32 %311, i32* %313, align 4
  %314 = load i8*, i8** %6, align 8
  %315 = call i64 @cgetnum(i8* %314, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i64* %32)
  %316 = icmp eq i64 %315, -1
  br i1 %316, label %317, label %318

317:                                              ; preds = %309
  br label %320

318:                                              ; preds = %309
  %319 = load i64, i64* %32, align 8
  br label %320

320:                                              ; preds = %318, %317
  %321 = phi i64 [ 0, %317 ], [ %319, %318 ]
  %322 = trunc i64 %321 to i32
  %323 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %324 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %323, i32 0, i32 15
  store i32 %322, i32* %324, align 8
  %325 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %326 = call i32 @strcpy(i8* %325, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %327 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %328 = call i32 @strcpy(i8* %327, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %329 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %330 = call i32 @strcpy(i8* %329, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %331 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %332 = call i32 @strcpy(i8* %331, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %333 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %334 = call i32 @strcpy(i8* %333, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  store i8 96, i8* %11, align 1
  %335 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %336 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %335, i32 0, i32 20
  %337 = load %struct.partition*, %struct.partition** %336, align 8
  %338 = getelementptr inbounds %struct.partition, %struct.partition* %337, i64 0
  store %struct.partition* %338, %struct.partition** %5, align 8
  store i8 97, i8* %10, align 1
  br label %339

339:                                              ; preds = %439, %320
  %340 = load i8, i8* %10, align 1
  %341 = sext i8 %340 to i32
  %342 = load i8, i8* @MAXPARTITIONS, align 1
  %343 = sext i8 %342 to i32
  %344 = add nsw i32 97, %343
  %345 = icmp slt i32 %341, %344
  br i1 %345, label %346, label %444

346:                                              ; preds = %339
  %347 = load i8, i8* %10, align 1
  %348 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 1
  store i8 %347, i8* %348, align 1
  %349 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  store i8 %347, i8* %349, align 1
  %350 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 1
  store i8 %347, i8* %350, align 1
  %351 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 1
  store i8 %347, i8* %351, align 1
  %352 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  store i8 %347, i8* %352, align 1
  %353 = load i8*, i8** %6, align 8
  %354 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %355 = call i64 @cgetnum(i8* %353, i8* %354, i64* %33)
  %356 = icmp eq i64 %355, -1
  br i1 %356, label %357, label %360

357:                                              ; preds = %346
  %358 = load %struct.partition*, %struct.partition** %5, align 8
  %359 = getelementptr inbounds %struct.partition, %struct.partition* %358, i32 0, i32 0
  store i64 0, i64* %359, align 8
  br label %438

360:                                              ; preds = %346
  %361 = load i64, i64* %33, align 8
  %362 = load %struct.partition*, %struct.partition** %5, align 8
  %363 = getelementptr inbounds %struct.partition, %struct.partition* %362, i32 0, i32 0
  store i64 %361, i64* %363, align 8
  %364 = load i8*, i8** %6, align 8
  %365 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %366 = call i64 @cgetnum(i8* %364, i8* %365, i64* %33)
  %367 = load i64, i64* %33, align 8
  %368 = load %struct.partition*, %struct.partition** %5, align 8
  %369 = getelementptr inbounds %struct.partition, %struct.partition* %368, i32 0, i32 1
  store i64 %367, i64* %369, align 8
  %370 = load i8*, i8** %6, align 8
  %371 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %372 = call i64 @cgetnum(i8* %370, i8* %371, i64* %34)
  %373 = icmp eq i64 %372, -1
  br i1 %373, label %374, label %375

374:                                              ; preds = %360
  br label %377

375:                                              ; preds = %360
  %376 = load i64, i64* %34, align 8
  br label %377

377:                                              ; preds = %375, %374
  %378 = phi i64 [ 0, %374 ], [ %376, %375 ]
  %379 = trunc i64 %378 to i32
  %380 = load %struct.partition*, %struct.partition** %5, align 8
  %381 = getelementptr inbounds %struct.partition, %struct.partition* %380, i32 0, i32 2
  store i32 %379, i32* %381, align 8
  %382 = load %struct.partition*, %struct.partition** %5, align 8
  %383 = getelementptr inbounds %struct.partition, %struct.partition* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %404

386:                                              ; preds = %377
  %387 = load i8*, i8** %6, align 8
  %388 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %389 = call i64 @cgetnum(i8* %387, i8* %388, i64* %35)
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %391, label %400

391:                                              ; preds = %386
  %392 = load i64, i64* %35, align 8
  %393 = load %struct.partition*, %struct.partition** %5, align 8
  %394 = getelementptr inbounds %struct.partition, %struct.partition* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = sext i32 %395 to i64
  %397 = sdiv i64 %392, %396
  %398 = load %struct.partition*, %struct.partition** %5, align 8
  %399 = getelementptr inbounds %struct.partition, %struct.partition* %398, i32 0, i32 3
  store i64 %397, i64* %399, align 8
  br label %403

400:                                              ; preds = %386
  %401 = load %struct.partition*, %struct.partition** %5, align 8
  %402 = getelementptr inbounds %struct.partition, %struct.partition* %401, i32 0, i32 3
  store i64 8, i64* %402, align 8
  br label %403

403:                                              ; preds = %400, %391
  br label %404

404:                                              ; preds = %403, %377
  %405 = load i8*, i8** %6, align 8
  %406 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %407 = call i64 @cgetnum(i8* %405, i8* %406, i64* %36)
  %408 = icmp eq i64 %407, -1
  br i1 %408, label %409, label %410

409:                                              ; preds = %404
  br label %412

410:                                              ; preds = %404
  %411 = load i64, i64* %36, align 8
  br label %412

412:                                              ; preds = %410, %409
  %413 = phi i64 [ 0, %409 ], [ %411, %410 ]
  %414 = trunc i64 %413 to i32
  %415 = load %struct.partition*, %struct.partition** %5, align 8
  %416 = getelementptr inbounds %struct.partition, %struct.partition* %415, i32 0, i32 4
  store i32 %414, i32* %416, align 8
  %417 = load %struct.partition*, %struct.partition** %5, align 8
  %418 = getelementptr inbounds %struct.partition, %struct.partition* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 8
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %436

421:                                              ; preds = %412
  %422 = load i8*, i8** %6, align 8
  %423 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %424 = call i64 @cgetstr(i8* %422, i8* %423, i8** %9)
  %425 = icmp sge i64 %424, 0
  br i1 %425, label %426, label %435

426:                                              ; preds = %421
  %427 = load i8*, i8** %9, align 8
  %428 = load i32, i32* @fstypenames, align 4
  %429 = call i8* @gettype(i8* %427, i32 %428)
  %430 = ptrtoint i8* %429 to i32
  %431 = load %struct.partition*, %struct.partition** %5, align 8
  %432 = getelementptr inbounds %struct.partition, %struct.partition* %431, i32 0, i32 4
  store i32 %430, i32* %432, align 8
  %433 = load i8*, i8** %9, align 8
  %434 = call i32 @free(i8* %433)
  br label %435

435:                                              ; preds = %426, %421
  br label %436

436:                                              ; preds = %435, %412
  %437 = load i8, i8* %10, align 1
  store i8 %437, i8* %11, align 1
  br label %438

438:                                              ; preds = %436, %357
  br label %439

439:                                              ; preds = %438
  %440 = load i8, i8* %10, align 1
  %441 = add i8 %440, 1
  store i8 %441, i8* %10, align 1
  %442 = load %struct.partition*, %struct.partition** %5, align 8
  %443 = getelementptr inbounds %struct.partition, %struct.partition* %442, i32 1
  store %struct.partition* %443, %struct.partition** %5, align 8
  br label %339

444:                                              ; preds = %339
  %445 = load i8, i8* %11, align 1
  %446 = sext i8 %445 to i32
  %447 = add nsw i32 %446, 1
  %448 = sub nsw i32 %447, 97
  %449 = trunc i32 %448 to i8
  %450 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %451 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %450, i32 0, i32 16
  store i8 %449, i8* %451, align 4
  %452 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %453 = call i32 @strcpy(i8* %452, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %454 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %455 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %454, i32 0, i32 17
  %456 = load i32*, i32** %455, align 8
  store i32* %456, i32** %17, align 8
  store i8 48, i8* %10, align 1
  br label %457

457:                                              ; preds = %478, %444
  %458 = load i8, i8* %10, align 1
  %459 = sext i8 %458 to i32
  %460 = load i8, i8* @NDDATA, align 1
  %461 = sext i8 %460 to i32
  %462 = add nsw i32 48, %461
  %463 = icmp slt i32 %459, %462
  br i1 %463, label %464, label %483

464:                                              ; preds = %457
  %465 = load i8, i8* %10, align 1
  %466 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  store i8 %465, i8* %466, align 1
  %467 = load i8*, i8** %6, align 8
  %468 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %469 = call i64 @cgetnum(i8* %467, i8* %468, i64* %37)
  %470 = icmp eq i64 %469, -1
  br i1 %470, label %471, label %472

471:                                              ; preds = %464
  br label %474

472:                                              ; preds = %464
  %473 = load i64, i64* %37, align 8
  br label %474

474:                                              ; preds = %472, %471
  %475 = phi i64 [ 0, %471 ], [ %473, %472 ]
  %476 = trunc i64 %475 to i32
  %477 = load i32*, i32** %17, align 8
  store i32 %476, i32* %477, align 4
  br label %478

478:                                              ; preds = %474
  %479 = load i8, i8* %10, align 1
  %480 = add i8 %479, 1
  store i8 %480, i8* %10, align 1
  %481 = load i32*, i32** %17, align 8
  %482 = getelementptr inbounds i32, i32* %481, i32 1
  store i32* %482, i32** %17, align 8
  br label %457

483:                                              ; preds = %457
  %484 = load i8*, i8** @DISKMAGIC, align 8
  %485 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %486 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %485, i32 0, i32 19
  store i8* %484, i8** %486, align 8
  %487 = load i8*, i8** @DISKMAGIC, align 8
  %488 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %489 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %488, i32 0, i32 18
  store i8* %487, i8** %489, align 8
  %490 = load i8*, i8** %6, align 8
  %491 = call i32 @free(i8* %490)
  %492 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  store %struct.disklabel* %492, %struct.disklabel** %2, align 8
  br label %493

493:                                              ; preds = %483, %45
  %494 = load %struct.disklabel*, %struct.disklabel** %2, align 8
  ret %struct.disklabel* %494
}

declare dso_local i64 @cgetent(i8**, i8**, i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @cgetstr(i8*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @cgetcap(i8*, i8*, i8 signext) #1

declare dso_local i64 @cgetnum(i8*, i8*, i64*) #1

declare dso_local i8* @gettype(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
