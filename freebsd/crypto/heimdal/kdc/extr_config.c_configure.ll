; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_config.c_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_config.c_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32 }

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"error at argument `%s'\00", align 1
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@builtin_hdb_flag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"listing builtin hdb backends\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"builtin hdb backends: %s\0A\00", align 1
@config_file = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"%s/kdc.conf\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"getting configuration files\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"reading configuration files\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"krb5_kdc_default_config\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"kdc\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"krb5_kdc_set_dbinfo\00", align 1
@max_request_str = common dso_local global i8* null, align 8
@max_request_udp = common dso_local global i32 0, align 4
@max_request_tcp = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"max-request\00", align 1
@require_preauth = common dso_local global i32 0, align 4
@port_str = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@explicit_addresses = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@addresses_str = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c"addresses\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@enable_http = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"enable-http\00", align 1
@request_log = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"kdc-request-log\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"enforce-transited-policy\00", align 1
@.str.16 = private unnamed_addr constant [71 x i8] c"enforce-transited-policy deprecated, use [kdc]transited-policy instead\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@disable_des = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"disable-des\00", align 1
@ETYPE_DES_CBC_CRC = common dso_local global i32 0, align 4
@ETYPE_DES_CBC_MD4 = common dso_local global i32 0, align 4
@ETYPE_DES_CBC_MD5 = common dso_local global i32 0, align 4
@ETYPE_DES_CBC_NONE = common dso_local global i32 0, align 4
@ETYPE_DES_CFB64_NONE = common dso_local global i32 0, align 4
@ETYPE_DES_PCBC_NONE = common dso_local global i32 0, align 4
@DETACH_IS_DEFAULT = common dso_local global i32 0, align 4
@detach_from_console = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @configure(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %22, %3
  %16 = load i32, i32* @args, align 4
  %17 = load i32, i32* @num_args, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i8**, i8*** %6, align 8
  %20 = call i64 @getarg(i32 %16, i32 %17, i32 %18, i8** %19, i32* %9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %15

29:                                               ; preds = %15
  %30 = load i64, i64* @help_flag, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @usage(i32 0)
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i64, i64* @version_flag, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call i32 @print_version(i32* null)
  %39 = call i32 @exit(i32 0) #3
  unreachable

40:                                               ; preds = %34
  %41 = load i64, i64* @builtin_hdb_flag, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @hdb_list_builtin(i32 %44, i8** %11)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @krb5_err(i32 %49, i32 1, i64 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @free(i8* %55)
  %57 = call i32 @exit(i32 0) #3
  unreachable

58:                                               ; preds = %40
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i8**, i8*** %6, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  store i8** %65, i8*** %6, align 8
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = call i32 @usage(i32 1)
  br label %70

70:                                               ; preds = %68, %58
  %71 = load i32*, i32** @config_file, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @hdb_db_dir(i32 %74)
  %76 = call i32 @asprintf(i32** @config_file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** @config_file, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %73
  br label %82

82:                                               ; preds = %81, %70
  %83 = load i32*, i32** @config_file, align 8
  %84 = call i64 @krb5_prepend_config_files_default(i32* %83, i8*** %12)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* %4, align 4
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @krb5_err(i32 %88, i32 1, i64 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32, i32* %4, align 4
  %93 = load i8**, i8*** %12, align 8
  %94 = call i64 @krb5_set_config_files(i32 %92, i8** %93)
  store i64 %94, i64* %8, align 8
  %95 = load i8**, i8*** %12, align 8
  %96 = call i32 @krb5_free_config_files(i8** %95)
  %97 = load i64, i64* %8, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i32, i32* %4, align 4
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @krb5_err(i32 %100, i32 1, i64 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %103

103:                                              ; preds = %99, %91
  %104 = load i32, i32* %4, align 4
  %105 = call i64 @krb5_kdc_get_config(i32 %104, %struct.TYPE_10__** %7)
  store i64 %105, i64* %8, align 8
  %106 = load i64, i64* %8, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* %4, align 4
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @krb5_err(i32 %109, i32 1, i64 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %103
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %115 = call i32 @kdc_openlog(i32 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_10__* %114)
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = call i64 @krb5_kdc_set_dbinfo(i32 %116, %struct.TYPE_10__* %117)
  store i64 %118, i64* %8, align 8
  %119 = load i64, i64* %8, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load i32, i32* %4, align 4
  %123 = load i64, i64* %8, align 8
  %124 = call i32 @krb5_err(i32 %122, i32 1, i64 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %125

125:                                              ; preds = %121, %112
  %126 = load i8*, i8** @max_request_str, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i8*, i8** @max_request_str, align 8
  %130 = call i32 @parse_bytes(i8* %129, i32* null)
  store i32 %130, i32* @max_request_udp, align 4
  store i32 %130, i32* @max_request_tcp, align 4
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* @max_request_tcp, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32, i32* %4, align 4
  %136 = call i8* @krb5_config_get_string(i32 %135, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32* null)
  store i8* %136, i8** %10, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i8*, i8** %10, align 8
  %141 = call i32 @parse_bytes(i8* %140, i32* null)
  store i32 %141, i32* @max_request_udp, align 4
  store i32 %141, i32* @max_request_tcp, align 4
  br label %142

142:                                              ; preds = %139, %134
  br label %143

143:                                              ; preds = %142, %131
  %144 = load i32, i32* @require_preauth, align 4
  %145 = icmp ne i32 %144, -1
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, i32* @require_preauth, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %143
  %151 = load i8*, i8** @port_str, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i32, i32* %4, align 4
  %155 = call i8* @krb5_config_get_string(i32 %154, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32* null)
  store i8* %155, i8** %10, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i8*, i8** %10, align 8
  %160 = call i8* @strdup(i8* %159)
  store i8* %160, i8** @port_str, align 8
  br label %161

161:                                              ; preds = %158, %153
  br label %162

162:                                              ; preds = %161, %150
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @explicit_addresses, i32 0, i32 0), align 8
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @addresses_str, i32 0, i32 0), align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %162
  store i32 0, i32* %13, align 4
  br label %166

166:                                              ; preds = %181, %165
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @addresses_str, i32 0, i32 0), align 8
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %166
  %171 = load i32, i32* %4, align 4
  %172 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @addresses_str, i32 0, i32 1), align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp eq i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @add_one_address(i32 %171, i32 %176, i32 %179)
  br label %181

181:                                              ; preds = %170
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  br label %166

184:                                              ; preds = %166
  %185 = call i32 @free_getarg_strings(%struct.TYPE_11__* @addresses_str)
  br label %213

186:                                              ; preds = %162
  %187 = load i32, i32* %4, align 4
  %188 = call i8** @krb5_config_get_strings(i32 %187, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* null)
  store i8** %188, i8*** %14, align 8
  %189 = load i8**, i8*** %14, align 8
  %190 = icmp ne i8** %189, null
  br i1 %190, label %191, label %212

191:                                              ; preds = %186
  %192 = load i32, i32* %4, align 4
  %193 = load i8**, i8*** %14, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i32 1
  store i8** %194, i8*** %14, align 8
  %195 = load i8*, i8** %193, align 8
  %196 = ptrtoint i8* %195 to i32
  %197 = load i32, i32* @TRUE, align 4
  %198 = call i32 @add_one_address(i32 %192, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %203, %191
  %200 = load i8**, i8*** %14, align 8
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %211

203:                                              ; preds = %199
  %204 = load i32, i32* %4, align 4
  %205 = load i8**, i8*** %14, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i32 1
  store i8** %206, i8*** %14, align 8
  %207 = load i8*, i8** %205, align 8
  %208 = ptrtoint i8* %207 to i32
  %209 = load i32, i32* @FALSE, align 4
  %210 = call i32 @add_one_address(i32 %204, i32 %208, i32 %209)
  br label %199

211:                                              ; preds = %199
  br label %212

212:                                              ; preds = %211, %186
  br label %213

213:                                              ; preds = %212, %184
  %214 = load i32, i32* @enable_http, align 4
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @krb5_config_get_bool(i32 %217, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32* null)
  store i32 %218, i32* @enable_http, align 4
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i32*, i32** @request_log, align 8
  %221 = icmp eq i32* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load i32, i32* %4, align 4
  %224 = call i8* @krb5_config_get_string(i32 %223, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32* null)
  %225 = bitcast i8* %224 to i32*
  store i32* %225, i32** @request_log, align 8
  br label %226

226:                                              ; preds = %222, %219
  %227 = load i32, i32* %4, align 4
  %228 = call i8* @krb5_config_get_string(i32 %227, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32* null)
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load i32, i32* %4, align 4
  %232 = call i32 @krb5_errx(i32 %231, i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.16, i64 0, i64 0))
  br label %233

233:                                              ; preds = %230, %226
  %234 = load i32, i32* @max_request_tcp, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  store i32 65536, i32* @max_request_tcp, align 4
  br label %237

237:                                              ; preds = %236, %233
  %238 = load i32, i32* @max_request_udp, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  store i32 65536, i32* @max_request_udp, align 4
  br label %241

241:                                              ; preds = %240, %237
  %242 = load i8*, i8** @port_str, align 8
  %243 = icmp eq i8* %242, null
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8** @port_str, align 8
  br label %245

245:                                              ; preds = %244, %241
  %246 = load i32, i32* @disable_des, align 4
  %247 = icmp eq i32 %246, -1
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* @FALSE, align 4
  %251 = call i32 @krb5_config_get_bool_default(i32 %249, i32* null, i32 %250, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32* null)
  store i32 %251, i32* @disable_des, align 4
  br label %252

252:                                              ; preds = %248, %245
  %253 = load i32, i32* @disable_des, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %274

255:                                              ; preds = %252
  %256 = load i32, i32* %4, align 4
  %257 = load i32, i32* @ETYPE_DES_CBC_CRC, align 4
  %258 = call i32 @krb5_enctype_disable(i32 %256, i32 %257)
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @ETYPE_DES_CBC_MD4, align 4
  %261 = call i32 @krb5_enctype_disable(i32 %259, i32 %260)
  %262 = load i32, i32* %4, align 4
  %263 = load i32, i32* @ETYPE_DES_CBC_MD5, align 4
  %264 = call i32 @krb5_enctype_disable(i32 %262, i32 %263)
  %265 = load i32, i32* %4, align 4
  %266 = load i32, i32* @ETYPE_DES_CBC_NONE, align 4
  %267 = call i32 @krb5_enctype_disable(i32 %265, i32 %266)
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* @ETYPE_DES_CFB64_NONE, align 4
  %270 = call i32 @krb5_enctype_disable(i32 %268, i32 %269)
  %271 = load i32, i32* %4, align 4
  %272 = load i32, i32* @ETYPE_DES_PCBC_NONE, align 4
  %273 = call i32 @krb5_enctype_disable(i32 %271, i32 %272)
  br label %274

274:                                              ; preds = %255, %252
  %275 = load i32, i32* %4, align 4
  %276 = call i32 @krb5_kdc_windc_init(i32 %275)
  %277 = load i32, i32* %4, align 4
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %279 = call i32 @krb5_kdc_pkinit_config(i32 %277, %struct.TYPE_10__* %278)
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %280
}

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @hdb_list_builtin(i32, i8**) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @asprintf(i32**, i8*, i32) #1

declare dso_local i32 @hdb_db_dir(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @krb5_prepend_config_files_default(i32*, i8***) #1

declare dso_local i64 @krb5_set_config_files(i32, i8**) #1

declare dso_local i32 @krb5_free_config_files(i8**) #1

declare dso_local i64 @krb5_kdc_get_config(i32, %struct.TYPE_10__**) #1

declare dso_local i32 @kdc_openlog(i32, i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @krb5_kdc_set_dbinfo(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @parse_bytes(i8*, i32*) #1

declare dso_local i8* @krb5_config_get_string(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @add_one_address(i32, i32, i32) #1

declare dso_local i32 @free_getarg_strings(%struct.TYPE_11__*) #1

declare dso_local i8** @krb5_config_get_strings(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @krb5_config_get_bool(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @krb5_config_get_bool_default(i32, i32*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @krb5_enctype_disable(i32, i32) #1

declare dso_local i32 @krb5_kdc_windc_init(i32) #1

declare dso_local i32 @krb5_kdc_pkinit_config(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
