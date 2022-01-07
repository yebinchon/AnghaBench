; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/bin/pamtest/extr_pamtest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/bin/pamtest/extr_pamtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"dH:h:kMPsT:t:U:u:v\00", align 1
@openpam_debug = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@OPENPAM_RESTRICT_MODULE_NAME = common dso_local global i32 0, align 4
@OPENPAM_VERIFY_MODULE_FILE = common dso_local global i32 0, align 4
@OPENPAM_RESTRICT_SERVICE_NAME = common dso_local global i32 0, align 4
@OPENPAM_VERIFY_POLICY_FILE = common dso_local global i32 0, align 4
@PAM_SILENT = common dso_local global i32 0, align 4
@silent = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid conversation timeout\0A\00", align 1
@openpam_ttyconv_timeout = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"pamtest\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"gethostname()\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@PAM_HOST = common dso_local global i32 0, align 4
@PAM_RHOST = common dso_local global i32 0, align 4
@PAM_RUSER = common dso_local global i32 0, align 4
@PAM_TTY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"listenv\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"authenticate\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"acct_mgmt\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"account\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"chauthtok\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@PAM_CHANGE_EXPIRED_AUTHTOK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"forcechauthtok\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"forcechange\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"setcred\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"establish_cred\00", align 1
@PAM_ESTABLISH_CRED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"open_session\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"close_session\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"unsetcred\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"delete_cred\00", align 1
@PAM_DELETE_CRED = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [22 x i8] c"unknown primitive: %s\00", align 1
@PAM_SYSTEM_ERR = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"test aborted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %82, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %16, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %83

22:                                               ; preds = %17
  %23 = load i32, i32* %16, align 4
  switch i32 %23, label %80 [
    i32 100, label %24
    i32 72, label %27
    i32 104, label %31
    i32 107, label %35
    i32 77, label %36
    i32 80, label %41
    i32 115, label %46
    i32 84, label %48
    i32 116, label %65
    i32 85, label %69
    i32 117, label %73
    i32 118, label %77
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @openpam_debug, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @openpam_debug, align 4
  br label %82

27:                                               ; preds = %22
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* @optarg, align 4
  %30 = call i32 @opt_str_once(i32 %28, i8** %7, i32 %29)
  br label %82

31:                                               ; preds = %22
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @optarg, align 4
  %34 = call i32 @opt_str_once(i32 %32, i8** %8, i32 %33)
  br label %82

35:                                               ; preds = %22
  store i32 1, i32* %14, align 4
  br label %82

36:                                               ; preds = %22
  %37 = load i32, i32* @OPENPAM_RESTRICT_MODULE_NAME, align 4
  %38 = call i32 @openpam_set_feature(i32 %37, i32 0)
  %39 = load i32, i32* @OPENPAM_VERIFY_MODULE_FILE, align 4
  %40 = call i32 @openpam_set_feature(i32 %39, i32 0)
  br label %82

41:                                               ; preds = %22
  %42 = load i32, i32* @OPENPAM_RESTRICT_SERVICE_NAME, align 4
  %43 = call i32 @openpam_set_feature(i32 %42, i32 0)
  %44 = load i32, i32* @OPENPAM_VERIFY_POLICY_FILE, align 4
  %45 = call i32 @openpam_set_feature(i32 %44, i32 0)
  br label %82

46:                                               ; preds = %22
  %47 = load i32, i32* @PAM_SILENT, align 4
  store i32 %47, i32* @silent, align 4
  br label %82

48:                                               ; preds = %22
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* @optarg, align 4
  %51 = call i32 @opt_num_once(i32 %49, i64* %13, i32 %50)
  %52 = load i64, i64* %13, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @INT_MAX, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %48
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i64, i64* %13, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* @openpam_ttyconv_timeout, align 4
  br label %82

65:                                               ; preds = %22
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @optarg, align 4
  %68 = call i32 @opt_str_once(i32 %66, i8** %12, i32 %67)
  br label %82

69:                                               ; preds = %22
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* @optarg, align 4
  %72 = call i32 @opt_str_once(i32 %70, i8** %9, i32 %71)
  br label %82

73:                                               ; preds = %22
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @optarg, align 4
  %76 = call i32 @opt_str_once(i32 %74, i8** %10, i32 %75)
  br label %82

77:                                               ; preds = %22
  %78 = load i32, i32* @verbose, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @verbose, align 4
  br label %82

80:                                               ; preds = %22
  %81 = call i32 (...) @usage()
  br label %82

82:                                               ; preds = %80, %77, %73, %69, %65, %62, %46, %41, %36, %35, %31, %27, %24
  br label %17

83:                                               ; preds = %17
  %84 = load i64, i64* @optind, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %4, align 4
  %89 = load i64, i64* @optind, align 8
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 %89
  store i8** %91, i8*** %5, align 8
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = call i32 (...) @usage()
  br label %96

96:                                               ; preds = %94, %83
  %97 = load i8**, i8*** %5, align 8
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %11, align 8
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %4, align 4
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %5, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %106

106:                                              ; preds = %105, %96
  %107 = load i8*, i8** %7, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %111 = call i32 @gethostname(i8* %110, i32 1024)
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %109
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8* %116, i8** %7, align 8
  br label %117

117:                                              ; preds = %115, %106
  %118 = load i8*, i8** %12, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* @STDERR_FILENO, align 4
  %122 = call i8* @ttyname(i32 %121)
  store i8* %122, i8** %12, align 8
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i8*, i8** %10, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i8* (...) @getlogin()
  store i8* %127, i8** %10, align 8
  br label %128

128:                                              ; preds = %126, %123
  %129 = load i8*, i8** %9, align 8
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i8*, i8** %10, align 8
  store i8* %132, i8** %9, align 8
  br label %133

133:                                              ; preds = %131, %128
  %134 = load i8*, i8** %11, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @pt_start(i8* %134, i8* %135)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* @PAM_SUCCESS, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %313

140:                                              ; preds = %133
  %141 = load i8*, i8** %8, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i32, i32* @PAM_HOST, align 4
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 @pt_set_item(i32 %144, i8* %145)
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* @PAM_SUCCESS, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %313

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %140
  %152 = load i32, i32* @PAM_RHOST, align 4
  %153 = load i8*, i8** %7, align 8
  %154 = call i32 @pt_set_item(i32 %152, i8* %153)
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* @PAM_SUCCESS, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %169, label %157

157:                                              ; preds = %151
  %158 = load i32, i32* @PAM_RUSER, align 4
  %159 = load i8*, i8** %9, align 8
  %160 = call i32 @pt_set_item(i32 %158, i8* %159)
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* @PAM_SUCCESS, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load i32, i32* @PAM_TTY, align 4
  %165 = load i8*, i8** %12, align 8
  %166 = call i32 @pt_set_item(i32 %164, i8* %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* @PAM_SUCCESS, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163, %157, %151
  br label %313

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %307, %170
  %172 = load i32, i32* %4, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %312

174:                                              ; preds = %171
  %175 = load i8**, i8*** %5, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @strcmp(i8* %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %174
  %180 = load i8**, i8*** %5, align 8
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @strcmp(i8* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179, %174
  %185 = call i32 (...) @pt_listenv()
  store i32 %185, i32* %15, align 4
  br label %298

186:                                              ; preds = %179
  %187 = load i8**, i8*** %5, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load i8**, i8*** %5, align 8
  %193 = load i8*, i8** %192, align 8
  %194 = call i64 @strcmp(i8* %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %191, %186
  %197 = call i32 @pt_authenticate(i32 0)
  store i32 %197, i32* %15, align 4
  br label %297

198:                                              ; preds = %191
  %199 = load i8**, i8*** %5, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = call i64 @strcmp(i8* %200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = load i8**, i8*** %5, align 8
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @strcmp(i8* %205, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203, %198
  %209 = call i32 @pt_acct_mgmt(i32 0)
  store i32 %209, i32* %15, align 4
  br label %296

210:                                              ; preds = %203
  %211 = load i8**, i8*** %5, align 8
  %212 = load i8*, i8** %211, align 8
  %213 = call i64 @strcmp(i8* %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %210
  %216 = load i8**, i8*** %5, align 8
  %217 = load i8*, i8** %216, align 8
  %218 = call i64 @strcmp(i8* %217, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %215, %210
  %221 = load i32, i32* @PAM_CHANGE_EXPIRED_AUTHTOK, align 4
  %222 = call i32 @pt_chauthtok(i32 %221)
  store i32 %222, i32* %15, align 4
  br label %295

223:                                              ; preds = %215
  %224 = load i8**, i8*** %5, align 8
  %225 = load i8*, i8** %224, align 8
  %226 = call i64 @strcmp(i8* %225, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %223
  %229 = load i8**, i8*** %5, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = call i64 @strcmp(i8* %230, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228, %223
  %234 = call i32 @pt_chauthtok(i32 0)
  store i32 %234, i32* %15, align 4
  br label %294

235:                                              ; preds = %228
  %236 = load i8**, i8*** %5, align 8
  %237 = load i8*, i8** %236, align 8
  %238 = call i64 @strcmp(i8* %237, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %235
  %241 = load i8**, i8*** %5, align 8
  %242 = load i8*, i8** %241, align 8
  %243 = call i64 @strcmp(i8* %242, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240, %235
  %246 = load i32, i32* @PAM_ESTABLISH_CRED, align 4
  %247 = call i32 @pt_setcred(i32 %246)
  store i32 %247, i32* %15, align 4
  br label %293

248:                                              ; preds = %240
  %249 = load i8**, i8*** %5, align 8
  %250 = load i8*, i8** %249, align 8
  %251 = call i64 @strcmp(i8* %250, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %248
  %254 = load i8**, i8*** %5, align 8
  %255 = load i8*, i8** %254, align 8
  %256 = call i64 @strcmp(i8* %255, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %253, %248
  %259 = call i32 @pt_open_session(i32 0)
  store i32 %259, i32* %15, align 4
  br label %292

260:                                              ; preds = %253
  %261 = load i8**, i8*** %5, align 8
  %262 = load i8*, i8** %261, align 8
  %263 = call i64 @strcmp(i8* %262, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %270, label %265

265:                                              ; preds = %260
  %266 = load i8**, i8*** %5, align 8
  %267 = load i8*, i8** %266, align 8
  %268 = call i64 @strcmp(i8* %267, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265, %260
  %271 = call i32 @pt_close_session(i32 0)
  store i32 %271, i32* %15, align 4
  br label %291

272:                                              ; preds = %265
  %273 = load i8**, i8*** %5, align 8
  %274 = load i8*, i8** %273, align 8
  %275 = call i64 @strcmp(i8* %274, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %272
  %278 = load i8**, i8*** %5, align 8
  %279 = load i8*, i8** %278, align 8
  %280 = call i64 @strcmp(i8* %279, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %277, %272
  %283 = load i32, i32* @PAM_DELETE_CRED, align 4
  %284 = call i32 @pt_setcred(i32 %283)
  store i32 %284, i32* %15, align 4
  br label %290

285:                                              ; preds = %277
  %286 = load i8**, i8*** %5, align 8
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i8* %287)
  %289 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  store i32 %289, i32* %15, align 4
  br label %290

290:                                              ; preds = %285, %282
  br label %291

291:                                              ; preds = %290, %270
  br label %292

292:                                              ; preds = %291, %258
  br label %293

293:                                              ; preds = %292, %245
  br label %294

294:                                              ; preds = %293, %233
  br label %295

295:                                              ; preds = %294, %220
  br label %296

296:                                              ; preds = %295, %208
  br label %297

297:                                              ; preds = %296, %196
  br label %298

298:                                              ; preds = %297, %184
  %299 = load i32, i32* %15, align 4
  %300 = load i32, i32* @PAM_SUCCESS, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %298
  %303 = load i32, i32* %14, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %302
  %306 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  br label %312

307:                                              ; preds = %302, %298
  %308 = load i32, i32* %4, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %4, align 4
  %310 = load i8**, i8*** %5, align 8
  %311 = getelementptr inbounds i8*, i8** %310, i32 1
  store i8** %311, i8*** %5, align 8
  br label %171

312:                                              ; preds = %305, %171
  br label %313

313:                                              ; preds = %312, %169, %149, %139
  %314 = load i32, i32* %15, align 4
  %315 = call i32 @pt_end(i32 %314)
  %316 = load i32, i32* %15, align 4
  %317 = load i32, i32* @PAM_SUCCESS, align 4
  %318 = icmp eq i32 %316, %317
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i32 0, i32 1
  %321 = call i32 @exit(i32 %320) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @opt_str_once(i32, i8**, i32) #1

declare dso_local i32 @openpam_set_feature(i32, i32) #1

declare dso_local i32 @opt_num_once(i32, i64*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @ttyname(i32) #1

declare dso_local i8* @getlogin(...) #1

declare dso_local i32 @pt_start(i8*, i8*) #1

declare dso_local i32 @pt_set_item(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pt_listenv(...) #1

declare dso_local i32 @pt_authenticate(i32) #1

declare dso_local i32 @pt_acct_mgmt(i32) #1

declare dso_local i32 @pt_chauthtok(i32) #1

declare dso_local i32 @pt_setcred(i32) #1

declare dso_local i32 @pt_open_session(i32) #1

declare dso_local i32 @pt_close_session(i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @pt_end(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
