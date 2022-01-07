; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_change_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_change_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i8*, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i8*, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KRB5_GET_INIT_CREDS_OPT_PREAUTH_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"kadmin/changepw\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"New password: \00", align 1
@KRB5_PROMPT_TYPE_NEW_PASSWORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Repeat new password: \00", align 1
@KRB5_PROMPT_TYPE_NEW_PASSWORD_AGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Changing password\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s: %.*s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"failed changing password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8*, i8*, i64, i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)*, i8*, %struct.TYPE_22__*)* @change_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @change_password(i32 %0, i32 %1, i8* %2, i8* %3, i64 %4, i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)* %5, i8* %6, %struct.TYPE_22__* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca [2 x %struct.TYPE_21__], align 16
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca [2 x %struct.TYPE_23__], align 16
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_23__, align 8
  %27 = alloca %struct.TYPE_23__, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_22__*, align 8
  %30 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)* %5, i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_22__* %7, %struct.TYPE_22__** %17, align 8
  %31 = load i32, i32* @BUFSIZ, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %21, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %22, align 8
  %35 = load i32, i32* @BUFSIZ, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %23, align 8
  %38 = call i32 @memset(i8* %20, i32 0, i32 1)
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @krb5_get_init_creds_opt_alloc(i32 %39, %struct.TYPE_22__** %29)
  store i64 %40, i64* %19, align 8
  %41 = load i64, i64* %19, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %8
  %44 = load i64, i64* %19, align 8
  store i64 %44, i64* %9, align 8
  store i32 1, i32* %30, align 4
  br label %199

45:                                               ; preds = %8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %47 = call i32 @krb5_get_init_creds_opt_set_tkt_life(%struct.TYPE_22__* %46, i32 60)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @krb5_get_init_creds_opt_set_forwardable(%struct.TYPE_22__* %48, i32 %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @krb5_get_init_creds_opt_set_proxiable(%struct.TYPE_22__* %51, i32 %52)
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %55 = icmp ne %struct.TYPE_22__* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %45
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @KRB5_GET_INIT_CREDS_OPT_PREAUTH_LIST, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @krb5_get_init_creds_opt_set_preauth_list(%struct.TYPE_22__* %64, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %63, %56, %45
  %73 = call i32 @krb5_data_zero(%struct.TYPE_23__* %26)
  %74 = call i32 @krb5_data_zero(%struct.TYPE_23__* %27)
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = load i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)*, i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)** %15, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %81 = call i64 @krb5_get_init_creds_password(i32 %75, i8* %20, i32 %76, i8* %77, i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)* %78, i8* %79, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %80)
  store i64 %81, i64* %19, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %84 = call i32 @krb5_get_init_creds_opt_free(i32 %82, %struct.TYPE_22__* %83)
  %85 = load i64, i64* %19, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  br label %189

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %136, %88
  %90 = getelementptr inbounds [2 x %struct.TYPE_23__], [2 x %struct.TYPE_23__]* %24, i64 0, i64 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  store i8* %34, i8** %91, align 16
  %92 = trunc i64 %32 to i32
  %93 = getelementptr inbounds [2 x %struct.TYPE_23__], [2 x %struct.TYPE_23__]* %24, i64 0, i64 0
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = getelementptr inbounds [2 x %struct.TYPE_21__], [2 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 16
  %97 = getelementptr inbounds [2 x %struct.TYPE_21__], [2 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %98, align 8
  %99 = getelementptr inbounds [2 x %struct.TYPE_23__], [2 x %struct.TYPE_23__]* %24, i64 0, i64 0
  %100 = getelementptr inbounds [2 x %struct.TYPE_21__], [2 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 3
  store %struct.TYPE_23__* %99, %struct.TYPE_23__** %101, align 8
  %102 = load i32, i32* @KRB5_PROMPT_TYPE_NEW_PASSWORD, align 4
  %103 = getelementptr inbounds [2 x %struct.TYPE_21__], [2 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 16
  %105 = getelementptr inbounds [2 x %struct.TYPE_23__], [2 x %struct.TYPE_23__]* %24, i64 0, i64 1
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  store i8* %37, i8** %106, align 16
  %107 = trunc i64 %36 to i32
  %108 = getelementptr inbounds [2 x %struct.TYPE_23__], [2 x %struct.TYPE_23__]* %24, i64 0, i64 1
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = getelementptr inbounds [2 x %struct.TYPE_21__], [2 x %struct.TYPE_21__]* %18, i64 0, i64 1
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 16
  %112 = getelementptr inbounds [2 x %struct.TYPE_21__], [2 x %struct.TYPE_21__]* %18, i64 0, i64 1
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %113, align 8
  %114 = getelementptr inbounds [2 x %struct.TYPE_23__], [2 x %struct.TYPE_23__]* %24, i64 0, i64 1
  %115 = getelementptr inbounds [2 x %struct.TYPE_21__], [2 x %struct.TYPE_21__]* %18, i64 0, i64 1
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 3
  store %struct.TYPE_23__* %114, %struct.TYPE_23__** %116, align 8
  %117 = load i32, i32* @KRB5_PROMPT_TYPE_NEW_PASSWORD_AGAIN, align 4
  %118 = getelementptr inbounds [2 x %struct.TYPE_21__], [2 x %struct.TYPE_21__]* %18, i64 0, i64 1
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 16
  %120 = load i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)*, i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)** %15, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i8*, i8** %16, align 8
  %123 = getelementptr inbounds [2 x %struct.TYPE_21__], [2 x %struct.TYPE_21__]* %18, i64 0, i64 0
  %124 = call i64 %120(i32 %121, i8* %122, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 2, %struct.TYPE_21__* %123)
  store i64 %124, i64* %19, align 8
  %125 = load i64, i64* %19, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %89
  %128 = trunc i64 %32 to i32
  %129 = call i32 @memset(i8* %34, i32 0, i32 %128)
  %130 = trunc i64 %36 to i32
  %131 = call i32 @memset(i8* %37, i32 0, i32 %130)
  br label %189

132:                                              ; preds = %89
  %133 = call i64 @strcmp(i8* %34, i8* %37)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %141

136:                                              ; preds = %132
  %137 = trunc i64 %32 to i32
  %138 = call i32 @memset(i8* %34, i32 0, i32 %137)
  %139 = trunc i64 %36 to i32
  %140 = call i32 @memset(i8* %37, i32 0, i32 %139)
  br label %89

141:                                              ; preds = %135
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i64 @krb5_set_password(i32 %142, i8* %20, i8* %34, i32 %143, i32* %25, %struct.TYPE_23__* %26, %struct.TYPE_23__* %27)
  store i64 %144, i64* %19, align 8
  %145 = load i64, i64* %19, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %189

148:                                              ; preds = %141
  %149 = load i32, i32* %25, align 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %148
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  br label %162

161:                                              ; preds = %148
  br label %162

162:                                              ; preds = %161, %158
  %163 = phi i8* [ %160, %158 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %161 ]
  %164 = call i64 @asprintf(i8** %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %152, i32 %154, i8* %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i64, i64* @ENOMEM, align 8
  store i64 %167, i64* %19, align 8
  br label %189

168:                                              ; preds = %162
  %169 = load i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)*, i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)** %15, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i8*, i8** %16, align 8
  %172 = load i8*, i8** %28, align 8
  %173 = call i64 %169(i32 %170, i8* %171, i32* null, i8* %172, i32 0, %struct.TYPE_21__* null)
  %174 = load i8*, i8** %28, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load i32, i32* %25, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %168
  %179 = load i8*, i8** %13, align 8
  %180 = load i64, i64* %14, align 8
  %181 = call i32 @strlcpy(i8* %179, i8* %34, i64 %180)
  store i64 0, i64* %19, align 8
  br label %188

182:                                              ; preds = %168
  %183 = load i64, i64* @ENOTTY, align 8
  store i64 %183, i64* %19, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i64, i64* %19, align 8
  %186 = call i32 @N_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %187 = call i32 @krb5_set_error_message(i32 %184, i64 %185, i32 %186)
  br label %188

188:                                              ; preds = %182, %178
  br label %189

189:                                              ; preds = %188, %166, %147, %127, %87
  %190 = trunc i64 %32 to i32
  %191 = call i32 @memset(i8* %34, i32 0, i32 %190)
  %192 = trunc i64 %36 to i32
  %193 = call i32 @memset(i8* %37, i32 0, i32 %192)
  %194 = call i32 @krb5_data_free(%struct.TYPE_23__* %27)
  %195 = call i32 @krb5_data_free(%struct.TYPE_23__* %26)
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @krb5_free_cred_contents(i32 %196, i8* %20)
  %198 = load i64, i64* %19, align 8
  store i64 %198, i64* %9, align 8
  store i32 1, i32* %30, align 4
  br label %199

199:                                              ; preds = %189, %43
  %200 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i64, i64* %9, align 8
  ret i64 %201
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @krb5_get_init_creds_opt_alloc(i32, %struct.TYPE_22__**) #2

declare dso_local i32 @krb5_get_init_creds_opt_set_tkt_life(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @krb5_get_init_creds_opt_set_forwardable(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @krb5_get_init_creds_opt_set_proxiable(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @krb5_get_init_creds_opt_set_preauth_list(%struct.TYPE_22__*, i32, i32) #2

declare dso_local i32 @krb5_data_zero(%struct.TYPE_23__*) #2

declare dso_local i64 @krb5_get_init_creds_password(i32, i8*, i32, i8*, i64 (i32, i8*, i32*, i8*, i32, %struct.TYPE_21__*)*, i8*, i32, i8*, %struct.TYPE_22__*) #2

declare dso_local i32 @krb5_get_init_creds_opt_free(i32, %struct.TYPE_22__*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @krb5_set_password(i32, i8*, i8*, i32, i32*, %struct.TYPE_23__*, %struct.TYPE_23__*) #2

declare dso_local i64 @asprintf(i8**, i8*, i8*, i32, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #2

declare dso_local i32 @N_(i8*, i8*) #2

declare dso_local i32 @krb5_data_free(%struct.TYPE_23__*) #2

declare dso_local i32 @krb5_free_cred_contents(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
