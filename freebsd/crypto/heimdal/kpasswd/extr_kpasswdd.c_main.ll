; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32** }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.servent = type { i32 }

@context = common dso_local global i32 0, align 4
@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@config_file = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s/kdc.conf\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"getting configuration files\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"reading configuration files\00", align 1
@realm_str = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"kpasswdd\00", align 1
@log_facility = common dso_local global i32 0, align 4
@port_str = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"bad port `%s'\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"kpasswd\00", align 1
@KPASSWD_PORT = common dso_local global i32 0, align 4
@hdb_kt_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"krb5_kt_register\00", align 1
@keytab_str = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@check_library = common dso_local global i32 0, align 4
@check_function = common dso_local global i32 0, align 4
@policy_libraries = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"kadm5_add_passwd_quality_verifier\00", align 1
@explicit_addresses = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@addresses_str = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"kdc\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"addresses\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigterm = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.servent*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* @args, align 4
  %18 = load i32, i32* @num_args, align 4
  %19 = call i32 @krb5_program_setup(i32* @context, i32 %15, i8** %16, i32 %17, i32 %18, i32* null)
  %20 = load i64, i64* @help_flag, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @args, align 4
  %24 = load i32, i32* @num_args, align 4
  %25 = call i32 @krb5_std_usage(i32 0, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i64, i64* @version_flag, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @print_version(i32* null)
  %31 = call i32 @exit(i32 0) #3
  unreachable

32:                                               ; preds = %26
  %33 = load i32*, i32** @config_file, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* @context, align 4
  %37 = call i32 @hdb_db_dir(i32 %36)
  %38 = call i32 @asprintf(i32** @config_file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** @config_file, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32*, i32** @config_file, align 8
  %46 = call i64 @krb5_prepend_config_files_default(i32* %45, i8*** %8)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @context, align 4
  %51 = load i64, i64* %7, align 8
  %52 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %50, i32 1, i64 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* @context, align 4
  %55 = load i8**, i8*** %8, align 8
  %56 = call i64 @krb5_set_config_files(i32 %54, i8** %55)
  store i64 %56, i64* %7, align 8
  %57 = load i8**, i8*** %8, align 8
  %58 = call i32 @krb5_free_config_files(i8** %57)
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @context, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %62, i32 1, i64 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i64, i64* @realm_str, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* @context, align 4
  %70 = load i64, i64* @realm_str, align 8
  %71 = call i32 @krb5_set_default_realm(i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* @context, align 4
  %74 = call i32 @krb5_openlog(i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* @log_facility)
  %75 = load i32, i32* @context, align 4
  %76 = load i32, i32* @log_facility, align 4
  %77 = call i32 @krb5_set_warn_dest(i32 %75, i32 %76)
  %78 = load i8*, i8** @port_str, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %106

80:                                               ; preds = %72
  %81 = load i8*, i8** @port_str, align 8
  %82 = call %struct.servent* @roken_getservbyname(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store %struct.servent* %82, %struct.servent** %11, align 8
  %83 = load %struct.servent*, %struct.servent** %11, align 8
  %84 = icmp ne %struct.servent* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.servent*, %struct.servent** %11, align 8
  %87 = getelementptr inbounds %struct.servent, %struct.servent* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %9, align 4
  br label %105

89:                                               ; preds = %80
  %90 = load i8*, i8** @port_str, align 8
  %91 = call i32 @strtol(i8* %90, i8** %12, i32 10)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** @port_str, align 8
  %97 = icmp eq i8* %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* @context, align 4
  %100 = load i8*, i8** @port_str, align 8
  %101 = call i32 @krb5_errx(i32 %99, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %94, %89
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @htons(i32 %103)
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %102, %85
  br label %110

106:                                              ; preds = %72
  %107 = load i32, i32* @context, align 4
  %108 = load i32, i32* @KPASSWD_PORT, align 4
  %109 = call i32 @krb5_getportbyname(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %106, %105
  %111 = load i32, i32* @context, align 4
  %112 = call i64 @krb5_kt_register(i32 %111, i32* @hdb_kt_ops)
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @context, align 4
  %117 = load i64, i64* %7, align 8
  %118 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %116, i32 1, i64 %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i32, i32* @context, align 4
  %121 = load i32, i32* @keytab_str, align 4
  %122 = call i64 @krb5_kt_resolve(i32 %120, i32 %121, i32* %6)
  store i64 %122, i64* %7, align 8
  %123 = load i64, i64* %7, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i32, i32* @context, align 4
  %127 = load i64, i64* %7, align 8
  %128 = load i32, i32* @keytab_str, align 4
  %129 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %126, i32 1, i64 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %125, %119
  %131 = load i32, i32* @context, align 4
  %132 = load i32, i32* @check_library, align 4
  %133 = load i32, i32* @check_function, align 4
  %134 = call i32 @kadm5_setup_passwd_quality_check(i32 %131, i32 %132, i32 %133)
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %154, %130
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @policy_libraries, i32 0, i32 0), align 8
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %135
  %140 = load i32, i32* @context, align 4
  %141 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @policy_libraries, i32 0, i32 1), align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = call i64 @kadm5_add_passwd_quality_verifier(i32 %140, i32* %145)
  store i64 %146, i64* %7, align 8
  %147 = load i64, i64* %7, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %139
  %150 = load i32, i32* @context, align 4
  %151 = load i64, i64* %7, align 8
  %152 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %150, i32 1, i64 %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %153

153:                                              ; preds = %149, %139
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %135

157:                                              ; preds = %135
  %158 = load i32, i32* @context, align 4
  %159 = call i64 @kadm5_add_passwd_quality_verifier(i32 %158, i32* null)
  store i64 %159, i64* %7, align 8
  %160 = load i64, i64* %7, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* @context, align 4
  %164 = load i64, i64* %7, align 8
  %165 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %163, i32 1, i64 %164, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %166

166:                                              ; preds = %162, %157
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @explicit_addresses, i32 0, i32 0), align 8
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @addresses_str, i32 0, i32 0), align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %166
  store i32 0, i32* %13, align 4
  br label %170

170:                                              ; preds = %184, %169
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @addresses_str, i32 0, i32 0), align 8
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %170
  %175 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @addresses_str, i32 0, i32 1), align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %13, align 4
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @add_one_address(i32 %179, i32 %182)
  br label %184

184:                                              ; preds = %174
  %185 = load i32, i32* %13, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %13, align 4
  br label %170

187:                                              ; preds = %170
  %188 = call i32 @free_getarg_strings(%struct.TYPE_6__* @addresses_str)
  br label %214

189:                                              ; preds = %166
  %190 = load i32, i32* @context, align 4
  %191 = call i8** @krb5_config_get_strings(i32 %190, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* null)
  store i8** %191, i8*** %14, align 8
  %192 = load i8**, i8*** %14, align 8
  %193 = icmp ne i8** %192, null
  br i1 %193, label %194, label %213

194:                                              ; preds = %189
  %195 = load i8**, i8*** %14, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i32 1
  store i8** %196, i8*** %14, align 8
  %197 = load i8*, i8** %195, align 8
  %198 = ptrtoint i8* %197 to i32
  %199 = load i32, i32* @TRUE, align 4
  %200 = call i32 @add_one_address(i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %205, %194
  %202 = load i8**, i8*** %14, align 8
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = load i8**, i8*** %14, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i32 1
  store i8** %207, i8*** %14, align 8
  %208 = load i8*, i8** %206, align 8
  %209 = ptrtoint i8* %208 to i32
  %210 = load i32, i32* @FALSE, align 4
  %211 = call i32 @add_one_address(i32 %209, i32 %210)
  br label %201

212:                                              ; preds = %201
  br label %213

213:                                              ; preds = %212, %189
  br label %214

214:                                              ; preds = %213, %187
  %215 = load i32, i32* @SIGINT, align 4
  %216 = load i32, i32* @sigterm, align 4
  %217 = call i32 @signal(i32 %215, i32 %216)
  %218 = load i32, i32* @SIGTERM, align 4
  %219 = load i32, i32* @sigterm, align 4
  %220 = call i32 @signal(i32 %218, i32 %219)
  %221 = call i32 @pidfile(i32* null)
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @doit(i32 %222, i32 %223)
  ret i32 %224
}

declare dso_local i32 @krb5_program_setup(i32*, i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @krb5_std_usage(i32, i32, i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @asprintf(i32**, i8*, i32) #1

declare dso_local i32 @hdb_db_dir(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @krb5_prepend_config_files_default(i32*, i8***) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_set_config_files(i32, i8**) #1

declare dso_local i32 @krb5_free_config_files(i8**) #1

declare dso_local i32 @krb5_set_default_realm(i32, i64) #1

declare dso_local i32 @krb5_openlog(i32, i8*, i32*) #1

declare dso_local i32 @krb5_set_warn_dest(i32, i32) #1

declare dso_local %struct.servent* @roken_getservbyname(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @krb5_getportbyname(i32, i8*, i8*, i32) #1

declare dso_local i64 @krb5_kt_register(i32, i32*) #1

declare dso_local i64 @krb5_kt_resolve(i32, i32, i32*) #1

declare dso_local i32 @kadm5_setup_passwd_quality_check(i32, i32, i32) #1

declare dso_local i64 @kadm5_add_passwd_quality_verifier(i32, i32*) #1

declare dso_local i32 @add_one_address(i32, i32) #1

declare dso_local i32 @free_getarg_strings(%struct.TYPE_6__*) #1

declare dso_local i8** @krb5_config_get_strings(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @pidfile(i32*) #1

declare dso_local i32 @doit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
