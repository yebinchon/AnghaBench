; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_kadmin.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_kadmin.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32** }
%struct.TYPE_8__ = type { i32, i64, i32, i64, i64 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@config_file = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s/kdc.conf\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"getting configuration files\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"reading configuration files\00", align 1
@realm = common dso_local global i64 0, align 8
@KADM5_CONFIG_REALM = common dso_local global i32 0, align 4
@admin_server = common dso_local global i64 0, align 8
@KADM5_CONFIG_ADMIN_SERVER = common dso_local global i32 0, align 4
@server_port = common dso_local global i64 0, align 8
@KADM5_CONFIG_KADMIND_PORT = common dso_local global i32 0, align 4
@keyfile = common dso_local global i64 0, align 8
@KADM5_CONFIG_STASH_FILE = common dso_local global i32 0, align 4
@local_flag = common dso_local global i64 0, align 8
@check_library = common dso_local global i32 0, align 4
@check_function = common dso_local global i32 0, align 4
@policy_libraries = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"kadm5_add_passwd_quality_verifier\00", align 1
@KADM5_ADMIN_SERVICE = common dso_local global i32 0, align 4
@kadm_handle = common dso_local global i32 0, align 4
@ad_flag = common dso_local global i64 0, align 8
@client_name = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"keytab mode require principal name\00", align 1
@keytab = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"kadm5_init_with_password\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@commands = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"unrecognized command: %s\00", align 1
@exit_seen = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"kadmin> \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @setprogname(i8* %14)
  %16 = call i32 @krb5_init_context(i32* @context)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @args, align 4
  %24 = load i32, i32* @num_args, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i64 @getarg(i32 %23, i32 %24, i32 %25, i8** %26, i32* %9)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @usage(i32 1)
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i64, i64* @help_flag, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @usage(i32 0)
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i64, i64* @version_flag, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i32 @print_version(i32* null)
  %41 = call i32 @exit(i32 0) #3
  unreachable

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8*, i8** %47, i64 %48
  store i8** %49, i8*** %5, align 8
  %50 = load i32*, i32** @config_file, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load i32, i32* @context, align 4
  %54 = call i32 @hdb_db_dir(i32 %53)
  %55 = call i32 @asprintf(i32** @config_file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** @config_file, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %52
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i32*, i32** @config_file, align 8
  %63 = call i32 @krb5_prepend_config_files_default(i32* %62, i8*** %7)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @context, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @krb5_err(i32 %67, i32 1, i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* @context, align 4
  %72 = load i8**, i8*** %7, align 8
  %73 = call i32 @krb5_set_config_files(i32 %71, i8** %72)
  store i32 %73, i32* %6, align 4
  %74 = load i8**, i8*** %7, align 8
  %75 = call i32 @krb5_free_config_files(i8** %74)
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i32, i32* @context, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @krb5_err(i32 %79, i32 1, i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %70
  %83 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 40)
  %84 = load i64, i64* @realm, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i32, i32* @context, align 4
  %88 = load i64, i64* @realm, align 8
  %89 = call i32 @krb5_set_default_realm(i32 %87, i64 %88)
  %90 = load i64, i64* @realm, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i64 %90, i64* %91, align 8
  %92 = load i32, i32* @KADM5_CONFIG_REALM, align 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %86, %82
  %97 = load i64, i64* @admin_server, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i64, i64* @admin_server, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i64 %100, i64* %101, align 8
  %102 = load i32, i32* @KADM5_CONFIG_ADMIN_SERVER, align 4
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %99, %96
  %107 = load i64, i64* @server_port, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i64, i64* @server_port, align 8
  %111 = call i32 @htons(i64 %110)
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* @KADM5_CONFIG_KADMIND_PORT, align 4
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %109, %106
  %118 = load i64, i64* @keyfile, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i64, i64* @keyfile, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i64 %121, i64* %122, align 8
  %123 = load i32, i32* @KADM5_CONFIG_STASH_FILE, align 4
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %120, %117
  %128 = load i64, i64* @local_flag, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %171

130:                                              ; preds = %127
  %131 = load i32, i32* @context, align 4
  %132 = load i32, i32* @check_library, align 4
  %133 = load i32, i32* @check_function, align 4
  %134 = call i32 @kadm5_setup_passwd_quality_check(i32 %131, i32 %132, i32 %133)
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %154, %130
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @policy_libraries, i32 0, i32 0), align 8
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %135
  %140 = load i32, i32* @context, align 4
  %141 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @policy_libraries, i32 0, i32 1), align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @kadm5_add_passwd_quality_verifier(i32 %140, i32* %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %139
  %150 = load i32, i32* @context, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @krb5_err(i32 %150, i32 1, i32 %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %153

153:                                              ; preds = %149, %139
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %135

157:                                              ; preds = %135
  %158 = load i32, i32* @context, align 4
  %159 = call i32 @kadm5_add_passwd_quality_verifier(i32 %158, i32* null)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* @context, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @krb5_err(i32 %163, i32 1, i32 %164, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %166

166:                                              ; preds = %162, %157
  %167 = load i32, i32* @context, align 4
  %168 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %169 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %170 = call i32 @kadm5_s_init_with_password_ctx(i32 %167, i32 %168, i32* null, i32 %169, %struct.TYPE_8__* %8, i32 0, i32 0, i32* @kadm_handle)
  store i32 %170, i32* %6, align 4
  br label %207

171:                                              ; preds = %127
  %172 = load i64, i64* @ad_flag, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = load i32*, i32** @client_name, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* @context, align 4
  %179 = call i32 @krb5_errx(i32 %178, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* @context, align 4
  %182 = load i32*, i32** @client_name, align 8
  %183 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %184 = call i32 @kadm5_ad_init_with_password_ctx(i32 %181, i32* %182, i32* null, i32 %183, %struct.TYPE_8__* %8, i32 0, i32 0, i32* @kadm_handle)
  store i32 %184, i32* %6, align 4
  br label %206

185:                                              ; preds = %171
  %186 = load i64, i64* @keytab, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %185
  %189 = load i32*, i32** @client_name, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* @context, align 4
  %193 = call i32 @krb5_errx(i32 %192, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i32, i32* @context, align 4
  %196 = load i32*, i32** @client_name, align 8
  %197 = load i64, i64* @keytab, align 8
  %198 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %199 = call i32 @kadm5_c_init_with_skey_ctx(i32 %195, i32* %196, i64 %197, i32 %198, %struct.TYPE_8__* %8, i32 0, i32 0, i32* @kadm_handle)
  store i32 %199, i32* %6, align 4
  br label %205

200:                                              ; preds = %185
  %201 = load i32, i32* @context, align 4
  %202 = load i32*, i32** @client_name, align 8
  %203 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %204 = call i32 @kadm5_c_init_with_password_ctx(i32 %201, i32* %202, i32* null, i32 %203, %struct.TYPE_8__* %8, i32 0, i32 0, i32* @kadm_handle)
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %200, %194
  br label %206

206:                                              ; preds = %205, %180
  br label %207

207:                                              ; preds = %206, %166
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i32, i32* @context, align 4
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @krb5_err(i32 %211, i32 1, i32 %212, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %214

214:                                              ; preds = %210, %207
  %215 = load i32, i32* @SIGINT, align 4
  %216 = load i32, i32* @SIG_IGN, align 4
  %217 = call i32 @signal(i32 %215, i32 %216)
  %218 = load i32, i32* %4, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %243

220:                                              ; preds = %214
  %221 = load i32, i32* @commands, align 4
  %222 = load i32, i32* %4, align 4
  %223 = load i8**, i8*** %5, align 8
  %224 = call i32 @sl_command(i32 %221, i32 %222, i8** %223)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = icmp eq i32 %225, -1
  br i1 %226, label %227, label %233

227:                                              ; preds = %220
  %228 = load i32, i32* @context, align 4
  %229 = load i8**, i8*** %5, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @krb5_warnx(i32 %228, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %231)
  br label %238

233:                                              ; preds = %220
  %234 = load i32, i32* %6, align 4
  %235 = icmp eq i32 %234, -2
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  store i32 0, i32* %6, align 4
  br label %237

237:                                              ; preds = %236, %233
  br label %238

238:                                              ; preds = %237, %227
  %239 = load i32, i32* %6, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  store i32 1, i32* %10, align 4
  br label %242

242:                                              ; preds = %241, %238
  br label %261

243:                                              ; preds = %214
  br label %244

244:                                              ; preds = %259, %243
  %245 = load i32, i32* @exit_seen, align 4
  %246 = icmp ne i32 %245, 0
  %247 = xor i1 %246, true
  br i1 %247, label %248, label %260

248:                                              ; preds = %244
  %249 = load i32, i32* @commands, align 4
  %250 = call i32 @sl_command_loop(i32 %249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* null)
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* %6, align 4
  %252 = icmp eq i32 %251, -2
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  store i32 1, i32* @exit_seen, align 4
  br label %259

254:                                              ; preds = %248
  %255 = load i32, i32* %6, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i32 1, i32* %10, align 4
  br label %258

258:                                              ; preds = %257, %254
  br label %259

259:                                              ; preds = %258, %253
  br label %244

260:                                              ; preds = %244
  br label %261

261:                                              ; preds = %260, %242
  %262 = load i32, i32* @kadm_handle, align 4
  %263 = call i32 @kadm5_destroy(i32 %262)
  %264 = load i32, i32* @context, align 4
  %265 = call i32 @krb5_free_context(i32 %264)
  %266 = load i32, i32* %10, align 4
  ret i32 %266
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i32 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @asprintf(i32**, i8*, i32) #1

declare dso_local i32 @hdb_db_dir(i32) #1

declare dso_local i32 @krb5_prepend_config_files_default(i32*, i8***) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

declare dso_local i32 @krb5_set_config_files(i32, i8**) #1

declare dso_local i32 @krb5_free_config_files(i8**) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @krb5_set_default_realm(i32, i64) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @kadm5_setup_passwd_quality_check(i32, i32, i32) #1

declare dso_local i32 @kadm5_add_passwd_quality_verifier(i32, i32*) #1

declare dso_local i32 @kadm5_s_init_with_password_ctx(i32, i32, i32*, i32, %struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @kadm5_ad_init_with_password_ctx(i32, i32*, i32*, i32, %struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @kadm5_c_init_with_skey_ctx(i32, i32*, i64, i32, %struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @kadm5_c_init_with_password_ctx(i32, i32*, i32*, i32, %struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sl_command(i32, i32, i8**) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i8*) #1

declare dso_local i32 @sl_command_loop(i32, i8*, i32*) #1

declare dso_local i32 @kadm5_destroy(i32) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
