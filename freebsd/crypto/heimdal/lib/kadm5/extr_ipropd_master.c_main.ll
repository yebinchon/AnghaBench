; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_master.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_16__* }
%struct.sockaddr_un = type { i32 }
%struct.sockaddr = type { i32 }

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@config_file = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s/kdc.conf\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"getting configuration files\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"reading configuration files\00", align 1
@slave_time_gone = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@time_before_gone = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"couldn't parse time: %s\00", align 1
@slave_time_missing = common dso_local global i32 0, align 4
@time_before_missing = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"ipropd-master\00", align 1
@log_facility = common dso_local global i32 0, align 4
@hdb_kt_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"krb5_kt_register\00", align 1
@keytab_str = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"krb5_kt_resolve: %s\00", align 1
@realm = common dso_local global i64 0, align 8
@KADM5_CONFIG_REALM = common dso_local global i32 0, align 4
@KADM5_ADMIN_SERVICE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"kadm5_init_with_password_ctx\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@port_str = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"ipropd-master started at version: %lu\00", align 1
@exit_flag = common dso_local global i64 0, align 8
@__const.main.to = private unnamed_addr constant %struct.timeval { i32 30, i32 0 }, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"fd too large\00", align 1
@SLAVE_F_DEAD = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Missed a signal, updating slaves %lu to %lu\00", align 1
@database = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Got a signal, updating slaves %lu to %lu\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Got a signal, but no update in log version %lu\00", align 1
@SIGINT = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"%s terminated\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"%s unexpected exit reason: %ld\00", align 1
@SIGXCPU = common dso_local global i64 0, align 8
@detach_from_console = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8**, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.timeval, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.sockaddr_un, align 4
  %27 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* @args, align 4
  %31 = load i32, i32* @num_args, align 4
  %32 = call i32 @krb5_program_setup(i32* %7, i32 %28, i8** %29, i32 %30, i32 %31, i32* null)
  store i32 %32, i32* %19, align 4
  %33 = load i64, i64* @help_flag, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32, i32* @args, align 4
  %37 = load i32, i32* @num_args, align 4
  %38 = call i32 @krb5_std_usage(i32 0, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %2
  %40 = load i64, i64* @version_flag, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 @print_version(i32* null)
  %44 = call i32 @exit(i32 0) #4
  unreachable

45:                                               ; preds = %39
  %46 = call i32 (...) @setup_signal()
  %47 = load i32*, i32** @config_file, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @hdb_db_dir(i32 %50)
  %52 = call i32 @asprintf(i32** @config_file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** @config_file, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %49
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32*, i32** @config_file, align 8
  %60 = call i64 @krb5_prepend_config_files_default(i32* %59, i8*** %20)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i64, i64* %6, align 8
  %66 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %64, i32 1, i64 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %7, align 4
  %69 = load i8**, i8*** %20, align 8
  %70 = call i64 @krb5_set_config_files(i32 %68, i8** %69)
  store i64 %70, i64* %6, align 8
  %71 = load i8**, i8*** %20, align 8
  %72 = call i32 @krb5_free_config_files(i8** %71)
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = load i64, i64* %6, align 8
  %78 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %76, i32 1, i64 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %67
  %80 = load i32, i32* @slave_time_gone, align 4
  %81 = call i64 @parse_time(i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i64 %81, i64* @time_before_gone, align 8
  %82 = load i64, i64* @time_before_gone, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @slave_time_gone, align 4
  %87 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %85, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* @slave_time_missing, align 4
  %90 = call i64 @parse_time(i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i64 %90, i64* @time_before_missing, align 8
  %91 = load i64, i64* @time_before_missing, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @slave_time_missing, align 4
  %96 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %94, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = call i32 @pidfile(i32* null)
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @krb5_openlog(i32 %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* @log_facility)
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @log_facility, align 4
  %103 = call i32 @krb5_set_warn_dest(i32 %101, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @krb5_kt_register(i32 %104, i32* @hdb_kt_ops)
  store i64 %105, i64* %6, align 8
  %106 = load i64, i64* %6, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load i32, i32* %7, align 4
  %110 = load i64, i64* %6, align 8
  %111 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %109, i32 1, i64 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %97
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @keytab_str, align 4
  %115 = call i64 @krb5_kt_resolve(i32 %113, i32 %114, i32* %18)
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %6, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  %120 = load i64, i64* %6, align 8
  %121 = load i32, i32* @keytab_str, align 4
  %122 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %119, i32 1, i64 %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %118, %112
  %124 = call i32 @memset(%struct.TYPE_18__* %10, i32 0, i32 16)
  %125 = load i64, i64* @realm, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32, i32* @KADM5_CONFIG_REALM, align 4
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 8
  %132 = load i64, i64* @realm, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i64 %132, i64* %133, align 8
  br label %134

134:                                              ; preds = %127, %123
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %137 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %138 = call i64 @kadm5_init_with_skey_ctx(i32 %135, i32 %136, i32* null, i32 %137, %struct.TYPE_18__* %10, i32 0, i32 0, i8** %8)
  store i64 %138, i64* %6, align 8
  %139 = load i64, i64* %6, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load i32, i32* %7, align 4
  %143 = load i64, i64* %6, align 8
  %144 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %142, i32 1, i64 %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %145

145:                                              ; preds = %141, %134
  %146 = load i8*, i8** %8, align 8
  %147 = bitcast i8* %146 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %147, %struct.TYPE_17__** %9, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @O_RDONLY, align 4
  %153 = call i32 @open(i32 %151, i32 %152, i32 0)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %145
  %157 = load i32, i32* %7, align 4
  %158 = load i64, i64* @errno, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %157, i32 1, i64 %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %156, %145
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @make_signal_socket(i32 %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @port_str, align 4
  %169 = call i32 @make_listen_socket(i32 %167, i32 %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @port_str, align 4
  %172 = call i32 @make_listen6_socket(i32 %170, i32 %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @kadm5_log_get_version_fd(i32 %173, i64* %16)
  %175 = load i32, i32* %7, align 4
  %176 = load i64, i64* %16, align 8
  %177 = call i32 (i32, i8*, i64, ...) @krb5_warnx(i32 %175, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i64 %176)
  br label %178

178:                                              ; preds = %460, %309, %250, %164
  %179 = load i64, i64* @exit_flag, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %465

181:                                              ; preds = %178
  store i32 0, i32* %23, align 4
  %182 = bitcast %struct.timeval* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %182, i8* align 4 bitcast (%struct.timeval* @__const.main.to to i8*), i64 8, i1 false)
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @FD_SETSIZE, align 4
  %185 = icmp sge i32 %183, %184
  br i1 %185, label %194, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @FD_SETSIZE, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @FD_SETSIZE, align 4
  %193 = icmp sge i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190, %186, %181
  %195 = load i32, i32* %7, align 4
  %196 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %195, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %190
  %198 = call i32 @FD_ZERO(i32* %22)
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @FD_SET(i32 %199, i32* %22)
  %201 = load i32, i32* %23, align 4
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @max(i32 %201, i32 %202)
  store i32 %203, i32* %23, align 4
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @FD_SET(i32 %204, i32* %22)
  %206 = load i32, i32* %23, align 4
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @max(i32 %206, i32 %207)
  store i32 %208, i32* %23, align 4
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @FD_SET(i32 %209, i32* %22)
  %211 = load i32, i32* %23, align 4
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @max(i32 %211, i32 %212)
  store i32 %213, i32* %23, align 4
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %214, %struct.TYPE_16__** %21, align 8
  br label %215

215:                                              ; preds = %236, %197
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %217 = icmp ne %struct.TYPE_16__* %216, null
  br i1 %217, label %218, label %240

218:                                              ; preds = %215
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @SLAVE_F_DEAD, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %236

226:                                              ; preds = %218
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @FD_SET(i32 %229, i32* %22)
  %231 = load i32, i32* %23, align 4
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @max(i32 %231, i32 %234)
  store i32 %235, i32* %23, align 4
  br label %236

236:                                              ; preds = %226, %225
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %238, align 8
  store %struct.TYPE_16__* %239, %struct.TYPE_16__** %21, align 8
  br label %215

240:                                              ; preds = %215
  %241 = load i32, i32* %23, align 4
  %242 = add nsw i32 %241, 1
  %243 = call i64 @select(i32 %242, i32* %22, i32* null, i32* null, %struct.timeval* %24)
  store i64 %243, i64* %6, align 8
  %244 = load i64, i64* %6, align 8
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %240
  %247 = load i64, i64* @errno, align 8
  %248 = load i64, i64* @EINTR, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  br label %178

251:                                              ; preds = %246
  %252 = load i32, i32* %7, align 4
  %253 = load i64, i64* @errno, align 8
  %254 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %252, i32 1, i64 %253, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %255

255:                                              ; preds = %251
  br label %256

256:                                              ; preds = %255, %240
  %257 = load i64, i64* %6, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %296

259:                                              ; preds = %256
  %260 = load i64, i64* %16, align 8
  store i64 %260, i64* %17, align 8
  %261 = load i32, i32* %14, align 4
  %262 = call i32 @kadm5_log_get_version_fd(i32 %261, i64* %16)
  %263 = load i64, i64* %16, align 8
  %264 = load i64, i64* %17, align 8
  %265 = icmp sgt i64 %263, %264
  br i1 %265, label %266, label %295

266:                                              ; preds = %259
  %267 = load i32, i32* %7, align 4
  %268 = load i64, i64* %17, align 8
  %269 = load i64, i64* %16, align 8
  %270 = call i32 (i32, i8*, i64, ...) @krb5_warnx(i32 %267, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i64 %268, i64 %269)
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %271, %struct.TYPE_16__** %21, align 8
  br label %272

272:                                              ; preds = %290, %266
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %274 = icmp ne %struct.TYPE_16__* %273, null
  br i1 %274, label %275, label %294

275:                                              ; preds = %272
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @SLAVE_F_DEAD, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %275
  br label %290

283:                                              ; preds = %275
  %284 = load i32, i32* %7, align 4
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* @database, align 4
  %288 = load i64, i64* %16, align 8
  %289 = call i32 @send_diffs(i32 %284, %struct.TYPE_16__* %285, i32 %286, i32 %287, i64 %288)
  br label %290

290:                                              ; preds = %283, %282
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %292, align 8
  store %struct.TYPE_16__* %293, %struct.TYPE_16__** %21, align 8
  br label %272

294:                                              ; preds = %272
  br label %295

295:                                              ; preds = %294, %259
  br label %296

296:                                              ; preds = %295, %256
  %297 = load i64, i64* %6, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %360

299:                                              ; preds = %296
  %300 = load i32, i32* %11, align 4
  %301 = call i64 @FD_ISSET(i32 %300, i32* %22)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %360

303:                                              ; preds = %299
  store i32 4, i32* %27, align 4
  %304 = load i32, i32* %11, align 4
  %305 = bitcast i64* %25 to i8*
  %306 = bitcast %struct.sockaddr_un* %26 to %struct.sockaddr*
  %307 = call i64 @recvfrom(i32 %304, i8* %305, i32 8, i32 0, %struct.sockaddr* %306, i32* %27)
  %308 = icmp slt i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %303
  %310 = load i32, i32* %7, align 4
  %311 = load i64, i64* @errno, align 8
  %312 = call i32 @krb5_warn(i32 %310, i64 %311, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %178

313:                                              ; preds = %303
  %314 = load i64, i64* %6, align 8
  %315 = add nsw i64 %314, -1
  store i64 %315, i64* %6, align 8
  %316 = load i64, i64* %6, align 8
  %317 = icmp sge i64 %316, 0
  %318 = zext i1 %317 to i32
  %319 = call i32 @assert(i32 %318)
  %320 = load i64, i64* %16, align 8
  store i64 %320, i64* %17, align 8
  %321 = load i32, i32* %14, align 4
  %322 = call i32 @kadm5_log_get_version_fd(i32 %321, i64* %16)
  %323 = load i64, i64* %16, align 8
  %324 = load i64, i64* %17, align 8
  %325 = icmp sgt i64 %323, %324
  br i1 %325, label %326, label %355

326:                                              ; preds = %313
  %327 = load i32, i32* %7, align 4
  %328 = load i64, i64* %17, align 8
  %329 = load i64, i64* %16, align 8
  %330 = call i32 (i32, i8*, i64, ...) @krb5_warnx(i32 %327, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i64 %328, i64 %329)
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %331, %struct.TYPE_16__** %21, align 8
  br label %332

332:                                              ; preds = %350, %326
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %334 = icmp ne %struct.TYPE_16__* %333, null
  br i1 %334, label %335, label %354

335:                                              ; preds = %332
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @SLAVE_F_DEAD, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %335
  br label %350

343:                                              ; preds = %335
  %344 = load i32, i32* %7, align 4
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %346 = load i32, i32* %14, align 4
  %347 = load i32, i32* @database, align 4
  %348 = load i64, i64* %16, align 8
  %349 = call i32 @send_diffs(i32 %344, %struct.TYPE_16__* %345, i32 %346, i32 %347, i64 %348)
  br label %350

350:                                              ; preds = %343, %342
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 2
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %352, align 8
  store %struct.TYPE_16__* %353, %struct.TYPE_16__** %21, align 8
  br label %332

354:                                              ; preds = %332
  br label %359

355:                                              ; preds = %313
  %356 = load i32, i32* %7, align 4
  %357 = load i64, i64* %16, align 8
  %358 = call i32 (i32, i8*, i64, ...) @krb5_warnx(i32 %356, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i64 %357)
  br label %359

359:                                              ; preds = %355, %354
  br label %360

360:                                              ; preds = %359, %299, %296
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %361, %struct.TYPE_16__** %21, align 8
  br label %362

362:                                              ; preds = %420, %360
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %364 = icmp ne %struct.TYPE_16__* %363, null
  br i1 %364, label %365, label %424

365:                                              ; preds = %362
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @SLAVE_F_DEAD, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %365
  br label %420

373:                                              ; preds = %365
  %374 = load i64, i64* %6, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %401

376:                                              ; preds = %373
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = call i64 @FD_ISSET(i32 %379, i32* %22)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %401

382:                                              ; preds = %376
  %383 = load i64, i64* %6, align 8
  %384 = add nsw i64 %383, -1
  store i64 %384, i64* %6, align 8
  %385 = load i64, i64* %6, align 8
  %386 = icmp sge i64 %385, 0
  %387 = zext i1 %386 to i32
  %388 = call i32 @assert(i32 %387)
  %389 = load i32, i32* %7, align 4
  %390 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %391 = load i32, i32* %14, align 4
  %392 = load i32, i32* @database, align 4
  %393 = load i64, i64* %16, align 8
  %394 = call i64 @process_msg(i32 %389, %struct.TYPE_16__* %390, i32 %391, i32 %392, i64 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %382
  %397 = load i32, i32* %7, align 4
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %399 = call i32 @slave_dead(i32 %397, %struct.TYPE_16__* %398)
  br label %400

400:                                              ; preds = %396, %382
  br label %419

401:                                              ; preds = %376, %373
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %403 = call i64 @slave_gone_p(%struct.TYPE_16__* %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %401
  %406 = load i32, i32* %7, align 4
  %407 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %408 = call i32 @slave_dead(i32 %406, %struct.TYPE_16__* %407)
  br label %418

409:                                              ; preds = %401
  %410 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %411 = call i64 @slave_missing_p(%struct.TYPE_16__* %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %409
  %414 = load i32, i32* %7, align 4
  %415 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %416 = call i32 @send_are_you_there(i32 %414, %struct.TYPE_16__* %415)
  br label %417

417:                                              ; preds = %413, %409
  br label %418

418:                                              ; preds = %417, %405
  br label %419

419:                                              ; preds = %418, %400
  br label %420

420:                                              ; preds = %419, %372
  %421 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %422 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %421, i32 0, i32 2
  %423 = load %struct.TYPE_16__*, %struct.TYPE_16__** %422, align 8
  store %struct.TYPE_16__* %423, %struct.TYPE_16__** %21, align 8
  br label %362

424:                                              ; preds = %362
  %425 = load i64, i64* %6, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %442

427:                                              ; preds = %424
  %428 = load i32, i32* %13, align 4
  %429 = call i64 @FD_ISSET(i32 %428, i32* %22)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %442

431:                                              ; preds = %427
  %432 = load i32, i32* %7, align 4
  %433 = load i32, i32* %18, align 4
  %434 = load i32, i32* %13, align 4
  %435 = call i32 @add_slave(i32 %432, i32 %433, %struct.TYPE_16__** %15, i32 %434)
  %436 = load i64, i64* %6, align 8
  %437 = add nsw i64 %436, -1
  store i64 %437, i64* %6, align 8
  %438 = load i64, i64* %6, align 8
  %439 = icmp sge i64 %438, 0
  %440 = zext i1 %439 to i32
  %441 = call i32 @assert(i32 %440)
  br label %442

442:                                              ; preds = %431, %427, %424
  %443 = load i64, i64* %6, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %460

445:                                              ; preds = %442
  %446 = load i32, i32* %12, align 4
  %447 = call i64 @FD_ISSET(i32 %446, i32* %22)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %460

449:                                              ; preds = %445
  %450 = load i32, i32* %7, align 4
  %451 = load i32, i32* %18, align 4
  %452 = load i32, i32* %12, align 4
  %453 = call i32 @add_slave(i32 %450, i32 %451, %struct.TYPE_16__** %15, i32 %452)
  %454 = load i64, i64* %6, align 8
  %455 = add nsw i64 %454, -1
  store i64 %455, i64* %6, align 8
  %456 = load i64, i64* %6, align 8
  %457 = icmp sge i64 %456, 0
  %458 = zext i1 %457 to i32
  %459 = call i32 @assert(i32 %458)
  br label %460

460:                                              ; preds = %449, %445, %442
  %461 = load i32, i32* %7, align 4
  %462 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %463 = load i64, i64* %16, align 8
  %464 = call i32 @write_stats(i32 %461, %struct.TYPE_16__* %462, i64 %463)
  br label %178

465:                                              ; preds = %178
  %466 = load i64, i64* @exit_flag, align 8
  %467 = load i64, i64* @SIGINT, align 8
  %468 = icmp eq i64 %466, %467
  br i1 %468, label %473, label %469

469:                                              ; preds = %465
  %470 = load i64, i64* @exit_flag, align 8
  %471 = load i64, i64* @SIGTERM, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %473, label %477

473:                                              ; preds = %469, %465
  %474 = load i32, i32* %7, align 4
  %475 = call i64 (...) @getprogname()
  %476 = call i32 (i32, i8*, i64, ...) @krb5_warnx(i32 %474, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i64 %475)
  br label %482

477:                                              ; preds = %469
  %478 = load i32, i32* %7, align 4
  %479 = call i64 (...) @getprogname()
  %480 = load i64, i64* @exit_flag, align 8
  %481 = call i32 (i32, i8*, i64, ...) @krb5_warnx(i32 %478, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i64 %479, i64 %480)
  br label %482

482:                                              ; preds = %477, %473
  %483 = load i32, i32* %7, align 4
  %484 = call i32 @write_master_down(i32 %483)
  ret i32 0
}

declare dso_local i32 @krb5_program_setup(i32*, i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @krb5_std_usage(i32, i32, i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @setup_signal(...) #1

declare dso_local i32 @asprintf(i32**, i8*, i32) #1

declare dso_local i32 @hdb_db_dir(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @krb5_prepend_config_files_default(i32*, i8***) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_set_config_files(i32, i8**) #1

declare dso_local i32 @krb5_free_config_files(i8**) #1

declare dso_local i64 @parse_time(i32, i8*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, ...) #1

declare dso_local i32 @pidfile(i32*) #1

declare dso_local i32 @krb5_openlog(i32, i8*, i32*) #1

declare dso_local i32 @krb5_set_warn_dest(i32, i32) #1

declare dso_local i64 @krb5_kt_register(i32, i32*) #1

declare dso_local i64 @krb5_kt_resolve(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @kadm5_init_with_skey_ctx(i32, i32, i32*, i32, %struct.TYPE_18__*, i32, i32, i8**) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @make_signal_socket(i32) #1

declare dso_local i32 @make_listen_socket(i32, i32) #1

declare dso_local i32 @make_listen6_socket(i32, i32) #1

declare dso_local i32 @kadm5_log_get_version_fd(i32, i64*) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i64, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @send_diffs(i32, %struct.TYPE_16__*, i32, i32, i64) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i64 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @process_msg(i32, %struct.TYPE_16__*, i32, i32, i64) #1

declare dso_local i32 @slave_dead(i32, %struct.TYPE_16__*) #1

declare dso_local i64 @slave_gone_p(%struct.TYPE_16__*) #1

declare dso_local i64 @slave_missing_p(%struct.TYPE_16__*) #1

declare dso_local i32 @send_are_you_there(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @add_slave(i32, i32, %struct.TYPE_16__**, i32) #1

declare dso_local i32 @write_stats(i32, %struct.TYPE_16__*, i64) #1

declare dso_local i64 @getprogname(...) #1

declare dso_local i32 @write_master_down(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
