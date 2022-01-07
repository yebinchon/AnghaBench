; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_class.c_setusercontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_class.c_setusercontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8* }
%struct.passwd = type { i8*, i64 }
%struct.rtprio = type { i64, i32 }

@LOGIN_SETPATH = common dso_local global i32 0, align 4
@_PATH_DEFPATH = common dso_local global i32 0, align 4
@_PATH_STDPATH = common dso_local global i32 0, align 4
@pathvars = common dso_local global %struct.TYPE_11__* null, align 8
@LOGIN_SETGROUP = common dso_local global i32 0, align 4
@LOGIN_SETLOGIN = common dso_local global i32 0, align 4
@LOGIN_SETMAC = common dso_local global i32 0, align 4
@LOGIN_SETPRIORITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@LOGIN_DEFPRI = common dso_local global i32 0, align 4
@PRIO_MAX = common dso_local global i64 0, align 8
@RTP_PRIO_IDLE = common dso_local global i32 0, align 4
@RTP_PRIO_MAX = common dso_local global i64 0, align 8
@RTP_SET = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"rtprio '%s' (%s): %m\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@LOGIN_DEFCLASS = common dso_local global i8* null, align 8
@PRIO_MIN = common dso_local global i64 0, align 8
@RTP_PRIO_REALTIME = common dso_local global i32 0, align 4
@RTP_PRIO_MIN = common dso_local global i64 0, align 8
@PRIO_PROCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"setpriority '%s' (%s): %m\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"setgid(%lu): %m\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"initgroups(%s,%lu): %m\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"mac_from_text('%s') for %s: %m\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"mac_set_proc('%s') for %s: %s\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"setlogin(%s): %m\00", align 1
@LOGIN_SETLOGINCLASS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"setloginclass(%s): %m\00", align 1
@LOGIN_SETUMASK = common dso_local global i32 0, align 4
@LOGIN_DEFUMASK = common dso_local global i32 0, align 4
@LOGIN_SETUSER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"setuid(%lu): %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setusercontext(%struct.TYPE_10__* %0, %struct.passwd* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.rtprio, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.passwd* %1, %struct.passwd** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = icmp eq %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load %struct.passwd*, %struct.passwd** %7, align 8
  %21 = icmp ne %struct.passwd* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.passwd*, %struct.passwd** %7, align 8
  %24 = call %struct.TYPE_10__* @login_getpwclass(%struct.passwd* %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %6, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %12, align 8
  br label %28

28:                                               ; preds = %26, %22, %19
  br label %29

29:                                               ; preds = %28, %4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @LOGIN_SETPATH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @_PATH_DEFPATH, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @_PATH_STDPATH, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pathvars, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %29
  %47 = load %struct.passwd*, %struct.passwd** %7, align 8
  %48 = icmp eq %struct.passwd* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32, i32* @LOGIN_SETGROUP, align 4
  %51 = load i32, i32* @LOGIN_SETLOGIN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @LOGIN_SETMAC, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %49, %46
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @LOGIN_SETPRIORITY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %193

63:                                               ; preds = %58
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = load i32, i32* @LOGIN_DEFPRI, align 4
  %66 = load i32, i32* @LOGIN_DEFPRI, align 4
  %67 = call i64 @login_getcapnum(%struct.TYPE_10__* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @PRIO_MAX, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %114

71:                                               ; preds = %63
  %72 = load i32, i32* @RTP_PRIO_IDLE, align 4
  %73 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %13, i32 0, i32 1
  store i32 %72, i32* %73, align 8
  %74 = load i64, i64* @PRIO_MAX, align 8
  %75 = add nsw i64 %74, 1
  %76 = load i64, i64* %10, align 8
  %77 = sub nsw i64 %76, %75
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @RTP_PRIO_MAX, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i64, i64* @RTP_PRIO_MAX, align 8
  br label %85

83:                                               ; preds = %71
  %84 = load i64, i64* %10, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i64 [ %82, %81 ], [ %84, %83 ]
  %87 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %13, i32 0, i32 0
  store i64 %86, i64* %87, align 8
  %88 = load i32, i32* @RTP_SET, align 4
  %89 = call i64 @rtprio(i32 %88, i32 0, %struct.rtprio* %13)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %85
  %92 = load i32, i32* @LOG_WARNING, align 4
  %93 = load %struct.passwd*, %struct.passwd** %7, align 8
  %94 = icmp ne %struct.passwd* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.passwd*, %struct.passwd** %7, align 8
  %97 = getelementptr inbounds %struct.passwd, %struct.passwd* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  br label %100

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %95
  %101 = phi i8* [ %98, %95 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %99 ]
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = icmp ne %struct.TYPE_10__* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  br label %110

108:                                              ; preds = %100
  %109 = load i8*, i8** @LOGIN_DEFCLASS, align 8
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi i8* [ %107, %104 ], [ %109, %108 ]
  %112 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %101, i8* %111)
  br label %113

113:                                              ; preds = %110, %85
  br label %192

114:                                              ; preds = %63
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @PRIO_MIN, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %162

118:                                              ; preds = %114
  %119 = load i32, i32* @RTP_PRIO_REALTIME, align 4
  %120 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %13, i32 0, i32 1
  store i32 %119, i32* %120, align 8
  %121 = load i64, i64* @PRIO_MIN, align 8
  %122 = load i64, i64* @RTP_PRIO_MAX, align 8
  %123 = sub nsw i64 %121, %122
  %124 = load i64, i64* %10, align 8
  %125 = sub nsw i64 %124, %123
  store i64 %125, i64* %10, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* @RTP_PRIO_MIN, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %118
  %130 = load i64, i64* @RTP_PRIO_MIN, align 8
  br label %133

131:                                              ; preds = %118
  %132 = load i64, i64* %10, align 8
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i64 [ %130, %129 ], [ %132, %131 ]
  %135 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %13, i32 0, i32 0
  store i64 %134, i64* %135, align 8
  %136 = load i32, i32* @RTP_SET, align 4
  %137 = call i64 @rtprio(i32 %136, i32 0, %struct.rtprio* %13)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %161

139:                                              ; preds = %133
  %140 = load i32, i32* @LOG_WARNING, align 4
  %141 = load %struct.passwd*, %struct.passwd** %7, align 8
  %142 = icmp ne %struct.passwd* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load %struct.passwd*, %struct.passwd** %7, align 8
  %145 = getelementptr inbounds %struct.passwd, %struct.passwd* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  br label %148

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %143
  %149 = phi i8* [ %146, %143 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %147 ]
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %151 = icmp ne %struct.TYPE_10__* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  br label %158

156:                                              ; preds = %148
  %157 = load i8*, i8** @LOGIN_DEFCLASS, align 8
  br label %158

158:                                              ; preds = %156, %152
  %159 = phi i8* [ %155, %152 ], [ %157, %156 ]
  %160 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %149, i8* %159)
  br label %161

161:                                              ; preds = %158, %133
  br label %191

162:                                              ; preds = %114
  %163 = load i32, i32* @PRIO_PROCESS, align 4
  %164 = load i64, i64* %10, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i64 @setpriority(i32 %163, i32 0, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %190

168:                                              ; preds = %162
  %169 = load i32, i32* @LOG_WARNING, align 4
  %170 = load %struct.passwd*, %struct.passwd** %7, align 8
  %171 = icmp ne %struct.passwd* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load %struct.passwd*, %struct.passwd** %7, align 8
  %174 = getelementptr inbounds %struct.passwd, %struct.passwd* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  br label %177

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %176, %172
  %178 = phi i8* [ %175, %172 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %176 ]
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %180 = icmp ne %struct.TYPE_10__* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  br label %187

185:                                              ; preds = %177
  %186 = load i8*, i8** @LOGIN_DEFCLASS, align 8
  br label %187

187:                                              ; preds = %185, %181
  %188 = phi i8* [ %184, %181 ], [ %186, %185 ]
  %189 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %178, i8* %188)
  br label %190

190:                                              ; preds = %187, %162
  br label %191

191:                                              ; preds = %190, %161
  br label %192

192:                                              ; preds = %191, %113
  br label %193

193:                                              ; preds = %192, %58
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @LOGIN_SETGROUP, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %235

198:                                              ; preds = %193
  %199 = load %struct.passwd*, %struct.passwd** %7, align 8
  %200 = getelementptr inbounds %struct.passwd, %struct.passwd* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i64 @setgid(i64 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %198
  %205 = load i32, i32* @LOG_ERR, align 4
  %206 = load %struct.passwd*, %struct.passwd** %7, align 8
  %207 = getelementptr inbounds %struct.passwd, %struct.passwd* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to i8*
  %210 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %205, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %209)
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %212 = call i32 @login_close(%struct.TYPE_10__* %211)
  store i32 -1, i32* %5, align 4
  br label %384

213:                                              ; preds = %198
  %214 = load %struct.passwd*, %struct.passwd** %7, align 8
  %215 = getelementptr inbounds %struct.passwd, %struct.passwd* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.passwd*, %struct.passwd** %7, align 8
  %218 = getelementptr inbounds %struct.passwd, %struct.passwd* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @initgroups(i8* %216, i64 %219)
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %222, label %234

222:                                              ; preds = %213
  %223 = load i32, i32* @LOG_ERR, align 4
  %224 = load %struct.passwd*, %struct.passwd** %7, align 8
  %225 = getelementptr inbounds %struct.passwd, %struct.passwd* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.passwd*, %struct.passwd** %7, align 8
  %228 = getelementptr inbounds %struct.passwd, %struct.passwd* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i8*
  %231 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %223, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %226, i8* %230)
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %233 = call i32 @login_close(%struct.TYPE_10__* %232)
  store i32 -1, i32* %5, align 4
  br label %384

234:                                              ; preds = %213
  br label %235

235:                                              ; preds = %234, %193
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @LOGIN_SETMAC, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %282

240:                                              ; preds = %235
  %241 = call i32 @mac_is_present(i32* null)
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %282

243:                                              ; preds = %240
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %245 = call i8* @login_getcapstr(%struct.TYPE_10__* %244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* null)
  store i8* %245, i8** %15, align 8
  %246 = load i8*, i8** %15, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %281

248:                                              ; preds = %243
  %249 = load i8*, i8** %15, align 8
  %250 = call i32 @mac_from_text(i32* %16, i8* %249)
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %252, label %259

252:                                              ; preds = %248
  %253 = load i32, i32* @LOG_ERR, align 4
  %254 = load %struct.passwd*, %struct.passwd** %7, align 8
  %255 = getelementptr inbounds %struct.passwd, %struct.passwd* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = load i8*, i8** %15, align 8
  %258 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %253, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %256, i8* %257)
  store i32 -1, i32* %5, align 4
  br label %384

259:                                              ; preds = %248
  %260 = load i32, i32* %16, align 4
  %261 = call i32 @mac_set_proc(i32 %260)
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %265

263:                                              ; preds = %259
  %264 = load i32, i32* @errno, align 4
  store i32 %264, i32* %14, align 4
  br label %266

265:                                              ; preds = %259
  store i32 0, i32* %14, align 4
  br label %266

266:                                              ; preds = %265, %263
  %267 = load i32, i32* %16, align 4
  %268 = call i32 @mac_free(i32 %267)
  %269 = load i32, i32* %14, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %266
  %272 = load i32, i32* @LOG_ERR, align 4
  %273 = load i8*, i8** %15, align 8
  %274 = load %struct.passwd*, %struct.passwd** %7, align 8
  %275 = getelementptr inbounds %struct.passwd, %struct.passwd* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = load i32, i32* %14, align 4
  %278 = call i32 @strerror(i32 %277)
  %279 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %272, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %273, i8* %276, i32 %278)
  store i32 -1, i32* %5, align 4
  br label %384

280:                                              ; preds = %266
  br label %281

281:                                              ; preds = %280, %243
  br label %282

282:                                              ; preds = %281, %240, %235
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* @LOGIN_SETLOGIN, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %301

287:                                              ; preds = %282
  %288 = load %struct.passwd*, %struct.passwd** %7, align 8
  %289 = getelementptr inbounds %struct.passwd, %struct.passwd* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = call i64 @setlogin(i8* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %287
  %294 = load i32, i32* @LOG_ERR, align 4
  %295 = load %struct.passwd*, %struct.passwd** %7, align 8
  %296 = getelementptr inbounds %struct.passwd, %struct.passwd* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %294, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %297)
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %300 = call i32 @login_close(%struct.TYPE_10__* %299)
  store i32 -1, i32* %5, align 4
  br label %384

301:                                              ; preds = %287, %282
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %303 = icmp ne %struct.TYPE_10__* %302, null
  br i1 %303, label %304, label %328

304:                                              ; preds = %301
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %328

309:                                              ; preds = %304
  %310 = load i32, i32* %9, align 4
  %311 = load i32, i32* @LOGIN_SETLOGINCLASS, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %328

314:                                              ; preds = %309
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = call i32 @setloginclass(i8* %317)
  store i32 %318, i32* %14, align 4
  %319 = load i32, i32* %14, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %314
  %322 = load i32, i32* @LOG_ERR, align 4
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %322, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %325)
  br label %327

327:                                              ; preds = %321, %314
  br label %328

328:                                              ; preds = %327, %309, %304, %301
  %329 = load i32, i32* %9, align 4
  %330 = load i32, i32* @LOGIN_SETUMASK, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %328
  %334 = load i32, i32* @LOGIN_DEFUMASK, align 4
  %335 = call i32 @umask(i32 %334)
  br label %337

336:                                              ; preds = %328
  br label %337

337:                                              ; preds = %336, %333
  %338 = phi i32 [ %335, %333 ], [ 0, %336 ]
  store i32 %338, i32* %11, align 4
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %340 = load %struct.passwd*, %struct.passwd** %7, align 8
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %9, align 4
  %343 = call i32 @setlogincontext(%struct.TYPE_10__* %339, %struct.passwd* %340, i32 %341, i32 %342)
  store i32 %343, i32* %11, align 4
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %345 = call i32 @login_close(%struct.TYPE_10__* %344)
  %346 = load i32, i32* %9, align 4
  %347 = load i32, i32* @LOGIN_SETUSER, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %359

350:                                              ; preds = %337
  %351 = load i64, i64* %8, align 8
  %352 = call i64 @setuid(i64 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %350
  %355 = load i32, i32* @LOG_ERR, align 4
  %356 = load i64, i64* %8, align 8
  %357 = inttoptr i64 %356 to i8*
  %358 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %355, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %357)
  store i32 -1, i32* %5, align 4
  br label %384

359:                                              ; preds = %350, %337
  %360 = call i64 (...) @getuid()
  %361 = load i64, i64* %8, align 8
  %362 = icmp eq i64 %360, %361
  br i1 %362, label %363, label %375

363:                                              ; preds = %359
  %364 = load %struct.passwd*, %struct.passwd** %7, align 8
  %365 = call %struct.TYPE_10__* @login_getuserclass(%struct.passwd* %364)
  store %struct.TYPE_10__* %365, %struct.TYPE_10__** %6, align 8
  %366 = icmp ne %struct.TYPE_10__* %365, null
  br i1 %366, label %367, label %375

367:                                              ; preds = %363
  %368 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %369 = load %struct.passwd*, %struct.passwd** %7, align 8
  %370 = load i32, i32* %11, align 4
  %371 = load i32, i32* %9, align 4
  %372 = call i32 @setlogincontext(%struct.TYPE_10__* %368, %struct.passwd* %369, i32 %370, i32 %371)
  store i32 %372, i32* %11, align 4
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %374 = call i32 @login_close(%struct.TYPE_10__* %373)
  br label %375

375:                                              ; preds = %367, %363, %359
  %376 = load i32, i32* %9, align 4
  %377 = load i32, i32* @LOGIN_SETUMASK, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = load i32, i32* %11, align 4
  %382 = call i32 @umask(i32 %381)
  br label %383

383:                                              ; preds = %380, %375
  store i32 0, i32* %5, align 4
  br label %384

384:                                              ; preds = %383, %354, %293, %271, %252, %222, %204
  %385 = load i32, i32* %5, align 4
  ret i32 %385
}

declare dso_local %struct.TYPE_10__* @login_getpwclass(%struct.passwd*) #1

declare dso_local i64 @login_getcapnum(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i64 @rtprio(i32, i32, %struct.rtprio*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #1

declare dso_local i64 @setpriority(i32, i32, i32) #1

declare dso_local i64 @setgid(i64) #1

declare dso_local i32 @login_close(%struct.TYPE_10__*) #1

declare dso_local i32 @initgroups(i8*, i64) #1

declare dso_local i32 @mac_is_present(i32*) #1

declare dso_local i8* @login_getcapstr(%struct.TYPE_10__*, i8*, i32*, i32*) #1

declare dso_local i32 @mac_from_text(i32*, i8*) #1

declare dso_local i32 @mac_set_proc(i32) #1

declare dso_local i32 @mac_free(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @setlogin(i8*) #1

declare dso_local i32 @setloginclass(i8*) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @setlogincontext(%struct.TYPE_10__*, %struct.passwd*, i32, i32) #1

declare dso_local i64 @setuid(i64) #1

declare dso_local i64 @getuid(...) #1

declare dso_local %struct.TYPE_10__* @login_getuserclass(%struct.passwd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
