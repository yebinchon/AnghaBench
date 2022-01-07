; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_kadmind.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_kadmind.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32** }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@rk_INVALID_SOCKET = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"error at argument `%s'\00", align 1
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@config_file = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"%s/kdc.conf\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"getting configuration files\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"reading configuration files\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"kadmind\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"krb5_openlog\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"krb5_set_warn_dest\00", align 1
@hdb_kt_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"krb5_kt_register\00", align 1
@keytab_str = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"krb5_kt_resolve\00", align 1
@check_library = common dso_local global i32 0, align 4
@check_function = common dso_local global i32 0, align 4
@policy_libraries = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [34 x i8] c"kadm5_add_passwd_quality_verifier\00", align 1
@debug_flag = common dso_local global i64 0, align 8
@port_str = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"kerberos-adm\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@rk_SOCK_ERRNO = common dso_local global i64 0, align 8
@ENOTSOCK = common dso_local global i64 0, align 8
@realm = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_storage, align 4
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @rk_INVALID_SOCKET, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @setprogname(i8* %20)
  %22 = call i64 @krb5_init_context(i32* @context)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i64, i64* %6, align 8
  %27 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* @args, align 4
  %30 = load i32, i32* @num_args, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i64 @getarg(i32 %29, i32 %30, i32 %31, i8** %32, i32* %8)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = call i32 @usage(i32 1)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load i64, i64* @help_flag, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @usage(i32 0)
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i64, i64* @version_flag, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = call i32 @print_version(i32* null)
  %53 = call i32 @exit(i32 0) #3
  unreachable

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  store i8** %61, i8*** %5, align 8
  %62 = load i32*, i32** @config_file, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %54
  %65 = load i32, i32* @context, align 4
  %66 = call i32 @hdb_db_dir(i32 %65)
  %67 = call i32 @asprintf(i32** @config_file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** @config_file, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %64
  br label %73

73:                                               ; preds = %72, %54
  %74 = load i32*, i32** @config_file, align 8
  %75 = call i64 @krb5_prepend_config_files_default(i32* %74, i8*** %7)
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @context, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @krb5_err(i32 %79, i32 1, i64 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32, i32* @context, align 4
  %84 = load i8**, i8*** %7, align 8
  %85 = call i64 @krb5_set_config_files(i32 %83, i8** %84)
  store i64 %85, i64* %6, align 8
  %86 = load i8**, i8*** %7, align 8
  %87 = call i32 @krb5_free_config_files(i8** %86)
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i32, i32* @context, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @krb5_err(i32 %91, i32 1, i64 %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %82
  %95 = load i32, i32* @context, align 4
  %96 = call i64 @krb5_openlog(i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32** %10)
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @context, align 4
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @krb5_err(i32 %100, i32 1, i64 %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32, i32* @context, align 4
  %105 = load i32*, i32** %10, align 8
  %106 = call i64 @krb5_set_warn_dest(i32 %104, i32* %105)
  store i64 %106, i64* %6, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* @context, align 4
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @krb5_err(i32 %110, i32 1, i64 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %103
  %114 = load i32, i32* @context, align 4
  %115 = call i64 @krb5_kt_register(i32 %114, i32* @hdb_kt_ops)
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %6, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @context, align 4
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @krb5_err(i32 %119, i32 1, i64 %120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i32, i32* @context, align 4
  %124 = load i32, i32* @keytab_str, align 4
  %125 = call i64 @krb5_kt_resolve(i32 %123, i32 %124, i32* %11)
  store i64 %125, i64* %6, align 8
  %126 = load i64, i64* %6, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* @context, align 4
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @krb5_err(i32 %129, i32 1, i64 %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %132

132:                                              ; preds = %128, %122
  %133 = load i32, i32* @context, align 4
  %134 = load i32, i32* @check_library, align 4
  %135 = load i32, i32* @check_function, align 4
  %136 = call i32 @kadm5_setup_passwd_quality_check(i32 %133, i32 %134, i32 %135)
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %156, %132
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policy_libraries, i32 0, i32 0), align 8
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %159

141:                                              ; preds = %137
  %142 = load i32, i32* @context, align 4
  %143 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @policy_libraries, i32 0, i32 1), align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = call i64 @kadm5_add_passwd_quality_verifier(i32 %142, i32* %147)
  store i64 %148, i64* %6, align 8
  %149 = load i64, i64* %6, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %141
  %152 = load i32, i32* @context, align 4
  %153 = load i64, i64* %6, align 8
  %154 = call i32 @krb5_err(i32 %152, i32 1, i64 %153, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  br label %155

155:                                              ; preds = %151, %141
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %137

159:                                              ; preds = %137
  %160 = load i32, i32* @context, align 4
  %161 = call i64 @kadm5_add_passwd_quality_verifier(i32 %160, i32* null)
  store i64 %161, i64* %6, align 8
  %162 = load i64, i64* %6, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i32, i32* @context, align 4
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @krb5_err(i32 %165, i32 1, i64 %166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  br label %168

168:                                              ; preds = %164, %159
  %169 = load i64, i64* @debug_flag, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %168
  %172 = load i32*, i32** @port_str, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* @context, align 4
  %176 = call i32 @krb5_getportbyname(i32 %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 749)
  store i32 %176, i32* %13, align 4
  br label %181

177:                                              ; preds = %171
  %178 = load i32*, i32** @port_str, align 8
  %179 = call i32 @atoi(i32* %178)
  %180 = call i32 @htons(i32 %179)
  store i32 %180, i32* %13, align 4
  br label %181

181:                                              ; preds = %177, %174
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @mini_inetd(i32 %182, i32* %12)
  br label %201

184:                                              ; preds = %168
  %185 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr*
  store %struct.sockaddr* %185, %struct.sockaddr** %15, align 8
  store i32 4, i32* %16, align 4
  %186 = load i32, i32* @STDIN_FILENO, align 4
  %187 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %188 = call i64 @roken_getsockname(i32 %186, %struct.sockaddr* %187, i32* %16)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %184
  %191 = load i64, i64* @rk_SOCK_ERRNO, align 8
  %192 = load i64, i64* @ENOTSOCK, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = call i32 @pidfile(i32* null)
  %196 = load i32, i32* @context, align 4
  %197 = load i32*, i32** @port_str, align 8
  %198 = call i32 @start_server(i32 %196, i32* %197)
  br label %199

199:                                              ; preds = %194, %190, %184
  %200 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %200, i32* %12, align 4
  br label %201

201:                                              ; preds = %199, %181
  %202 = load i64, i64* @realm, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load i32, i32* @context, align 4
  %206 = load i64, i64* @realm, align 8
  %207 = call i32 @krb5_set_default_realm(i32 %205, i64 %206)
  br label %208

208:                                              ; preds = %204, %201
  %209 = load i32, i32* @context, align 4
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @kadmind_loop(i32 %209, i32 %210, i32 %211)
  ret i32 0
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @asprintf(i32**, i8*, i32) #1

declare dso_local i32 @hdb_db_dir(i32) #1

declare dso_local i64 @krb5_prepend_config_files_default(i32*, i8***) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_set_config_files(i32, i8**) #1

declare dso_local i32 @krb5_free_config_files(i8**) #1

declare dso_local i64 @krb5_openlog(i32, i8*, i32**) #1

declare dso_local i64 @krb5_set_warn_dest(i32, i32*) #1

declare dso_local i64 @krb5_kt_register(i32, i32*) #1

declare dso_local i64 @krb5_kt_resolve(i32, i32, i32*) #1

declare dso_local i32 @kadm5_setup_passwd_quality_check(i32, i32, i32) #1

declare dso_local i64 @kadm5_add_passwd_quality_verifier(i32, i32*) #1

declare dso_local i32 @krb5_getportbyname(i32, i8*, i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @atoi(i32*) #1

declare dso_local i32 @mini_inetd(i32, i32*) #1

declare dso_local i64 @roken_getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @pidfile(i32*) #1

declare dso_local i32 @start_server(i32, i32*) #1

declare dso_local i32 @krb5_set_default_realm(i32, i64) #1

declare dso_local i32 @kadmind_loop(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
