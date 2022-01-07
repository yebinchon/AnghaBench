; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_stash.c_stash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_stash.c_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stash_options = type { i8*, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32* }

@local_flag = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"stash is only available in local (-l) mode\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s/m-key\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"reading master key from %s\00", align 1
@KRB5_PW_SALT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"end of file reading passphrase\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"reading passphrase\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Using random master stash password: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Master key: \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s.old\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s.new\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"writing key to \22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"writing master key file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stash(%struct.stash_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stash_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.stash_options* %0, %struct.stash_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %17 = load i32, i32* @local_flag, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @context, align 4
  %21 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %240

22:                                               ; preds = %3
  %23 = load i32, i32* @context, align 4
  %24 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %25 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @krb5_string_to_enctype(i32 %23, i32 %26, i32* %10)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load i32, i32* @context, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %34 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %31, i64 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 0, i32* %4, align 4
  br label %240

37:                                               ; preds = %22
  %38 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %39 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %44 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %43, i32 0, i32 0
  %45 = load i32, i32* @context, align 4
  %46 = call i8* @hdb_db_dir(i32 %45)
  %47 = call i32 @asprintf(i8** %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %49 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %42
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* @context, align 4
  %57 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %58 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @hdb_read_master_key(i32 %56, i8* %59, i32* %11)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @ENOENT, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* @context, align 4
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %71 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %68, i64 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  store i32 0, i32* %4, align 4
  br label %240

74:                                               ; preds = %63, %55
  %75 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %76 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* @context, align 4
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %86 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %83, i64 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %82, %79
  store i32 0, i32* %4, align 4
  br label %240

90:                                               ; preds = %74
  %91 = load i32, i32* @KRB5_PW_SALT, align 4
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i32* null, i32** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %98 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %126

101:                                              ; preds = %90
  %102 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %103 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %106 = call i64 @read(i32 %104, i8* %105, i32 1024)
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %14, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @context, align 4
  %111 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %120

112:                                              ; preds = %101
  %113 = load i64, i64* %14, align 8
  %114 = icmp ult i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* @context, align 4
  %117 = load i64, i64* @errno, align 8
  %118 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %116, i64 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %14, align 8
  br label %119

119:                                              ; preds = %115, %112
  br label %120

120:                                              ; preds = %119, %109
  %121 = load i64, i64* %14, align 8
  %122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %121
  store i8 0, i8* %122, align 1
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %124 = call i64 @strcspn(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %124
  store i8 0, i8* %125, align 1
  br label %146

126:                                              ; preds = %90
  %127 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %128 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %133 = call i32 @random_password(i8* %132, i32 1024)
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %135 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %134)
  br label %145

136:                                              ; preds = %126
  %137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %138 = call i64 @UI_UTIL_read_pw_string(i8* %137, i32 1024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* @context, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @hdb_free_master_key(i32 %141, i32 %142)
  store i32 0, i32* %4, align 4
  br label %240

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %131
  br label %146

146:                                              ; preds = %145, %120
  %147 = load i32, i32* @context, align 4
  %148 = load i32, i32* %10, align 4
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %150 = call i64 @krb5_string_to_key_salt(i32 %147, i32 %148, i8* %149, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %13, i32* %12)
  store i64 %150, i64* %9, align 8
  %151 = load i32, i32* @context, align 4
  %152 = call i64 @hdb_add_master_key(i32 %151, i32* %12, i32* %11)
  store i64 %152, i64* %9, align 8
  %153 = load i32, i32* @context, align 4
  %154 = call i32 @krb5_free_keyblock_contents(i32 %153, i32* %12)
  br label %155

155:                                              ; preds = %146
  %156 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %157 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @asprintf(i8** %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %158)
  %160 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %161 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %162)
  %164 = load i8*, i8** %16, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %155
  %167 = load i8*, i8** %15, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %166, %155
  %170 = load i64, i64* @ENOMEM, align 8
  store i64 %170, i64* %9, align 8
  br label %225

171:                                              ; preds = %166
  %172 = load i8*, i8** %15, align 8
  %173 = call i64 @unlink(i8* %172)
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load i64, i64* @errno, align 8
  %177 = load i64, i64* @ENOENT, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i64, i64* @errno, align 8
  store i64 %180, i64* %9, align 8
  br label %225

181:                                              ; preds = %175, %171
  %182 = load i32, i32* @context, align 4
  %183 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %184 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %182, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %185)
  %187 = load i32, i32* @context, align 4
  %188 = load i8*, i8** %15, align 8
  %189 = load i32, i32* %11, align 4
  %190 = call i64 @hdb_write_master_key(i32 %187, i8* %188, i32 %189)
  store i64 %190, i64* %9, align 8
  %191 = load i64, i64* %9, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %181
  %194 = load i8*, i8** %15, align 8
  %195 = call i64 @unlink(i8* %194)
  br label %224

196:                                              ; preds = %181
  %197 = load i8*, i8** %16, align 8
  %198 = call i64 @unlink(i8* %197)
  %199 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %200 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = load i8*, i8** %16, align 8
  %203 = call i64 @link(i8* %201, i8* %202)
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %196
  %206 = load i64, i64* @errno, align 8
  %207 = load i64, i64* @ENOENT, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %205
  %210 = load i64, i64* @errno, align 8
  store i64 %210, i64* %9, align 8
  %211 = load i8*, i8** %15, align 8
  %212 = call i64 @unlink(i8* %211)
  br label %223

213:                                              ; preds = %205, %196
  %214 = load i8*, i8** %15, align 8
  %215 = load %struct.stash_options*, %struct.stash_options** %5, align 8
  %216 = getelementptr inbounds %struct.stash_options, %struct.stash_options* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i64 @rename(i8* %214, i8* %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = load i64, i64* @errno, align 8
  store i64 %221, i64* %9, align 8
  br label %222

222:                                              ; preds = %220, %213
  br label %223

223:                                              ; preds = %222, %209
  br label %224

224:                                              ; preds = %223, %193
  br label %225

225:                                              ; preds = %224, %179, %169
  %226 = load i8*, i8** %16, align 8
  %227 = call i32 @free(i8* %226)
  %228 = load i8*, i8** %15, align 8
  %229 = call i32 @free(i8* %228)
  %230 = load i64, i64* %9, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = load i32, i32* @context, align 4
  %234 = load i64, i64* @errno, align 8
  %235 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %233, i64 %234, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %236

236:                                              ; preds = %232, %225
  %237 = load i32, i32* @context, align 4
  %238 = load i32, i32* %11, align 4
  %239 = call i32 @hdb_free_master_key(i32 %237, i32 %238)
  store i32 0, i32* %4, align 4
  br label %240

240:                                              ; preds = %236, %140, %89, %67, %30, %19
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i32 @krb5_warnx(i32, i8*, ...) #1

declare dso_local i64 @krb5_string_to_enctype(i32, i32, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, ...) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i8* @hdb_db_dir(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @hdb_read_master_key(i32, i8*, i32*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @random_password(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @UI_UTIL_read_pw_string(i8*, i32, i8*, i32) #1

declare dso_local i32 @hdb_free_master_key(i32, i32) #1

declare dso_local i64 @krb5_string_to_key_salt(i32, i32, i8*, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8, i32*) #1

declare dso_local i64 @hdb_add_master_key(i32, i32*, i32*) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, i32*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i64 @hdb_write_master_key(i32, i8*, i32) #1

declare dso_local i64 @link(i8*, i8*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
