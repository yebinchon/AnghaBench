; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hpropd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hpropd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_30__ = type { i64 (i32, %struct.TYPE_30__*, i32, %struct.TYPE_29__*)*, i64 (i32, %struct.TYPE_30__*, i32*)*, i64 (i32, %struct.TYPE_30__*)*, i64 (i32, %struct.TYPE_30__*, i32, i32)* }
%struct.TYPE_29__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i64, i32* }

@rk_INVALID_SOCKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"hpropd\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"krb5_openlog\00", align 1
@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@local_realm = common dso_local global i32* null, align 8
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@database = common dso_local global i32* null, align 8
@from_stdin = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@inetd_flag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"hprop\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@HPROP_PORT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"getpeername\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"unknown address\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Connection from %s\00", align 1
@hdb_kt_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"krb5_kt_register\00", align 1
@ktname = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"krb5_kt_resolve %s\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"krb5_kt_default\00", align 1
@HPROP_VERSION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"krb5_recvauth\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"krb5_unparse_name\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"hprop/\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"ticket not for hprop (%s)\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"krb5_auth_con_getauthenticator\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"kadmin\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"krb5_make_principal\00", align 1
@unparseable_name = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [32 x i8] c"Unauthorized connection from %s\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"krb5_kt_close\00", align 1
@print_dump = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"%s~\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"hdb_create(%s)\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"hdb_open(%s)\00", align 1
@HEIM_ERR_EOF = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [18 x i8] c"krb5_read_message\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"krb5_read_priv_message\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"db_close\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"db_rename\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"hdb_value2entry\00", align 1
@stdout = common dso_local global i32 0, align 4
@HDB_ERR_EXISTS = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [17 x i8] c"Entry exists: %s\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"db_store\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Received %d principals\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr_storage, align 4
  %20 = alloca %struct.sockaddr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [256 x i8], align 16
  %23 = alloca %struct.TYPE_25__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_27__, align 8
  %27 = alloca %struct.TYPE_29__, align 4
  %28 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %8, align 8
  %29 = load i32, i32* @rk_INVALID_SOCKET, align 4
  store i32 %29, i32* %13, align 4
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %14, align 8
  store i32 0, i32* %15, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @setprogname(i8* %32)
  %34 = call i64 @krb5_init_context(i32* %7)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @krb5_openlog(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32** %17)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %17, align 8
  %49 = call i32 @krb5_set_warn_dest(i32 %47, i32* %48)
  %50 = load i32, i32* @args, align 4
  %51 = load i32, i32* @num_args, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = call i64 @getarg(i32 %50, i32 %51, i32 %52, i8** %53, i32* %15)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = call i32 @usage(i32 1)
  br label %58

58:                                               ; preds = %56, %46
  %59 = load i32*, i32** @local_realm, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** @local_realm, align 8
  %64 = call i32 @krb5_set_default_realm(i32 %62, i32* %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i64, i64* @help_flag, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @usage(i32 0)
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i64, i64* @version_flag, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = call i32 @print_version(i32* null)
  %75 = call i32 @exit(i32 0) #3
  unreachable

76:                                               ; preds = %70
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %4, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  store i8** %83, i8*** %5, align 8
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = call i32 @usage(i32 1)
  br label %88

88:                                               ; preds = %86, %76
  %89 = load i32*, i32** @database, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = call i32* @hdb_default_db(i32 %92)
  store i32* %93, i32** @database, align 8
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i64, i64* @from_stdin, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %98, i32* %13, align 4
  br label %266

99:                                               ; preds = %94
  %100 = bitcast %struct.sockaddr_storage* %19 to %struct.sockaddr*
  store %struct.sockaddr* %100, %struct.sockaddr** %20, align 8
  store i32 4, i32* %21, align 4
  %101 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %101, i32* %13, align 4
  store i32 0, i32* @inetd_flag, align 4
  %102 = load i32, i32* @inetd_flag, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @HPROP_PORT, align 4
  %107 = call i32 @krb5_getportbyname(i32 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = call i32 @mini_inetd(i32 %107, i32* %13)
  br label %109

109:                                              ; preds = %104, %99
  store i32 4, i32* %21, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %112 = call i64 @getpeername(i32 %110, %struct.sockaddr* %111, i32* %21)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* %7, align 4
  %116 = load i64, i64* @errno, align 8
  %117 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %115, i32 1, i64 %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %120 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %123 = call i32 @socket_get_address(%struct.sockaddr* %122)
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %125 = call i32* @inet_ntop(i32 %121, i32 %123, i8* %124, i32 256)
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %129 = call i32 @strlcpy(i8* %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 256)
  br label %130

130:                                              ; preds = %127, %118
  %131 = load i32, i32* %7, align 4
  %132 = load i32*, i32** %17, align 8
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %134 = call i32 (i32, i32*, i32, i8*, ...) @krb5_log(i32 %131, i32* %132, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* %7, align 4
  %136 = call i64 @krb5_kt_register(i32 %135, i32* @hdb_kt_ops)
  store i64 %136, i64* %6, align 8
  %137 = load i64, i64* %6, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load i32, i32* %7, align 4
  %141 = load i64, i64* %6, align 8
  %142 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %140, i32 1, i64 %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %143

143:                                              ; preds = %139, %130
  %144 = load i32*, i32** @ktname, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %158

146:                                              ; preds = %143
  %147 = load i32, i32* %7, align 4
  %148 = load i32*, i32** @ktname, align 8
  %149 = call i64 @krb5_kt_resolve(i32 %147, i32* %148, i32* %12)
  store i64 %149, i64* %6, align 8
  %150 = load i64, i64* %6, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load i32, i32* %7, align 4
  %154 = load i64, i64* %6, align 8
  %155 = load i32*, i32** @ktname, align 8
  %156 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %153, i32 1, i64 %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* %155)
  br label %157

157:                                              ; preds = %152, %146
  br label %168

158:                                              ; preds = %143
  %159 = load i32, i32* %7, align 4
  %160 = call i64 @krb5_kt_default(i32 %159, i32* %12)
  store i64 %160, i64* %6, align 8
  %161 = load i64, i64* %6, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i32, i32* %7, align 4
  %165 = load i64, i64* %6, align 8
  %166 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %164, i32 1, i64 %165, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %167

167:                                              ; preds = %163, %158
  br label %168

168:                                              ; preds = %167, %157
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @HPROP_VERSION, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i64 @krb5_recvauth(i32 %169, i32** %8, i32* %13, i32 %170, i32* null, i32 0, i32 %171, %struct.TYPE_25__** %23)
  store i64 %172, i64* %6, align 8
  %173 = load i64, i64* %6, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %168
  %176 = load i32, i32* %7, align 4
  %177 = load i64, i64* %6, align 8
  %178 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %176, i32 1, i64 %177, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %179

179:                                              ; preds = %175, %168
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @krb5_unparse_name(i32 %180, i32 %183, i8** %24)
  store i64 %184, i64* %6, align 8
  %185 = load i64, i64* %6, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %179
  %188 = load i32, i32* %7, align 4
  %189 = load i64, i64* %6, align 8
  %190 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %188, i32 1, i64 %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %191

191:                                              ; preds = %187, %179
  %192 = load i8*, i8** %24, align 8
  %193 = call i64 @strncmp(i8* %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 5)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load i32, i32* %7, align 4
  %197 = load i8*, i8** %24, align 8
  %198 = call i32 @krb5_errx(i32 %196, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %195, %191
  %200 = load i8*, i8** %24, align 8
  %201 = call i32 @free(i8* %200)
  %202 = load i32, i32* %7, align 4
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %204 = call i32 @krb5_free_ticket(i32 %202, %struct.TYPE_25__* %203)
  %205 = load i32, i32* %7, align 4
  %206 = load i32*, i32** %8, align 8
  %207 = call i64 @krb5_auth_con_getauthenticator(i32 %205, i32* %206, %struct.TYPE_28__** %11)
  store i64 %207, i64* %6, align 8
  %208 = load i64, i64* %6, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %199
  %211 = load i32, i32* %7, align 4
  %212 = load i64, i64* %6, align 8
  %213 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %211, i32 1, i64 %212, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %214

214:                                              ; preds = %210, %199
  %215 = load i32, i32* %7, align 4
  %216 = call i64 @krb5_make_principal(i32 %215, i32* %9, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i64 %216, i64* %6, align 8
  %217 = load i64, i64* %6, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %214
  %220 = load i32, i32* %7, align 4
  %221 = load i64, i64* %6, align 8
  %222 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %220, i32 1, i64 %221, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  br label %223

223:                                              ; preds = %219, %214
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @_krb5_principalname2krb5_principal(i32 %224, i32* %10, i32 %227, i32 %230)
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @krb5_principal_compare(i32 %232, i32 %233, i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %249, label %237

237:                                              ; preds = %223
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %10, align 4
  %240 = call i64 @krb5_unparse_name(i32 %238, i32 %239, i8** %25)
  store i64 %240, i64* %6, align 8
  %241 = load i64, i64* %6, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i8*, i8** @unparseable_name, align 8
  store i8* %244, i8** %25, align 8
  br label %245

245:                                              ; preds = %243, %237
  %246 = load i32, i32* %7, align 4
  %247 = load i8*, i8** %25, align 8
  %248 = call i32 @krb5_errx(i32 %246, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* %247)
  br label %249

249:                                              ; preds = %245, %223
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @krb5_free_principal(i32 %250, i32 %251)
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* %10, align 4
  %255 = call i32 @krb5_free_principal(i32 %253, i32 %254)
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* %12, align 4
  %258 = call i64 @krb5_kt_close(i32 %256, i32 %257)
  store i64 %258, i64* %6, align 8
  %259 = load i64, i64* %6, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %249
  %262 = load i32, i32* %7, align 4
  %263 = load i64, i64* %6, align 8
  %264 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %262, i32 1, i64 %263, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %265

265:                                              ; preds = %261, %249
  br label %266

266:                                              ; preds = %265, %97
  %267 = load i64, i64* @print_dump, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %302, label %269

269:                                              ; preds = %266
  %270 = load i32*, i32** @database, align 8
  %271 = call i32 @asprintf(i8** %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32* %270)
  %272 = load i32, i32* %7, align 4
  %273 = load i8*, i8** %16, align 8
  %274 = call i64 @hdb_create(i32 %272, %struct.TYPE_30__** %14, i8* %273)
  store i64 %274, i64* %6, align 8
  %275 = load i64, i64* %6, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %269
  %278 = load i32, i32* %7, align 4
  %279 = load i64, i64* %6, align 8
  %280 = load i8*, i8** %16, align 8
  %281 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %278, i32 1, i64 %279, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %280)
  br label %282

282:                                              ; preds = %277, %269
  %283 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %283, i32 0, i32 3
  %285 = load i64 (i32, %struct.TYPE_30__*, i32, i32)*, i64 (i32, %struct.TYPE_30__*, i32, i32)** %284, align 8
  %286 = load i32, i32* %7, align 4
  %287 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %288 = load i32, i32* @O_RDWR, align 4
  %289 = load i32, i32* @O_CREAT, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* @O_TRUNC, align 4
  %292 = or i32 %290, %291
  %293 = call i64 %285(i32 %286, %struct.TYPE_30__* %287, i32 %292, i32 384)
  store i64 %293, i64* %6, align 8
  %294 = load i64, i64* %6, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %282
  %297 = load i32, i32* %7, align 4
  %298 = load i64, i64* %6, align 8
  %299 = load i8*, i8** %16, align 8
  %300 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %297, i32 1, i64 %298, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* %299)
  br label %301

301:                                              ; preds = %296, %282
  br label %302

302:                                              ; preds = %301, %266
  store i32 0, i32* %18, align 4
  br label %303

303:                                              ; preds = %302, %439
  %304 = load i64, i64* @from_stdin, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %320

306:                                              ; preds = %303
  %307 = load i32, i32* %7, align 4
  %308 = call i64 @krb5_read_message(i32 %307, i32* %13, %struct.TYPE_27__* %26)
  store i64 %308, i64* %6, align 8
  %309 = load i64, i64* %6, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %306
  %312 = load i64, i64* %6, align 8
  %313 = load i64, i64* @HEIM_ERR_EOF, align 8
  %314 = icmp ne i64 %312, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = load i32, i32* %7, align 4
  %317 = load i64, i64* %6, align 8
  %318 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %316, i32 1, i64 %317, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  br label %319

319:                                              ; preds = %315, %311, %306
  br label %331

320:                                              ; preds = %303
  %321 = load i32, i32* %7, align 4
  %322 = load i32*, i32** %8, align 8
  %323 = call i64 @krb5_read_priv_message(i32 %321, i32* %322, i32* %13, %struct.TYPE_27__* %26)
  store i64 %323, i64* %6, align 8
  %324 = load i64, i64* %6, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %320
  %327 = load i32, i32* %7, align 4
  %328 = load i64, i64* %6, align 8
  %329 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %327, i32 1, i64 %328, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  br label %330

330:                                              ; preds = %326, %320
  br label %331

331:                                              ; preds = %330, %319
  %332 = load i64, i64* %6, align 8
  %333 = load i64, i64* @HEIM_ERR_EOF, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %339, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %380

339:                                              ; preds = %335, %331
  %340 = load i64, i64* @from_stdin, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %348, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 1
  store i32* null, i32** %343, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  store i64 0, i64* %344, align 8
  %345 = load i32, i32* %7, align 4
  %346 = load i32*, i32** %8, align 8
  %347 = call i32 @krb5_write_priv_message(i32 %345, i32* %346, i32* %13, %struct.TYPE_27__* %26)
  br label %348

348:                                              ; preds = %342, %339
  %349 = load i64, i64* @print_dump, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %379, label %351

351:                                              ; preds = %348
  %352 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %353 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %352, i32 0, i32 2
  %354 = load i64 (i32, %struct.TYPE_30__*)*, i64 (i32, %struct.TYPE_30__*)** %353, align 8
  %355 = load i32, i32* %7, align 4
  %356 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %357 = call i64 %354(i32 %355, %struct.TYPE_30__* %356)
  store i64 %357, i64* %6, align 8
  %358 = load i64, i64* %6, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %351
  %361 = load i32, i32* %7, align 4
  %362 = load i64, i64* %6, align 8
  %363 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %361, i32 1, i64 %362, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  br label %364

364:                                              ; preds = %360, %351
  %365 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %366 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %365, i32 0, i32 1
  %367 = load i64 (i32, %struct.TYPE_30__*, i32*)*, i64 (i32, %struct.TYPE_30__*, i32*)** %366, align 8
  %368 = load i32, i32* %7, align 4
  %369 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %370 = load i32*, i32** @database, align 8
  %371 = call i64 %367(i32 %368, %struct.TYPE_30__* %369, i32* %370)
  store i64 %371, i64* %6, align 8
  %372 = load i64, i64* %6, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %364
  %375 = load i32, i32* %7, align 4
  %376 = load i64, i64* %6, align 8
  %377 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %375, i32 1, i64 %376, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  br label %378

378:                                              ; preds = %374, %364
  br label %379

379:                                              ; preds = %378, %348
  br label %442

380:                                              ; preds = %335
  %381 = call i32 @memset(%struct.TYPE_29__* %27, i32 0, i32 4)
  %382 = load i32, i32* %7, align 4
  %383 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %384 = call i64 @hdb_value2entry(i32 %382, %struct.TYPE_27__* %26, %struct.TYPE_26__* %383)
  store i64 %384, i64* %6, align 8
  %385 = call i32 @krb5_data_free(%struct.TYPE_27__* %26)
  %386 = load i64, i64* %6, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %380
  %389 = load i32, i32* %7, align 4
  %390 = load i64, i64* %6, align 8
  %391 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %389, i32 1, i64 %390, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0))
  br label %392

392:                                              ; preds = %388, %380
  %393 = load i64, i64* @print_dump, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %392
  %396 = load i32, i32* %7, align 4
  %397 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %398 = load i32, i32* @stdout, align 4
  %399 = call i32 @hdb_print_entry(i32 %396, %struct.TYPE_30__* %397, %struct.TYPE_29__* %27, i32 %398)
  br label %439

400:                                              ; preds = %392
  %401 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %402 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %401, i32 0, i32 0
  %403 = load i64 (i32, %struct.TYPE_30__*, i32, %struct.TYPE_29__*)*, i64 (i32, %struct.TYPE_30__*, i32, %struct.TYPE_29__*)** %402, align 8
  %404 = load i32, i32* %7, align 4
  %405 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %406 = call i64 %403(i32 %404, %struct.TYPE_30__* %405, i32 0, %struct.TYPE_29__* %27)
  store i64 %406, i64* %6, align 8
  %407 = load i64, i64* %6, align 8
  %408 = load i64, i64* @HDB_ERR_EXISTS, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %410, label %427

410:                                              ; preds = %400
  %411 = load i32, i32* %7, align 4
  %412 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = call i64 @krb5_unparse_name(i32 %411, i32 %414, i8** %28)
  store i64 %415, i64* %6, align 8
  %416 = load i64, i64* %6, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %410
  %419 = load i8*, i8** @unparseable_name, align 8
  %420 = call i8* @strdup(i8* %419)
  store i8* %420, i8** %28, align 8
  br label %421

421:                                              ; preds = %418, %410
  %422 = load i32, i32* %7, align 4
  %423 = load i8*, i8** %28, align 8
  %424 = call i32 @krb5_warnx(i32 %422, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i8* %423)
  %425 = load i8*, i8** %28, align 8
  %426 = call i32 @free(i8* %425)
  br label %438

427:                                              ; preds = %400
  %428 = load i64, i64* %6, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %427
  %431 = load i32, i32* %7, align 4
  %432 = load i64, i64* %6, align 8
  %433 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %431, i32 1, i64 %432, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  br label %437

434:                                              ; preds = %427
  %435 = load i32, i32* %18, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %18, align 4
  br label %437

437:                                              ; preds = %434, %430
  br label %438

438:                                              ; preds = %437, %421
  br label %439

439:                                              ; preds = %438, %395
  %440 = load i32, i32* %7, align 4
  %441 = call i32 @hdb_free_entry(i32 %440, %struct.TYPE_29__* %27)
  br label %303

442:                                              ; preds = %379
  %443 = load i64, i64* @print_dump, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %450, label %445

445:                                              ; preds = %442
  %446 = load i32, i32* %7, align 4
  %447 = load i32*, i32** %17, align 8
  %448 = load i32, i32* %18, align 4
  %449 = call i32 (i32, i32*, i32, i8*, ...) @krb5_log(i32 %446, i32* %447, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 %448)
  br label %450

450:                                              ; preds = %445, %442
  %451 = load i32, i32* @inetd_flag, align 4
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %450
  %454 = load i32, i32* %13, align 4
  %455 = call i32 @rk_closesocket(i32 %454)
  br label %456

456:                                              ; preds = %453, %450
  %457 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i64 @krb5_init_context(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @krb5_openlog(i32, i8*, i32**) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @krb5_set_warn_dest(i32, i32*) #1

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @krb5_set_default_realm(i32, i32*) #1

declare dso_local i32 @print_version(i32*) #1

declare dso_local i32* @hdb_default_db(i32) #1

declare dso_local i32 @mini_inetd(i32, i32*) #1

declare dso_local i32 @krb5_getportbyname(i32, i8*, i8*, i32) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i32* @inet_ntop(i32, i32, i8*, i32) #1

declare dso_local i32 @socket_get_address(%struct.sockaddr*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @krb5_log(i32, i32*, i32, i8*, ...) #1

declare dso_local i64 @krb5_kt_register(i32, i32*) #1

declare dso_local i64 @krb5_kt_resolve(i32, i32*, i32*) #1

declare dso_local i64 @krb5_kt_default(i32, i32*) #1

declare dso_local i64 @krb5_recvauth(i32, i32**, i32*, i32, i32*, i32, i32, %struct.TYPE_25__**) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_free_ticket(i32, %struct.TYPE_25__*) #1

declare dso_local i64 @krb5_auth_con_getauthenticator(i32, i32*, %struct.TYPE_28__**) #1

declare dso_local i64 @krb5_make_principal(i32, i32*, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @_krb5_principalname2krb5_principal(i32, i32*, i32, i32) #1

declare dso_local i32 @krb5_principal_compare(i32, i32, i32) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i64 @krb5_kt_close(i32, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32*) #1

declare dso_local i64 @hdb_create(i32, %struct.TYPE_30__**, i8*) #1

declare dso_local i64 @krb5_read_message(i32, i32*, %struct.TYPE_27__*) #1

declare dso_local i64 @krb5_read_priv_message(i32, i32*, i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @krb5_write_priv_message(i32, i32*, i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i64 @hdb_value2entry(i32, %struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_27__*) #1

declare dso_local i32 @hdb_print_entry(i32, %struct.TYPE_30__*, %struct.TYPE_29__*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i8*) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_29__*) #1

declare dso_local i32 @rk_closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
