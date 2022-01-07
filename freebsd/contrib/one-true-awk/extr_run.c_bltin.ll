; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_bltin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_bltin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"atan2 requires two arguments; returning 1.0\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"and requires two arguments; returning 0\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"or requires two arguments; returning 0\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"xor requires two arguments; returning 0\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"lshift requires two arguments; returning 0\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"rshift requires two arguments; returning 0\00", align 1
@stdout = common dso_local global i32* null, align 8
@srand_seed = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"illegal function type %d\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"warning: function has too many arguments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @bltin(%struct.TYPE_17__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_17__** %0, %struct.TYPE_17__*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %17, i64 0
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = call i32 @ptoi(%struct.TYPE_17__* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %21, i64 1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = call %struct.TYPE_18__* @execute(%struct.TYPE_17__* %23)
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %6, align 8
  %25 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %25, i64 1
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %14, align 8
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %353 [
    i32 139, label %31
    i32 138, label %47
    i32 140, label %52
    i32 143, label %56
    i32 133, label %61
    i32 134, label %66
    i32 144, label %70
    i32 146, label %74
    i32 145, label %97
    i32 147, label %101
    i32 141, label %126
    i32 128, label %151
    i32 137, label %176
    i32 135, label %198
    i32 131, label %220
    i32 136, label %248
    i32 132, label %253
    i32 129, label %269
    i32 130, label %269
    i32 142, label %331
  ]

31:                                               ; preds = %2
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = call i32 @isarr(%struct.TYPE_18__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_19__*
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = call i32 @getsval(%struct.TYPE_18__* %43)
  %45 = call i32 @strlen(i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %42, %35
  br label %356

47:                                               ; preds = %2
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = call i32 @getfval(%struct.TYPE_18__* %48)
  %50 = call i32 @log(i32 %49)
  %51 = call i32 @errcheck(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %51, i32* %8, align 4
  br label %356

52:                                               ; preds = %2
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %54 = call i32 @getfval(%struct.TYPE_18__* %53)
  %55 = call i32 @modf(i32 %54, i32* %8)
  br label %356

56:                                               ; preds = %2
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = call i32 @getfval(%struct.TYPE_18__* %57)
  %59 = call i32 @exp(i32 %58)
  %60 = call i32 @errcheck(i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %60, i32* %8, align 4
  br label %356

61:                                               ; preds = %2
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %63 = call i32 @getfval(%struct.TYPE_18__* %62)
  %64 = call i32 @sqrt(i32 %63)
  %65 = call i32 @errcheck(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %65, i32* %8, align 4
  br label %356

66:                                               ; preds = %2
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = call i32 @getfval(%struct.TYPE_18__* %67)
  %69 = call i32 @sin(i32 %68)
  store i32 %69, i32* %8, align 4
  br label %356

70:                                               ; preds = %2
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = call i32 @getfval(%struct.TYPE_18__* %71)
  %73 = call i32 @cos(i32 %72)
  store i32 %73, i32* %8, align 4
  br label %356

74:                                               ; preds = %2
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %76 = icmp eq %struct.TYPE_17__* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @WARNING(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %96

79:                                               ; preds = %74
  %80 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %80, i64 1
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = call %struct.TYPE_18__* @execute(%struct.TYPE_17__* %84)
  store %struct.TYPE_18__* %85, %struct.TYPE_18__** %7, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = call i32 @getfval(%struct.TYPE_18__* %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %89 = call i32 @getfval(%struct.TYPE_18__* %88)
  %90 = call i32 @atan2(i32 %87, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %92 = call i32 @tempfree(%struct.TYPE_18__* %91)
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  store %struct.TYPE_17__* %95, %struct.TYPE_17__** %14, align 8
  br label %96

96:                                               ; preds = %79, %77
  br label %356

97:                                               ; preds = %2
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %99 = call i32 @getfval(%struct.TYPE_18__* %98)
  %100 = xor i32 %99, -1
  store i32 %100, i32* %8, align 4
  br label %356

101:                                              ; preds = %2
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %103 = icmp eq %struct.TYPE_17__* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 @WARNING(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %356

106:                                              ; preds = %101
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %108 = call i32 @getfval(%struct.TYPE_18__* %107)
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %112, %106
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %111 = icmp ne %struct.TYPE_17__* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %114 = call %struct.TYPE_18__* @execute(%struct.TYPE_17__* %113)
  store %struct.TYPE_18__* %114, %struct.TYPE_18__** %7, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %116 = call i32 @getfval(%struct.TYPE_18__* %115)
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %120 = call i32 @tempfree(%struct.TYPE_18__* %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  store %struct.TYPE_17__* %123, %struct.TYPE_17__** %14, align 8
  br label %109

124:                                              ; preds = %109
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %8, align 4
  br label %356

126:                                              ; preds = %2
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %128 = icmp eq %struct.TYPE_17__* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 @WARNING(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %356

131:                                              ; preds = %126
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %133 = call i32 @getfval(%struct.TYPE_18__* %132)
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %137, %131
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %136 = icmp ne %struct.TYPE_17__* %135, null
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %139 = call %struct.TYPE_18__* @execute(%struct.TYPE_17__* %138)
  store %struct.TYPE_18__* %139, %struct.TYPE_18__** %7, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %141 = call i32 @getfval(%struct.TYPE_18__* %140)
  %142 = load i32, i32* %10, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %145 = call i32 @tempfree(%struct.TYPE_18__* %144)
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  store %struct.TYPE_17__* %148, %struct.TYPE_17__** %14, align 8
  br label %134

149:                                              ; preds = %134
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %8, align 4
  br label %356

151:                                              ; preds = %2
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %153 = icmp eq %struct.TYPE_17__* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 @WARNING(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %356

156:                                              ; preds = %151
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %158 = call i32 @getfval(%struct.TYPE_18__* %157)
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %162, %156
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %161 = icmp ne %struct.TYPE_17__* %160, null
  br i1 %161, label %162, label %174

162:                                              ; preds = %159
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %164 = call %struct.TYPE_18__* @execute(%struct.TYPE_17__* %163)
  store %struct.TYPE_18__* %164, %struct.TYPE_18__** %7, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %166 = call i32 @getfval(%struct.TYPE_18__* %165)
  %167 = load i32, i32* %10, align 4
  %168 = xor i32 %167, %166
  store i32 %168, i32* %10, align 4
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %170 = call i32 @tempfree(%struct.TYPE_18__* %169)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %172, align 8
  store %struct.TYPE_17__* %173, %struct.TYPE_17__** %14, align 8
  br label %159

174:                                              ; preds = %159
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %8, align 4
  br label %356

176:                                              ; preds = %2
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %178 = icmp eq %struct.TYPE_17__* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = call i32 @WARNING(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %356

181:                                              ; preds = %176
  %182 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %182, i64 1
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = call %struct.TYPE_18__* @execute(%struct.TYPE_17__* %186)
  store %struct.TYPE_18__* %187, %struct.TYPE_18__** %7, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %189 = call i32 @getfval(%struct.TYPE_18__* %188)
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %191 = call i32 @getfval(%struct.TYPE_18__* %190)
  %192 = shl i32 %189, %191
  store i32 %192, i32* %8, align 4
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %194 = call i32 @tempfree(%struct.TYPE_18__* %193)
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %196, align 8
  store %struct.TYPE_17__* %197, %struct.TYPE_17__** %14, align 8
  br label %356

198:                                              ; preds = %2
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %200 = icmp eq %struct.TYPE_17__* %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = call i32 @WARNING(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %356

203:                                              ; preds = %198
  %204 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %204, i64 1
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = call %struct.TYPE_18__* @execute(%struct.TYPE_17__* %208)
  store %struct.TYPE_18__* %209, %struct.TYPE_18__** %7, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %211 = call i32 @getfval(%struct.TYPE_18__* %210)
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %213 = call i32 @getfval(%struct.TYPE_18__* %212)
  %214 = ashr i32 %211, %213
  store i32 %214, i32* %8, align 4
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %216 = call i32 @tempfree(%struct.TYPE_18__* %215)
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %218, align 8
  store %struct.TYPE_17__* %219, %struct.TYPE_17__** %14, align 8
  br label %356

220:                                              ; preds = %2
  %221 = load i32*, i32** @stdout, align 8
  %222 = call i32 @fflush(i32* %221)
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %224 = call i32 @getsval(%struct.TYPE_18__* %223)
  %225 = call i32 @system(i32 %224)
  store i32 %225, i32* %16, align 4
  %226 = load i32, i32* %16, align 4
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %16, align 4
  %228 = icmp ne i32 %227, -1
  br i1 %228, label %229, label %247

229:                                              ; preds = %220
  %230 = load i32, i32* %16, align 4
  %231 = call i32 @WIFEXITED(i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load i32, i32* %16, align 4
  %235 = call i32 @WEXITSTATUS(i32 %234)
  store i32 %235, i32* %8, align 4
  br label %246

236:                                              ; preds = %229
  %237 = load i32, i32* %16, align 4
  %238 = call i32 @WIFSIGNALED(i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load i32, i32* %16, align 4
  %242 = call i32 @WTERMSIG(i32 %241)
  %243 = add nsw i32 %242, 256
  store i32 %243, i32* %8, align 4
  br label %245

244:                                              ; preds = %236
  store i32 0, i32* %8, align 4
  br label %245

245:                                              ; preds = %244, %240
  br label %246

246:                                              ; preds = %245, %233
  br label %247

247:                                              ; preds = %246, %220
  br label %356

248:                                              ; preds = %2
  %249 = call i32 (...) @random()
  %250 = sext i32 %249 to i64
  %251 = udiv i64 %250, 2147483648
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %8, align 4
  br label %356

253:                                              ; preds = %2
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %255 = call i32 @isrec(%struct.TYPE_18__* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  %258 = call i32 @time(i32* null)
  store i32 %258, i32* %8, align 4
  br label %262

259:                                              ; preds = %253
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %261 = call i32 @getfval(%struct.TYPE_18__* %260)
  store i32 %261, i32* %8, align 4
  br label %262

262:                                              ; preds = %259, %257
  %263 = load i32, i32* %8, align 4
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = call i32 @srandom(i64 %265)
  %267 = load i32, i32* @srand_seed, align 4
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* %11, align 4
  store i32 %268, i32* @srand_seed, align 4
  br label %356

269:                                              ; preds = %2, %2
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %271 = call i32 @getsval(%struct.TYPE_18__* %270)
  %272 = call i8* @tostring(i32 %271)
  store i8* %272, i8** %13, align 8
  %273 = load i32, i32* %9, align 4
  %274 = icmp eq i32 %273, 129
  br i1 %274, label %275, label %298

275:                                              ; preds = %269
  %276 = load i8*, i8** %13, align 8
  store i8* %276, i8** %12, align 8
  br label %277

277:                                              ; preds = %294, %275
  %278 = load i8*, i8** %12, align 8
  %279 = load i8, i8* %278, align 1
  %280 = icmp ne i8 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %277
  %282 = load i8*, i8** %12, align 8
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = call i32 @islower(i32 %284) #3
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %281
  %288 = load i8*, i8** %12, align 8
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = call signext i8 @toupper(i32 %290)
  %292 = load i8*, i8** %12, align 8
  store i8 %291, i8* %292, align 1
  br label %293

293:                                              ; preds = %287, %281
  br label %294

294:                                              ; preds = %293
  %295 = load i8*, i8** %12, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %12, align 8
  br label %277

297:                                              ; preds = %277
  br label %321

298:                                              ; preds = %269
  %299 = load i8*, i8** %13, align 8
  store i8* %299, i8** %12, align 8
  br label %300

300:                                              ; preds = %317, %298
  %301 = load i8*, i8** %12, align 8
  %302 = load i8, i8* %301, align 1
  %303 = icmp ne i8 %302, 0
  br i1 %303, label %304, label %320

304:                                              ; preds = %300
  %305 = load i8*, i8** %12, align 8
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = call i32 @isupper(i32 %307) #3
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %304
  %311 = load i8*, i8** %12, align 8
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = call signext i8 @tolower(i32 %313)
  %315 = load i8*, i8** %12, align 8
  store i8 %314, i8* %315, align 1
  br label %316

316:                                              ; preds = %310, %304
  br label %317

317:                                              ; preds = %316
  %318 = load i8*, i8** %12, align 8
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %12, align 8
  br label %300

320:                                              ; preds = %300
  br label %321

321:                                              ; preds = %320, %297
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %323 = call i32 @tempfree(%struct.TYPE_18__* %322)
  %324 = call %struct.TYPE_18__* (...) @gettemp()
  store %struct.TYPE_18__* %324, %struct.TYPE_18__** %6, align 8
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %326 = load i8*, i8** %13, align 8
  %327 = call i32 @setsval(%struct.TYPE_18__* %325, i8* %326)
  %328 = load i8*, i8** %13, align 8
  %329 = call i32 @free(i8* %328)
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %330, %struct.TYPE_18__** %3, align 8
  br label %380

331:                                              ; preds = %2
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %333 = call i32 @isrec(%struct.TYPE_18__* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %340, label %335

335:                                              ; preds = %331
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %337 = call i32 @getsval(%struct.TYPE_18__* %336)
  %338 = call i32 @strlen(i32 %337)
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %335, %331
  call void @flush_all()
  store i32 0, i32* %8, align 4
  br label %352

341:                                              ; preds = %335
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %343 = call i32 @getsval(%struct.TYPE_18__* %342)
  %344 = call i32* @openfile(i32 142, i32 %343)
  store i32* %344, i32** %15, align 8
  %345 = icmp eq i32* %344, null
  br i1 %345, label %346, label %348

346:                                              ; preds = %341
  %347 = load i32, i32* @EOF, align 4
  store i32 %347, i32* %8, align 4
  br label %351

348:                                              ; preds = %341
  %349 = load i32*, i32** %15, align 8
  %350 = call i32 @fflush(i32* %349)
  store i32 %350, i32* %8, align 4
  br label %351

351:                                              ; preds = %348, %346
  br label %352

352:                                              ; preds = %351, %340
  br label %356

353:                                              ; preds = %2
  %354 = load i32, i32* %9, align 4
  %355 = call i32 @FATAL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %354)
  br label %356

356:                                              ; preds = %353, %352, %262, %248, %247, %203, %201, %181, %179, %174, %154, %149, %129, %124, %104, %97, %96, %70, %66, %61, %56, %52, %47, %46
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %358 = call i32 @tempfree(%struct.TYPE_18__* %357)
  %359 = call %struct.TYPE_18__* (...) @gettemp()
  store %struct.TYPE_18__* %359, %struct.TYPE_18__** %6, align 8
  %360 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %361 = load i32, i32* %8, align 4
  %362 = call i32 @setfval(%struct.TYPE_18__* %360, i32 %361)
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %364 = icmp ne %struct.TYPE_17__* %363, null
  br i1 %364, label %365, label %378

365:                                              ; preds = %356
  %366 = call i32 @WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  br label %367

367:                                              ; preds = %373, %365
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %369 = icmp ne %struct.TYPE_17__* %368, null
  br i1 %369, label %370, label %377

370:                                              ; preds = %367
  %371 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %372 = call %struct.TYPE_18__* @execute(%struct.TYPE_17__* %371)
  br label %373

373:                                              ; preds = %370
  %374 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %375 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %374, i32 0, i32 0
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %375, align 8
  store %struct.TYPE_17__* %376, %struct.TYPE_17__** %14, align 8
  br label %367

377:                                              ; preds = %367
  br label %378

378:                                              ; preds = %377, %356
  %379 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %379, %struct.TYPE_18__** %3, align 8
  br label %380

380:                                              ; preds = %378, %321
  %381 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %381
}

declare dso_local i32 @ptoi(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @execute(%struct.TYPE_17__*) #1

declare dso_local i32 @isarr(%struct.TYPE_18__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @getsval(%struct.TYPE_18__*) #1

declare dso_local i32 @errcheck(i32, i8*) #1

declare dso_local i32 @log(i32) #1

declare dso_local i32 @getfval(%struct.TYPE_18__*) #1

declare dso_local i32 @modf(i32, i32*) #1

declare dso_local i32 @exp(i32) #1

declare dso_local i32 @sqrt(i32) #1

declare dso_local i32 @sin(i32) #1

declare dso_local i32 @cos(i32) #1

declare dso_local i32 @WARNING(i8*) #1

declare dso_local i32 @atan2(i32, i32) #1

declare dso_local i32 @tempfree(%struct.TYPE_18__*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @system(i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @isrec(%struct.TYPE_18__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @srandom(i64) #1

declare dso_local i8* @tostring(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @islower(i32) #2

declare dso_local signext i8 @toupper(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isupper(i32) #2

declare dso_local signext i8 @tolower(i32) #1

declare dso_local %struct.TYPE_18__* @gettemp(...) #1

declare dso_local i32 @setsval(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local void @flush_all() #1

declare dso_local i32* @openfile(i32, i32) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @setfval(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
