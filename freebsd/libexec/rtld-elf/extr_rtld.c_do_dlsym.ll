; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_do_dlsym.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_do_dlsym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i8*, i32, i32, i64, i64 }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_34__*, %struct.TYPE_35__*, %struct.TYPE_33__*, %struct.TYPE_31__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32 }

@SYMLOOK_IN_PLT = common dso_local global i32 0, align 4
@UTRACE_DLSYM_START = common dso_local global i32 0, align 4
@rtld_bind_lock = common dso_local global i32 0, align 4
@RTLD_NEXT = common dso_local global i8* null, align 8
@RTLD_DEFAULT = common dso_local global i8* null, align 8
@RTLD_SELF = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Cannot determine caller's shared object\00", align 1
@UTRACE_DLSYM_STOP = common dso_local global i32 0, align 4
@STB_WEAK = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4
@obj_rtld = common dso_local global %struct.TYPE_34__ zeroinitializer, align 8
@STT_FUNC = common dso_local global i64 0, align 8
@STT_GNU_IFUNC = common dso_local global i64 0, align 8
@STT_TLS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Undefined symbol \22%s%s%s\22\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, %struct.TYPE_31__*, i32)* @do_dlsym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_dlsym(i8* %0, i8* %1, i8* %2, %struct.TYPE_31__* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca %struct.TYPE_34__*, align 8
  %15 = alloca %struct.TYPE_35__*, align 8
  %16 = alloca %struct.TYPE_32__, align 8
  %17 = alloca %struct.TYPE_33__, align 4
  %18 = alloca %struct.TYPE_30__, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_31__* %3, %struct.TYPE_31__** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %15, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %14, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @symlook_init(%struct.TYPE_32__* %16, i8* %21)
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 4
  store %struct.TYPE_31__* %23, %struct.TYPE_31__** %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @SYMLOOK_IN_PLT, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 3
  store %struct.TYPE_33__* %17, %struct.TYPE_33__** %29, align 8
  %30 = load i32, i32* @UTRACE_DLSYM_START, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @LD_UTRACE(i32 %30, i8* %31, i8* null, i32 0, i32 0, i8* %32)
  %34 = load i32, i32* @rtld_bind_lock, align 4
  %35 = call i32 @rlock_acquire(i32 %34, %struct.TYPE_33__* %17)
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @sigsetjmp(i32 %37, i32 0) #3
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load i32, i32* @rtld_bind_lock, align 4
  %42 = call i32 @lock_upgrade(i32 %41, %struct.TYPE_33__* %17)
  br label %43

43:                                               ; preds = %40, %5
  %44 = load i8*, i8** %7, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** @RTLD_NEXT, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** @RTLD_DEFAULT, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** @RTLD_SELF, align 8
  %57 = icmp eq i8* %55, %56
  br i1 %57, label %58, label %183

58:                                               ; preds = %54, %50, %46, %43
  %59 = load i8*, i8** %9, align 8
  %60 = call %struct.TYPE_34__* @obj_from_addr(i8* %59)
  store %struct.TYPE_34__* %60, %struct.TYPE_34__** %13, align 8
  %61 = icmp eq %struct.TYPE_34__* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = call i32 (i8*, ...) @_rtld_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @rtld_bind_lock, align 4
  %65 = call i32 @lock_release(i32 %64, %struct.TYPE_33__* %17)
  %66 = load i32, i32* @UTRACE_DLSYM_STOP, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @LD_UTRACE(i32 %66, i8* %67, i8* null, i32 0, i32 0, i8* %68)
  store i8* null, i8** %6, align 8
  br label %327

70:                                               ; preds = %58
  %71 = load i8*, i8** %7, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %75 = call i32 @symlook_obj(%struct.TYPE_32__* %16, %struct.TYPE_34__* %74)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 2
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %79, align 8
  store %struct.TYPE_35__* %80, %struct.TYPE_35__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 1
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %81, align 8
  store %struct.TYPE_34__* %82, %struct.TYPE_34__** %14, align 8
  br label %83

83:                                               ; preds = %78, %73
  br label %182

84:                                               ; preds = %70
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** @RTLD_NEXT, align 8
  %87 = icmp eq i8* %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** @RTLD_SELF, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %92, label %165

92:                                               ; preds = %88, %84
  %93 = load i8*, i8** %7, align 8
  %94 = load i8*, i8** @RTLD_NEXT, align 8
  %95 = icmp eq i8* %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %98 = call %struct.TYPE_34__* @globallist_next(%struct.TYPE_34__* %97)
  store %struct.TYPE_34__* %98, %struct.TYPE_34__** %13, align 8
  br label %99

99:                                               ; preds = %96, %92
  br label %100

100:                                              ; preds = %140, %99
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %102 = icmp ne %struct.TYPE_34__* %101, null
  br i1 %102, label %103, label %144

103:                                              ; preds = %100
  %104 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %140

109:                                              ; preds = %103
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %111 = call i32 @symlook_obj(%struct.TYPE_32__* %16, %struct.TYPE_34__* %110)
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %20, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %139

114:                                              ; preds = %109
  %115 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %116 = icmp eq %struct.TYPE_35__* %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 2
  %119 = load %struct.TYPE_35__*, %struct.TYPE_35__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @ELF_ST_BIND(i32 %121)
  %123 = load i64, i64* @STB_WEAK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %117, %114
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 2
  %127 = load %struct.TYPE_35__*, %struct.TYPE_35__** %126, align 8
  store %struct.TYPE_35__* %127, %struct.TYPE_35__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 1
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %128, align 8
  store %struct.TYPE_34__* %129, %struct.TYPE_34__** %14, align 8
  %130 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @ELF_ST_BIND(i32 %132)
  %134 = load i64, i64* @STB_WEAK, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %144

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137, %117
  br label %139

139:                                              ; preds = %138, %109
  br label %140

140:                                              ; preds = %139, %108
  %141 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %142 = load i32, i32* @next, align 4
  %143 = call %struct.TYPE_34__* @TAILQ_NEXT(%struct.TYPE_34__* %141, i32 %142)
  store %struct.TYPE_34__* %143, %struct.TYPE_34__** %13, align 8
  br label %100

144:                                              ; preds = %136, %100
  %145 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %146 = icmp eq %struct.TYPE_35__* %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %144
  %148 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @ELF_ST_BIND(i32 %150)
  %152 = load i64, i64* @STB_WEAK, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %147, %144
  %155 = call i32 @symlook_obj(%struct.TYPE_32__* %16, %struct.TYPE_34__* @obj_rtld)
  store i32 %155, i32* %20, align 4
  %156 = load i32, i32* %20, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 2
  %160 = load %struct.TYPE_35__*, %struct.TYPE_35__** %159, align 8
  store %struct.TYPE_35__* %160, %struct.TYPE_35__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 1
  %162 = load %struct.TYPE_34__*, %struct.TYPE_34__** %161, align 8
  store %struct.TYPE_34__* %162, %struct.TYPE_34__** %14, align 8
  br label %163

163:                                              ; preds = %158, %154
  br label %164

164:                                              ; preds = %163, %147
  br label %181

165:                                              ; preds = %88
  %166 = load i8*, i8** %7, align 8
  %167 = load i8*, i8** @RTLD_DEFAULT, align 8
  %168 = icmp eq i8* %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %172 = call i32 @symlook_default(%struct.TYPE_32__* %16, %struct.TYPE_34__* %171)
  store i32 %172, i32* %20, align 4
  %173 = load i32, i32* %20, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %165
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 1
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %176, align 8
  store %struct.TYPE_34__* %177, %struct.TYPE_34__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 2
  %179 = load %struct.TYPE_35__*, %struct.TYPE_35__** %178, align 8
  store %struct.TYPE_35__* %179, %struct.TYPE_35__** %15, align 8
  br label %180

180:                                              ; preds = %175, %165
  br label %181

181:                                              ; preds = %180, %164
  br label %182

182:                                              ; preds = %181, %83
  br label %243

183:                                              ; preds = %54
  %184 = load i8*, i8** %7, align 8
  %185 = call %struct.TYPE_34__* @dlcheck(i8* %184)
  store %struct.TYPE_34__* %185, %struct.TYPE_34__** %13, align 8
  %186 = icmp eq %struct.TYPE_34__* %185, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = load i32, i32* @rtld_bind_lock, align 4
  %189 = call i32 @lock_release(i32 %188, %struct.TYPE_33__* %17)
  %190 = load i32, i32* @UTRACE_DLSYM_STOP, align 4
  %191 = load i8*, i8** %7, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = call i32 @LD_UTRACE(i32 %190, i8* %191, i8* null, i32 0, i32 0, i8* %192)
  store i8* null, i8** %6, align 8
  br label %327

194:                                              ; preds = %183
  %195 = call i32 @donelist_init(i32* %12)
  %196 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %230

200:                                              ; preds = %194
  %201 = call i32 @symlook_global(%struct.TYPE_32__* %16, i32* %12)
  store i32 %201, i32* %20, align 4
  %202 = load i32, i32* %20, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 2
  %206 = load %struct.TYPE_35__*, %struct.TYPE_35__** %205, align 8
  store %struct.TYPE_35__* %206, %struct.TYPE_35__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 1
  %208 = load %struct.TYPE_34__*, %struct.TYPE_34__** %207, align 8
  store %struct.TYPE_34__* %208, %struct.TYPE_34__** %14, align 8
  br label %209

209:                                              ; preds = %204, %200
  %210 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %211 = icmp eq %struct.TYPE_35__* %210, null
  br i1 %211, label %219, label %212

212:                                              ; preds = %209
  %213 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @ELF_ST_BIND(i32 %215)
  %217 = load i64, i64* @STB_WEAK, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %212, %209
  %220 = call i32 @symlook_obj(%struct.TYPE_32__* %16, %struct.TYPE_34__* @obj_rtld)
  store i32 %220, i32* %20, align 4
  %221 = load i32, i32* %20, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 2
  %225 = load %struct.TYPE_35__*, %struct.TYPE_35__** %224, align 8
  store %struct.TYPE_35__* %225, %struct.TYPE_35__** %15, align 8
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 1
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %226, align 8
  store %struct.TYPE_34__* %227, %struct.TYPE_34__** %14, align 8
  br label %228

228:                                              ; preds = %223, %219
  br label %229

229:                                              ; preds = %228, %212
  br label %242

230:                                              ; preds = %194
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 2
  %233 = call i32 @symlook_list(%struct.TYPE_32__* %16, i32* %232, i32* %12)
  store i32 %233, i32* %20, align 4
  %234 = load i32, i32* %20, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 2
  %238 = load %struct.TYPE_35__*, %struct.TYPE_35__** %237, align 8
  store %struct.TYPE_35__* %238, %struct.TYPE_35__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 1
  %240 = load %struct.TYPE_34__*, %struct.TYPE_34__** %239, align 8
  store %struct.TYPE_34__* %240, %struct.TYPE_34__** %14, align 8
  br label %241

241:                                              ; preds = %236, %230
  br label %242

242:                                              ; preds = %241, %229
  br label %243

243:                                              ; preds = %242, %182
  %244 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %245 = icmp ne %struct.TYPE_35__* %244, null
  br i1 %245, label %246, label %305

246:                                              ; preds = %243
  %247 = load i32, i32* @rtld_bind_lock, align 4
  %248 = call i32 @lock_release(i32 %247, %struct.TYPE_33__* %17)
  %249 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i64 @ELF_ST_TYPE(i32 %251)
  %253 = load i64, i64* @STT_FUNC, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %246
  %256 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %257 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %258 = call i8* @make_function_pointer(%struct.TYPE_35__* %256, %struct.TYPE_34__* %257)
  store i8* %258, i8** %19, align 8
  br label %298

259:                                              ; preds = %246
  %260 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i64 @ELF_ST_TYPE(i32 %262)
  %264 = load i64, i64* @STT_GNU_IFUNC, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %259
  %267 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %268 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %269 = call i8* @rtld_resolve_ifunc(%struct.TYPE_34__* %267, %struct.TYPE_35__* %268)
  store i8* %269, i8** %19, align 8
  br label %297

270:                                              ; preds = %259
  %271 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %272 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i64 @ELF_ST_TYPE(i32 %273)
  %275 = load i64, i64* @STT_TLS, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %287

277:                                              ; preds = %270
  %278 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 1
  store i32 %280, i32* %281, align 4
  %282 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %283 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  store i32 %284, i32* %285, align 4
  %286 = call i8* @__tls_get_addr(%struct.TYPE_30__* %18)
  store i8* %286, i8** %19, align 8
  br label %296

287:                                              ; preds = %270
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %292 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr i8, i8* %290, i64 %294
  store i8* %295, i8** %19, align 8
  br label %296

296:                                              ; preds = %287, %277
  br label %297

297:                                              ; preds = %296, %266
  br label %298

298:                                              ; preds = %297, %255
  %299 = load i32, i32* @UTRACE_DLSYM_STOP, align 4
  %300 = load i8*, i8** %7, align 8
  %301 = load i8*, i8** %19, align 8
  %302 = load i8*, i8** %8, align 8
  %303 = call i32 @LD_UTRACE(i32 %299, i8* %300, i8* %301, i32 0, i32 0, i8* %302)
  %304 = load i8*, i8** %19, align 8
  store i8* %304, i8** %6, align 8
  br label %327

305:                                              ; preds = %243
  %306 = load i8*, i8** %8, align 8
  %307 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %308 = icmp ne %struct.TYPE_31__* %307, null
  %309 = zext i1 %308 to i64
  %310 = select i1 %308, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %311 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %312 = icmp ne %struct.TYPE_31__* %311, null
  br i1 %312, label %313, label %317

313:                                              ; preds = %305
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  br label %318

317:                                              ; preds = %305
  br label %318

318:                                              ; preds = %317, %313
  %319 = phi i8* [ %316, %313 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %317 ]
  %320 = call i32 (i8*, ...) @_rtld_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %306, i8* %310, i8* %319)
  %321 = load i32, i32* @rtld_bind_lock, align 4
  %322 = call i32 @lock_release(i32 %321, %struct.TYPE_33__* %17)
  %323 = load i32, i32* @UTRACE_DLSYM_STOP, align 4
  %324 = load i8*, i8** %7, align 8
  %325 = load i8*, i8** %8, align 8
  %326 = call i32 @LD_UTRACE(i32 %323, i8* %324, i8* null, i32 0, i32 0, i8* %325)
  store i8* null, i8** %6, align 8
  br label %327

327:                                              ; preds = %318, %298, %187, %62
  %328 = load i8*, i8** %6, align 8
  ret i8* %328
}

declare dso_local i32 @symlook_init(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @LD_UTRACE(i32, i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @rlock_acquire(i32, %struct.TYPE_33__*) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i32 @lock_upgrade(i32, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_34__* @obj_from_addr(i8*) #1

declare dso_local i32 @_rtld_error(i8*, ...) #1

declare dso_local i32 @lock_release(i32, %struct.TYPE_33__*) #1

declare dso_local i32 @symlook_obj(%struct.TYPE_32__*, %struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @globallist_next(%struct.TYPE_34__*) #1

declare dso_local i64 @ELF_ST_BIND(i32) #1

declare dso_local %struct.TYPE_34__* @TAILQ_NEXT(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @symlook_default(%struct.TYPE_32__*, %struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @dlcheck(i8*) #1

declare dso_local i32 @donelist_init(i32*) #1

declare dso_local i32 @symlook_global(%struct.TYPE_32__*, i32*) #1

declare dso_local i32 @symlook_list(%struct.TYPE_32__*, i32*, i32*) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i8* @make_function_pointer(%struct.TYPE_35__*, %struct.TYPE_34__*) #1

declare dso_local i8* @rtld_resolve_ifunc(%struct.TYPE_34__*, %struct.TYPE_35__*) #1

declare dso_local i8* @__tls_get_addr(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
