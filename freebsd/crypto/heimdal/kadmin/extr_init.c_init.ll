; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_init.c_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_init.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.init_options = type { i64, i32*, i32* }
%struct.TYPE_9__ = type { i32 (i32, %struct.TYPE_9__*)*, i64 (i32, %struct.TYPE_9__*, i32, i32)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@local_flag = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"init is only available in local (-l) mode\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"unable to parse \22%s\22\00", align 1
@kadm_handle = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"hdb_open\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Realm max ticket life\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Realm max renewable ticket life\00", align 1
@KRB5_TGS_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"kadmin\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"changepw\00", align 1
@KRB5_KDB_DISALLOW_TGT_BASED = common dso_local global i32 0, align 4
@KRB5_KDB_PWCHANGE_SERVICE = common dso_local global i32 0, align 4
@KRB5_KDB_DISALLOW_POSTDATED = common dso_local global i32 0, align 4
@KRB5_KDB_DISALLOW_RENEWABLE = common dso_local global i32 0, align 4
@KRB5_KDB_DISALLOW_PROXIABLE = common dso_local global i32 0, align 4
@KRB5_KDB_REQUIRES_PRE_AUTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"kerberos\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"hprop\00", align 1
@KRB5_WELLKNOWN_NAME = common dso_local global i32 0, align 4
@KRB5_ANON_NAME = common dso_local global i32 0, align 4
@KADM5_PRINCIPAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@KADM5_MAX_LIFE = common dso_local global i32 0, align 4
@KADM5_MAX_RLIFE = common dso_local global i32 0, align 4
@KRB5_KDB_DISALLOW_ALL_TIX = common dso_local global i32 0, align 4
@KADM5_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"kadm5_create_principal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init(%struct.init_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.init_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_8__, align 4
  %16 = alloca i32, align 4
  store %struct.init_options* %0, %struct.init_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @local_flag, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @context, align 4
  %21 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %244

22:                                               ; preds = %3
  %23 = load %struct.init_options*, %struct.init_options** %5, align 8
  %24 = getelementptr inbounds %struct.init_options, %struct.init_options* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.init_options*, %struct.init_options** %5, align 8
  %29 = getelementptr inbounds %struct.init_options, %struct.init_options* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @str2deltat(i32* %30, i32* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* @context, align 4
  %35 = load %struct.init_options*, %struct.init_options** %5, align 8
  %36 = getelementptr inbounds %struct.init_options, %struct.init_options* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  store i32 0, i32* %4, align 4
  br label %244

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.init_options*, %struct.init_options** %5, align 8
  %42 = getelementptr inbounds %struct.init_options, %struct.init_options* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.init_options*, %struct.init_options** %5, align 8
  %47 = getelementptr inbounds %struct.init_options, %struct.init_options* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @str2deltat(i32* %48, i32* %12)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @context, align 4
  %53 = load %struct.init_options*, %struct.init_options** %5, align 8
  %54 = getelementptr inbounds %struct.init_options, %struct.init_options* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %55)
  store i32 0, i32* %4, align 4
  br label %244

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* @kadm_handle, align 4
  %60 = call %struct.TYPE_9__* @_kadm5_s_get_db(i32 %59)
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %10, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i64 (i32, %struct.TYPE_9__*, i32, i32)*, i64 (i32, %struct.TYPE_9__*, i32, i32)** %62, align 8
  %64 = load i32, i32* @context, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = load i32, i32* @O_RDWR, align 4
  %67 = load i32, i32* @O_CREAT, align 4
  %68 = or i32 %66, %67
  %69 = call i64 %63(i32 %64, %struct.TYPE_9__* %65, i32 %68, i32 384)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %58
  %73 = load i32, i32* @context, align 4
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @krb5_warn(i32 %73, i64 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %244

76:                                               ; preds = %58
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** %78, align 8
  %80 = load i32, i32* @context, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %82 = call i32 %79(i32 %80, %struct.TYPE_9__* %81)
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %240, %76
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %243

87:                                               ; preds = %83
  %88 = load i8**, i8*** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %14, align 8
  %93 = load %struct.init_options*, %struct.init_options** %5, align 8
  %94 = getelementptr inbounds %struct.init_options, %struct.init_options* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  %98 = call i64 @edit_deltat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %11, i32* null, i32 0)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %244

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101, %87
  %103 = load %struct.init_options*, %struct.init_options** %5, align 8
  %104 = getelementptr inbounds %struct.init_options, %struct.init_options* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  store i32 0, i32* %12, align 4
  %108 = call i64 @edit_deltat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32* %12, i32* null, i32 0)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %244

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %102
  %113 = load i32, i32* @context, align 4
  %114 = load i8*, i8** %14, align 8
  %115 = load i32, i32* @KRB5_TGS_NAME, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = load i8*, i8** %14, align 8
  %119 = call i64 (i32, i32*, i8*, i8*, i8*, ...) @krb5_make_principal(i32 %113, i32* %13, i8* %114, i8* %117, i8* %118, i8* null)
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %8, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %244

123:                                              ; preds = %112
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @create_random_entry(i32 %124, i32 %125, i32 %126, i32 0)
  %128 = load i32, i32* @context, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @krb5_free_principal(i32 %128, i32 %129)
  %131 = load %struct.init_options*, %struct.init_options** %5, align 8
  %132 = getelementptr inbounds %struct.init_options, %struct.init_options* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  br label %240

136:                                              ; preds = %123
  %137 = load i32, i32* @context, align 4
  %138 = load i8*, i8** %14, align 8
  %139 = call i64 (i32, i32*, i8*, i8*, i8*, ...) @krb5_make_principal(i32 %137, i32* %13, i8* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* null)
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @KRB5_KDB_DISALLOW_TGT_BASED, align 4
  %142 = load i32, i32* @KRB5_KDB_PWCHANGE_SERVICE, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @KRB5_KDB_DISALLOW_POSTDATED, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @KRB5_KDB_DISALLOW_RENEWABLE, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @KRB5_KDB_DISALLOW_PROXIABLE, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @KRB5_KDB_REQUIRES_PRE_AUTH, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @create_random_entry(i32 %140, i32 300, i32 300, i32 %151)
  %153 = load i32, i32* @context, align 4
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @krb5_free_principal(i32 %153, i32 %154)
  %156 = load i32, i32* @context, align 4
  %157 = load i8*, i8** %14, align 8
  %158 = call i64 (i32, i32*, i8*, i8*, i8*, ...) @krb5_make_principal(i32 %156, i32* %13, i8* %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* null)
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @KRB5_KDB_REQUIRES_PRE_AUTH, align 4
  %161 = call i32 @create_random_entry(i32 %159, i32 3600, i32 3600, i32 %160)
  %162 = load i32, i32* @context, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @krb5_free_principal(i32 %162, i32 %163)
  %165 = load i32, i32* @context, align 4
  %166 = load i8*, i8** %14, align 8
  %167 = call i64 (i32, i32*, i8*, i8*, i8*, ...) @krb5_make_principal(i32 %165, i32* %13, i8* %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* null)
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* @KRB5_KDB_DISALLOW_TGT_BASED, align 4
  %170 = load i32, i32* @KRB5_KDB_PWCHANGE_SERVICE, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @create_random_entry(i32 %168, i32 3600, i32 3600, i32 %171)
  %173 = load i32, i32* @context, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @krb5_free_principal(i32 %173, i32 %174)
  %176 = load i32, i32* @context, align 4
  %177 = load i8*, i8** %14, align 8
  %178 = call i64 (i32, i32*, i8*, i8*, i8*, ...) @krb5_make_principal(i32 %176, i32* %13, i8* %177, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* null)
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* @KRB5_KDB_REQUIRES_PRE_AUTH, align 4
  %181 = load i32, i32* @KRB5_KDB_DISALLOW_TGT_BASED, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @create_random_entry(i32 %179, i32 3600, i32 3600, i32 %182)
  %184 = load i32, i32* @context, align 4
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @krb5_free_principal(i32 %184, i32 %185)
  %187 = load i32, i32* @context, align 4
  %188 = load i8*, i8** %14, align 8
  %189 = load i32, i32* @KRB5_WELLKNOWN_NAME, align 4
  %190 = sext i32 %189 to i64
  %191 = inttoptr i64 %190 to i8*
  %192 = load i32, i32* @KRB5_ANON_NAME, align 4
  %193 = sext i32 %192 to i64
  %194 = inttoptr i64 %193 to i8*
  %195 = call i64 (i32, i32*, i8*, i8*, i8*, ...) @krb5_make_principal(i32 %187, i32* %13, i8* %188, i8* %191, i8* %194, i8* null)
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* @KRB5_KDB_REQUIRES_PRE_AUTH, align 4
  %198 = call i32 @create_random_entry(i32 %196, i32 3600, i32 3600, i32 %197)
  %199 = load i32, i32* @context, align 4
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @krb5_free_principal(i32 %199, i32 %200)
  store i32 0, i32* %16, align 4
  %202 = call i32 @memset(%struct.TYPE_8__* %15, i32 0, i32 16)
  %203 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %204 = load i32, i32* %16, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* @context, align 4
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %208 = load i8*, i8** %14, align 8
  %209 = call i64 (i32, i32*, i8*, i8*, i8*, ...) @krb5_make_principal(i32 %206, i32* %207, i8* %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* null)
  %210 = load i32, i32* @KADM5_MAX_LIFE, align 4
  %211 = load i32, i32* %16, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %16, align 4
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 86400, i32* %213, align 4
  %214 = load i32, i32* @KADM5_MAX_RLIFE, align 4
  %215 = load i32, i32* %16, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %16, align 4
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 7, %218
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* @KRB5_KDB_DISALLOW_ALL_TIX, align 4
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  store i32 %221, i32* %222, align 4
  %223 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %224 = load i32, i32* %16, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %16, align 4
  %226 = load i32, i32* @kadm_handle, align 4
  %227 = load i32, i32* %16, align 4
  %228 = call i64 @kadm5_create_principal(i32 %226, %struct.TYPE_8__* %15, i32 %227, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  store i64 %228, i64* %8, align 8
  %229 = load i64, i64* %8, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %136
  %232 = load i32, i32* @context, align 4
  %233 = load i64, i64* %8, align 8
  %234 = call i32 @krb5_err(i32 %232, i32 1, i64 %233, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %235

235:                                              ; preds = %231, %136
  %236 = load i32, i32* @context, align 4
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @krb5_free_principal(i32 %236, i32 %238)
  br label %240

240:                                              ; preds = %235, %135
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %9, align 4
  br label %83

243:                                              ; preds = %83
  store i32 0, i32* %4, align 4
  br label %244

244:                                              ; preds = %243, %122, %110, %100, %72, %51, %33, %19
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local i32 @krb5_warnx(i32, i8*, ...) #1

declare dso_local i64 @str2deltat(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @_kadm5_s_get_db(i32) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i64 @edit_deltat(i8*, i32*, i32*, i32) #1

declare dso_local i64 @krb5_make_principal(i32, i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @create_random_entry(i32, i32, i32, i32) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @kadm5_create_principal(i32, %struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
