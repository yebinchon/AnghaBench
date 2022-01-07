; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_28__ = type { i8*, i32 }
%struct.TYPE_29__ = type { i8**, i32, i32, i32*, %struct.TYPE_28__ }
%struct.TYPE_26__ = type { i8*, i32 }

@KRB5_KPASSWD_VERS_CHANGEPW = common dso_local global i64 0, align 8
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"krb5_copy_data\00", align 1
@KRB5_KPASSWD_MALFORMED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"out out memory copying password\00", align 1
@KRB5_KPASSWD_VERS_SETPW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"decode_ChangePasswdDataMS\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"malformed ChangePasswdData\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"kadm5_init_with_password_ctx\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"targrealm but not targname\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"kadm5_init_with_password_ctx: failed to allocate realm\00", align 1
@KRB5_KPASSWD_SOFTERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to allocate realm\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"krb5_copy_principal\00", align 1
@KRB5_KPASSWD_HARDERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"failed to allocate principal\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"kadm5_init_with_password_ctx: unknown proto\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Unknown protocol used\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"unparse_name failed\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"out of memory error\00", align 1
@KADM5_CONFIG_REALM = common dso_local global i32 0, align 4
@KADM5_ADMIN_SERVICE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"Internal error\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [53 x i8] c"%s didn't pass password quality check with error: %s\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Changing password for %s\00", align 1
@KADM5_PRIV_CPW = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [49 x i8] c"Check ACL failed for %s for changing %s password\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"permission denied\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"%s is changing password for %s\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"kadm5_s_chpass_principal_cond: %s\00", align 1
@KRB5_KPASSWD_SUCCESS = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"Password changed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_27__*, i64, i32, %struct.sockaddr*, i32, %struct.TYPE_28__*)* @change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change(i32 %0, %struct.TYPE_27__* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i32 %5, %struct.TYPE_28__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_29__, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_27__*, align 8
  %22 = alloca %struct.TYPE_28__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_29__, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_26__, align 8
  %27 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_28__* %6, %struct.TYPE_28__** %14, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %20, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %21, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %22, align 8
  %28 = call i32 @memset(%struct.TYPE_29__* %19, i32 0, i32 40)
  %29 = call i32 @memset(%struct.TYPE_29__* %24, i32 0, i32 40)
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @KRB5_KPASSWD_VERS_CHANGEPW, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %7
  %34 = load i32, i32* @context, align 4
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %36 = call i64 @krb5_copy_data(i32 %34, %struct.TYPE_28__* %35, %struct.TYPE_28__** %22)
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32, i32* @context, align 4
  %41 = load i64, i64* %15, align 8
  %42 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %40, i64 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @KRB5_KPASSWD_MALFORMED, align 4
  %48 = call i32 @reply_priv(i32 %43, i32 %44, %struct.sockaddr* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %392

49:                                               ; preds = %33
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %50, %struct.TYPE_27__** %21, align 8
  br label %179

51:                                               ; preds = %7
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @KRB5_KPASSWD_VERS_SETPW, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %169

55:                                               ; preds = %51
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @decode_ChangePasswdDataMS(i8* %58, i32 %61, %struct.TYPE_29__* %24, i64* %25)
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = load i32, i32* @context, align 4
  %67 = load i64, i64* %15, align 8
  %68 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %66, i64 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @KRB5_KPASSWD_MALFORMED, align 4
  %74 = call i32 @reply_priv(i32 %69, i32 %70, %struct.sockaddr* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %392

75:                                               ; preds = %55
  %76 = load i32, i32* @context, align 4
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 4
  %78 = call i64 @krb5_copy_data(i32 %76, %struct.TYPE_28__* %77, %struct.TYPE_28__** %22)
  store i64 %78, i64* %15, align 8
  %79 = load i64, i64* %15, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i32, i32* @context, align 4
  %83 = load i64, i64* %15, align 8
  %84 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %82, i64 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @KRB5_KPASSWD_MALFORMED, align 4
  %90 = call i32 @reply_priv(i32 %85, i32 %86, %struct.sockaddr* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %358

91:                                               ; preds = %75
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %109

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = icmp ne i8** %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load i32, i32* @context, align 4
  %101 = load i64, i64* %15, align 8
  %102 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %100, i64 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @KRB5_KPASSWD_MALFORMED, align 4
  %108 = call i32 @reply_priv(i32 %103, i32 %104, %struct.sockaddr* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %358

109:                                              ; preds = %95, %91
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %166

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 1
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %119 = load i8**, i8*** %118, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  store i8* %120, i8** %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %113
  %126 = load i32, i32* @context, align 4
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  %128 = call i64 @krb5_get_default_realm(i32 %126, i8** %127)
  store i64 %128, i64* %15, align 8
  %129 = load i64, i64* %15, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %125
  %132 = load i32, i32* @context, align 4
  %133 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %132, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @KRB5_KPASSWD_SOFTERROR, align 4
  %139 = call i32 @reply_priv(i32 %134, i32 %135, %struct.sockaddr* %136, i32 %137, i32 %138, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %358

140:                                              ; preds = %125
  br label %141

141:                                              ; preds = %140, %113
  %142 = load i32, i32* @context, align 4
  %143 = call i64 @krb5_copy_principal(i32 %142, %struct.TYPE_26__* %26, %struct.TYPE_27__** %21)
  store i64 %143, i64* %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %145 = load i8**, i8*** %144, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @free(i8* %150)
  br label %152

152:                                              ; preds = %148, %141
  %153 = load i64, i64* %15, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %152
  %156 = load i32, i32* @context, align 4
  %157 = load i64, i64* %15, align 8
  %158 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %156, i64 %157, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @KRB5_KPASSWD_HARDERROR, align 4
  %164 = call i32 @reply_priv(i32 %159, i32 %160, %struct.sockaddr* %161, i32 %162, i32 %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %358

165:                                              ; preds = %152
  br label %168

166:                                              ; preds = %109
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %167, %struct.TYPE_27__** %21, align 8
  br label %168

168:                                              ; preds = %166, %165
  br label %178

169:                                              ; preds = %51
  %170 = load i32, i32* @context, align 4
  %171 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %170, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* @KRB5_KPASSWD_HARDERROR, align 4
  %177 = call i32 @reply_priv(i32 %172, i32 %173, %struct.sockaddr* %174, i32 %175, i32 %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %392

178:                                              ; preds = %168
  br label %179

179:                                              ; preds = %178, %49
  %180 = load i32, i32* @context, align 4
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %182 = call i64 @krb5_unparse_name(i32 %180, %struct.TYPE_27__* %181, i8** %17)
  store i64 %182, i64* %15, align 8
  %183 = load i64, i64* %15, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %179
  %186 = load i32, i32* @context, align 4
  %187 = load i64, i64* %15, align 8
  %188 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %186, i64 %187, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @KRB5_KPASSWD_HARDERROR, align 4
  %194 = call i32 @reply_priv(i32 %189, i32 %190, %struct.sockaddr* %191, i32 %192, i32 %193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %358

195:                                              ; preds = %179
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 2
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* @KADM5_CONFIG_REALM, align 4
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %200
  store i32 %203, i32* %201, align 8
  %204 = load i32, i32* @context, align 4
  %205 = load i8*, i8** %17, align 8
  %206 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %207 = call i64 @kadm5_init_with_password_ctx(i32 %204, i8* %205, i32* null, i32 %206, %struct.TYPE_29__* %19, i32 0, i32 0, i8** %20)
  store i64 %207, i64* %15, align 8
  %208 = load i64, i64* %15, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %195
  %211 = load i32, i32* @context, align 4
  %212 = load i64, i64* %15, align 8
  %213 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %211, i64 %212, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %11, align 4
  %216 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @reply_priv(i32 %214, i32 %215, %struct.sockaddr* %216, i32 %217, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %358

219:                                              ; preds = %195
  %220 = load i32, i32* @context, align 4
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %222 = call i64 @krb5_unparse_name(i32 %220, %struct.TYPE_27__* %221, i8** %16)
  store i64 %222, i64* %15, align 8
  %223 = load i64, i64* %15, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %219
  %226 = load i32, i32* @context, align 4
  %227 = load i64, i64* %15, align 8
  %228 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %226, i64 %227, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* @KRB5_KPASSWD_HARDERROR, align 4
  %234 = call i32 @reply_priv(i32 %229, i32 %230, %struct.sockaddr* %231, i32 %232, i32 %233, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %358

235:                                              ; preds = %219
  %236 = load i32, i32* @context, align 4
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %239 = call i64 @krb5_principal_compare(i32 %236, %struct.TYPE_27__* %237, %struct.TYPE_27__* %238)
  %240 = load i64, i64* @TRUE, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %265

242:                                              ; preds = %235
  %243 = load i32, i32* @context, align 4
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %246 = call i8* @kadm5_check_password_quality(i32 %243, %struct.TYPE_27__* %244, %struct.TYPE_28__* %245)
  store i8* %246, i8** %18, align 8
  %247 = load i8*, i8** %18, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %261

249:                                              ; preds = %242
  %250 = load i32, i32* @context, align 4
  %251 = load i8*, i8** %16, align 8
  %252 = load i8*, i8** %18, align 8
  %253 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %250, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i8* %251, i8* %252)
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* %11, align 4
  %256 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* @KRB5_KPASSWD_SOFTERROR, align 4
  %259 = load i8*, i8** %18, align 8
  %260 = call i32 @reply_priv(i32 %254, i32 %255, %struct.sockaddr* %256, i32 %257, i32 %258, i8* %259)
  br label %358

261:                                              ; preds = %242
  %262 = load i32, i32* @context, align 4
  %263 = load i8*, i8** %16, align 8
  %264 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %262, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* %263)
  br label %289

265:                                              ; preds = %235
  %266 = load i8*, i8** %20, align 8
  %267 = load i32, i32* @KADM5_PRIV_CPW, align 4
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %269 = call i64 @_kadm5_acl_check_permission(i8* %266, i32 %267, %struct.TYPE_27__* %268)
  store i64 %269, i64* %15, align 8
  %270 = load i64, i64* %15, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %284

272:                                              ; preds = %265
  %273 = load i32, i32* @context, align 4
  %274 = load i64, i64* %15, align 8
  %275 = load i8*, i8** %17, align 8
  %276 = load i8*, i8** %16, align 8
  %277 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %273, i64 %274, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0), i8* %275, i8* %276)
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* %11, align 4
  %280 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* @KRB5_KPASSWD_HARDERROR, align 4
  %283 = call i32 @reply_priv(i32 %278, i32 %279, %struct.sockaddr* %280, i32 %281, i32 %282, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  br label %358

284:                                              ; preds = %265
  %285 = load i32, i32* @context, align 4
  %286 = load i8*, i8** %17, align 8
  %287 = load i8*, i8** %16, align 8
  %288 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %285, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* %286, i8* %287)
  br label %289

289:                                              ; preds = %284, %261
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %291 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %293, 1
  %295 = call i64 @krb5_data_realloc(%struct.TYPE_28__* %290, i32 %294)
  store i64 %295, i64* %15, align 8
  %296 = load i64, i64* %15, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %308

298:                                              ; preds = %289
  %299 = load i32, i32* @context, align 4
  %300 = load i64, i64* %15, align 8
  %301 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %299, i64 %300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* %11, align 4
  %304 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %305 = load i32, i32* %13, align 4
  %306 = load i32, i32* @KRB5_KPASSWD_HARDERROR, align 4
  %307 = call i32 @reply_priv(i32 %302, i32 %303, %struct.sockaddr* %304, i32 %305, i32 %306, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %358

308:                                              ; preds = %289
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  store i8* %311, i8** %23, align 8
  %312 = load i8*, i8** %23, align 8
  %313 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %314 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = sub nsw i32 %315, 1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, i8* %312, i64 %317
  store i8 0, i8* %318, align 1
  %319 = load i8*, i8** %20, align 8
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %321 = load i8*, i8** %23, align 8
  %322 = call i64 @kadm5_s_chpass_principal_cond(i8* %319, %struct.TYPE_27__* %320, i8* %321)
  store i64 %322, i64* %15, align 8
  %323 = load i32, i32* @context, align 4
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %325 = call i32 @krb5_free_data(i32 %323, %struct.TYPE_28__* %324)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %22, align 8
  %326 = load i64, i64* %15, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %351

328:                                              ; preds = %308
  %329 = load i32, i32* @context, align 4
  %330 = load i64, i64* %15, align 8
  %331 = call i8* @krb5_get_error_message(i32 %329, i64 %330)
  store i8* %331, i8** %27, align 8
  %332 = load i32, i32* @context, align 4
  %333 = load i8*, i8** %27, align 8
  %334 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %332, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i8* %333)
  %335 = load i32, i32* %8, align 4
  %336 = load i32, i32* %11, align 4
  %337 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %338 = load i32, i32* %13, align 4
  %339 = load i32, i32* @KRB5_KPASSWD_SOFTERROR, align 4
  %340 = load i8*, i8** %27, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %344

342:                                              ; preds = %328
  %343 = load i8*, i8** %27, align 8
  br label %345

344:                                              ; preds = %328
  br label %345

345:                                              ; preds = %344, %342
  %346 = phi i8* [ %343, %342 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), %344 ]
  %347 = call i32 @reply_priv(i32 %335, i32 %336, %struct.sockaddr* %337, i32 %338, i32 %339, i8* %346)
  %348 = load i32, i32* @context, align 4
  %349 = load i8*, i8** %27, align 8
  %350 = call i32 @krb5_free_error_message(i32 %348, i8* %349)
  br label %358

351:                                              ; preds = %308
  %352 = load i32, i32* %8, align 4
  %353 = load i32, i32* %11, align 4
  %354 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %355 = load i32, i32* %13, align 4
  %356 = load i32, i32* @KRB5_KPASSWD_SUCCESS, align 4
  %357 = call i32 @reply_priv(i32 %352, i32 %353, %struct.sockaddr* %354, i32 %355, i32 %356, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  br label %358

358:                                              ; preds = %351, %345, %298, %272, %249, %225, %210, %185, %155, %131, %99, %81
  %359 = call i32 @free_ChangePasswdDataMS(%struct.TYPE_29__* %24)
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %361 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %362 = icmp ne %struct.TYPE_27__* %360, %361
  br i1 %362, label %363, label %367

363:                                              ; preds = %358
  %364 = load i32, i32* @context, align 4
  %365 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %366 = call i32 @krb5_free_principal(i32 %364, %struct.TYPE_27__* %365)
  br label %367

367:                                              ; preds = %363, %358
  %368 = load i8*, i8** %17, align 8
  %369 = icmp ne i8* %368, null
  br i1 %369, label %370, label %373

370:                                              ; preds = %367
  %371 = load i8*, i8** %17, align 8
  %372 = call i32 @free(i8* %371)
  br label %373

373:                                              ; preds = %370, %367
  %374 = load i8*, i8** %16, align 8
  %375 = icmp ne i8* %374, null
  br i1 %375, label %376, label %379

376:                                              ; preds = %373
  %377 = load i8*, i8** %16, align 8
  %378 = call i32 @free(i8* %377)
  br label %379

379:                                              ; preds = %376, %373
  %380 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %381 = icmp ne %struct.TYPE_28__* %380, null
  br i1 %381, label %382, label %386

382:                                              ; preds = %379
  %383 = load i32, i32* @context, align 4
  %384 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %385 = call i32 @krb5_free_data(i32 %383, %struct.TYPE_28__* %384)
  br label %386

386:                                              ; preds = %382, %379
  %387 = load i8*, i8** %20, align 8
  %388 = icmp ne i8* %387, null
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load i8*, i8** %20, align 8
  %391 = call i32 @kadm5_destroy(i8* %390)
  br label %392

392:                                              ; preds = %39, %65, %169, %389, %386
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i64 @krb5_copy_data(i32, %struct.TYPE_28__*, %struct.TYPE_28__**) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, ...) #1

declare dso_local i32 @reply_priv(i32, i32, %struct.sockaddr*, i32, i32, i8*) #1

declare dso_local i64 @decode_ChangePasswdDataMS(i8*, i32, %struct.TYPE_29__*, i64*) #1

declare dso_local i64 @krb5_get_default_realm(i32, i8**) #1

declare dso_local i32 @krb5_warnx(i32, i8*, ...) #1

declare dso_local i64 @krb5_copy_principal(i32, %struct.TYPE_26__*, %struct.TYPE_27__**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_unparse_name(i32, %struct.TYPE_27__*, i8**) #1

declare dso_local i64 @kadm5_init_with_password_ctx(i32, i8*, i32*, i32, %struct.TYPE_29__*, i32, i32, i8**) #1

declare dso_local i64 @krb5_principal_compare(i32, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i8* @kadm5_check_password_quality(i32, %struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i64 @_kadm5_acl_check_permission(i8*, i32, %struct.TYPE_27__*) #1

declare dso_local i64 @krb5_data_realloc(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @kadm5_s_chpass_principal_cond(i8*, %struct.TYPE_27__*, i8*) #1

declare dso_local i32 @krb5_free_data(i32, %struct.TYPE_28__*) #1

declare dso_local i8* @krb5_get_error_message(i32, i64) #1

declare dso_local i32 @krb5_free_error_message(i32, i8*) #1

declare dso_local i32 @free_ChangePasswdDataMS(%struct.TYPE_29__*) #1

declare dso_local i32 @krb5_free_principal(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @kadm5_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
