; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_allowed_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_allowed_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i32, i32*, i32*, i32, i32*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32 }
%struct.stat = type { i32 }

@active_state = common dso_local global %struct.ssh* null, align 8
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [50 x i8] c"User %.100s not allowed because account is locked\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"User %.100s not allowed because shell %.100s does not exist\00", align 1
@S_IXOTH = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"User %.100s not allowed because shell %.100s is not executable\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Invalid DenyUsers pattern \22%.100s\22\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"User %.100s from %.100s not allowed because listed in DenyUsers\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Invalid AllowUsers pattern \22%.100s\22\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"User %.100s from %.100s not allowed because not listed in AllowUsers\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"User %.100s from %.100s not allowed because not in any group\00", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"User %.100s from %.100s not allowed because a group is listed in DenyGroups\00", align 1
@.str.10 = private unnamed_addr constant [92 x i8] c"User %.100s from %.100s not allowed because none of user's groups are listed in AllowGroups\00", align 1
@LOCKED_PASSWD_PREFIX = common dso_local global i32 0, align 4
@LOCKED_PASSWD_STRING = common dso_local global i32 0, align 4
@LOCKED_PASSWD_SUBSTR = common dso_local global i32 0, align 4
@loginmsg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @allowed_user(%struct.passwd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.passwd* %0, %struct.passwd** %3, align 8
  %13 = load %struct.ssh*, %struct.ssh** @active_state, align 8
  store %struct.ssh* %13, %struct.ssh** %4, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load %struct.passwd*, %struct.passwd** %3, align 8
  %15 = icmp ne %struct.passwd* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.passwd*, %struct.passwd** %3, align 8
  %18 = getelementptr inbounds %struct.passwd, %struct.passwd* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %269

22:                                               ; preds = %16
  %23 = load %struct.passwd*, %struct.passwd** %3, align 8
  %24 = getelementptr inbounds %struct.passwd, %struct.passwd* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 10), align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.passwd*, %struct.passwd** %3, align 8
  %41 = getelementptr inbounds %struct.passwd, %struct.passwd* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %2, align 4
  br label %269

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %31, %28, %22
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 9), align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 9), align 8
  %50 = call i64 @strcasecmp(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %106

52:                                               ; preds = %48, %45
  %53 = load %struct.passwd*, %struct.passwd** %3, align 8
  %54 = getelementptr inbounds %struct.passwd, %struct.passwd* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i8*, i8** @_PATH_BSHELL, align 8
  br label %66

62:                                               ; preds = %52
  %63 = load %struct.passwd*, %struct.passwd** %3, align 8
  %64 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i8* [ %61, %60 ], [ %65, %62 ]
  %68 = call i8* @xstrdup(i8* %67)
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i64 @stat(i8* %69, %struct.stat* %5)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.passwd*, %struct.passwd** %3, align 8
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %75, i8* %76)
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @free(i8* %78)
  store i32 0, i32* %2, align 4
  br label %269

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @S_ISREG(i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @S_IXOTH, align 4
  %89 = load i32, i32* @S_IXUSR, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @S_IXGRP, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %87, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %85, %80
  %96 = load %struct.passwd*, %struct.passwd** %3, align 8
  %97 = getelementptr inbounds %struct.passwd, %struct.passwd* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %98, i8* %99)
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @free(i8* %101)
  store i32 0, i32* %2, align 4
  br label %269

103:                                              ; preds = %85
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @free(i8* %104)
  br label %106

106:                                              ; preds = %103, %48
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 1), align 8
  %111 = icmp ugt i64 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %109
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 2), align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 3), align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115, %112, %109, %106
  %119 = load %struct.ssh*, %struct.ssh** %4, align 8
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 8), align 8
  %121 = call i8* @auth_get_canonical_hostname(%struct.ssh* %119, i32 %120)
  store i8* %121, i8** %6, align 8
  %122 = load %struct.ssh*, %struct.ssh** %4, align 8
  %123 = call i8* @ssh_remote_ipaddr(%struct.ssh* %122)
  store i8* %123, i8** %7, align 8
  br label %124

124:                                              ; preds = %118, %115
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %166

127:                                              ; preds = %124
  store i64 0, i64* %9, align 8
  br label %128

128:                                              ; preds = %162, %127
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %128
  %133 = load %struct.passwd*, %struct.passwd** %3, align 8
  %134 = getelementptr inbounds %struct.passwd, %struct.passwd* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 7), align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @match_user(i32 %135, i8* %136, i8* %137, i32 %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %132
  %146 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 7), align 8
  %147 = load i64, i64* %9, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  br label %161

151:                                              ; preds = %132
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load %struct.passwd*, %struct.passwd** %3, align 8
  %156 = getelementptr inbounds %struct.passwd, %struct.passwd* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %157, i8* %158)
  store i32 0, i32* %2, align 4
  br label %269

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %160, %145
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %9, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %9, align 8
  br label %128

165:                                              ; preds = %128
  br label %166

166:                                              ; preds = %165, %124
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 1), align 8
  %168 = icmp ugt i64 %167, 0
  br i1 %168, label %169, label %213

169:                                              ; preds = %166
  store i64 0, i64* %9, align 8
  br label %170

170:                                              ; preds = %199, %169
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 1), align 8
  %173 = icmp ult i64 %171, %172
  br i1 %173, label %174, label %202

174:                                              ; preds = %170
  %175 = load %struct.passwd*, %struct.passwd** %3, align 8
  %176 = getelementptr inbounds %struct.passwd, %struct.passwd* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = load i8*, i8** %7, align 8
  %180 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 6), align 8
  %181 = load i64, i64* %9, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @match_user(i32 %177, i8* %178, i8* %179, i32 %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %174
  %188 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 6), align 8
  %189 = load i64, i64* %9, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %191)
  br label %198

193:                                              ; preds = %174
  %194 = load i32, i32* %10, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %202

197:                                              ; preds = %193
  br label %198

198:                                              ; preds = %197, %187
  br label %199

199:                                              ; preds = %198
  %200 = load i64, i64* %9, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %9, align 8
  br label %170

202:                                              ; preds = %196, %170
  %203 = load i64, i64* %9, align 8
  %204 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 1), align 8
  %205 = icmp uge i64 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load %struct.passwd*, %struct.passwd** %3, align 8
  %208 = getelementptr inbounds %struct.passwd, %struct.passwd* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i8*, i8** %6, align 8
  %211 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0), i32 %209, i8* %210)
  store i32 0, i32* %2, align 4
  br label %269

212:                                              ; preds = %202
  br label %213

213:                                              ; preds = %212, %166
  %214 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 2), align 8
  %215 = icmp sgt i64 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  %217 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 3), align 8
  %218 = icmp sgt i64 %217, 0
  br i1 %218, label %219, label %268

219:                                              ; preds = %216, %213
  %220 = load %struct.passwd*, %struct.passwd** %3, align 8
  %221 = getelementptr inbounds %struct.passwd, %struct.passwd* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.passwd*, %struct.passwd** %3, align 8
  %224 = getelementptr inbounds %struct.passwd, %struct.passwd* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @ga_init(i32 %222, i32 %225)
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %219
  %229 = load %struct.passwd*, %struct.passwd** %3, align 8
  %230 = getelementptr inbounds %struct.passwd, %struct.passwd* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load i8*, i8** %6, align 8
  %233 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i32 %231, i8* %232)
  store i32 0, i32* %2, align 4
  br label %269

234:                                              ; preds = %219
  %235 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 2), align 8
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %234
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 5), align 4
  %239 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 2), align 8
  %240 = call i64 @ga_match(i32 %238, i64 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = call i32 (...) @ga_free()
  %244 = load %struct.passwd*, %struct.passwd** %3, align 8
  %245 = getelementptr inbounds %struct.passwd, %struct.passwd* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i8*, i8** %6, align 8
  %248 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.9, i64 0, i64 0), i32 %246, i8* %247)
  store i32 0, i32* %2, align 4
  br label %269

249:                                              ; preds = %237
  br label %250

250:                                              ; preds = %249, %234
  %251 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 3), align 8
  %252 = icmp sgt i64 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %250
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 4), align 8
  %255 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 3), align 8
  %256 = call i64 @ga_match(i32 %254, i64 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %253
  %259 = call i32 (...) @ga_free()
  %260 = load %struct.passwd*, %struct.passwd** %3, align 8
  %261 = getelementptr inbounds %struct.passwd, %struct.passwd* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i8*, i8** %6, align 8
  %264 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.10, i64 0, i64 0), i32 %262, i8* %263)
  store i32 0, i32* %2, align 4
  br label %269

265:                                              ; preds = %253
  br label %266

266:                                              ; preds = %265, %250
  %267 = call i32 (...) @ga_free()
  br label %268

268:                                              ; preds = %266, %216
  store i32 1, i32* %2, align 4
  br label %269

269:                                              ; preds = %268, %258, %242, %228, %206, %154, %95, %72, %39, %21
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @logit(i8*, i32, ...) #1

declare dso_local i64 @strcasecmp(i32*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i8* @auth_get_canonical_hostname(%struct.ssh*, i32) #1

declare dso_local i8* @ssh_remote_ipaddr(%struct.ssh*) #1

declare dso_local i32 @match_user(i32, i8*, i8*, i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i64 @ga_init(i32, i32) #1

declare dso_local i64 @ga_match(i32, i64) #1

declare dso_local i32 @ga_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
