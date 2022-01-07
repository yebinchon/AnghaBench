; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_chpass_s.c_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_chpass_s.c_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i32, i32 (i32, %struct.TYPE_28__*)*, i64 (i32, %struct.TYPE_28__*, i32, %struct.TYPE_27__*)*, i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*, i32)*, i64 (i32, %struct.TYPE_28__*, i32, i32, i32, %struct.TYPE_27__*)*, i64 (i32, %struct.TYPE_28__*, i32, i32)* }
%struct.TYPE_27__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i32* }

@O_RDWR = common dso_local global i32 0, align 4
@HDB_F_DECRYPT = common dso_local global i32 0, align 4
@HDB_F_GET_ANY = common dso_local global i32 0, align 4
@HDB_F_ADMIN_DATA = common dso_local global i32 0, align 4
@HDB_CAP_F_HANDLE_PASSWORDS = common dso_local global i32 0, align 4
@KADM5_PASS_REUSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Password reuse forbidden\00", align 1
@HDB_F_REPLACE = common dso_local global i32 0, align 4
@KADM5_PRINCIPAL = common dso_local global i32 0, align 4
@KADM5_MOD_NAME = common dso_local global i32 0, align 4
@KADM5_MOD_TIME = common dso_local global i32 0, align 4
@KADM5_KEY_DATA = common dso_local global i32 0, align 4
@KADM5_KVNO = common dso_local global i32 0, align 4
@KADM5_PW_EXPIRATION = common dso_local global i32 0, align 4
@KADM5_TL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i8*, i32)* @change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @change(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_27__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %10, align 8
  store i32 0, i32* %15, align 4
  %18 = call i32 @memset(%struct.TYPE_27__* %11, i32 0, i32 24)
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 5
  %23 = load i64 (i32, %struct.TYPE_28__*, i32, i32)*, i64 (i32, %struct.TYPE_28__*, i32, i32)** %22, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %28, align 8
  %30 = load i32, i32* @O_RDWR, align 4
  %31 = call i64 %23(i32 %26, %struct.TYPE_28__* %29, i32 %30, i32 0)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %5, align 8
  br label %230

36:                                               ; preds = %4
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 4
  %41 = load i64 (i32, %struct.TYPE_28__*, i32, i32, i32, %struct.TYPE_27__*)*, i64 (i32, %struct.TYPE_28__*, i32, i32, i32, %struct.TYPE_27__*)** %40, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @HDB_F_DECRYPT, align 4
  %50 = load i32, i32* @HDB_F_GET_ANY, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @HDB_F_ADMIN_DATA, align 4
  %53 = or i32 %51, %52
  %54 = call i64 %41(i32 %44, %struct.TYPE_28__* %47, i32 %48, i32 %53, i32 0, %struct.TYPE_27__* %11)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %36
  br label %215

58:                                               ; preds = %36
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HDB_CAP_F_HANDLE_PASSWORDS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %58
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 3
  %72 = load i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*, i32)*, i64 (i32, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*, i32)** %71, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %77, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i64 %72(i32 %75, %struct.TYPE_28__* %78, %struct.TYPE_27__* %11, i8* %79, i32 %80)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %67
  br label %210

85:                                               ; preds = %67
  br label %158

86:                                               ; preds = %58
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 1
  store i32* null, i32** %100, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %103 = load i8*, i8** %8, align 8
  %104 = call i64 @_kadm5_set_keys(%struct.TYPE_26__* %101, %struct.TYPE_24__* %102, i8* %103)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %86
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @_kadm5_free_keys(i32 %110, i64 %111, i32* %112)
  br label %210

114:                                              ; preds = %86
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32*, i32** %13, align 8
  %127 = load i64, i64* %14, align 8
  %128 = call i32 @_kadm5_exists_keys(i32* %121, i64 %125, i32* %126, i64 %127)
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %117, %114
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @_kadm5_free_keys(i32 %132, i64 %133, i32* %134)
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %129
  %139 = load i64, i64* @KADM5_PASS_REUSE, align 8
  store i64 %139, i64* %12, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i64, i64* %12, align 8
  %144 = call i32 @krb5_set_error_message(i32 %142, i64 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %210

145:                                              ; preds = %129
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %153 = call i64 @hdb_seal_keys(i32 %148, %struct.TYPE_28__* %151, %struct.TYPE_24__* %152)
  store i64 %153, i64* %12, align 8
  %154 = load i64, i64* %12, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %145
  br label %210

157:                                              ; preds = %145
  br label %158

158:                                              ; preds = %157, %85
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %165 = call i64 @_kadm5_set_modifier(%struct.TYPE_26__* %163, %struct.TYPE_24__* %164)
  store i64 %165, i64* %12, align 8
  %166 = load i64, i64* %12, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %210

169:                                              ; preds = %158
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %172 = call i64 @_kadm5_bump_pw_expire(%struct.TYPE_26__* %170, %struct.TYPE_24__* %171)
  store i64 %172, i64* %12, align 8
  %173 = load i64, i64* %12, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %210

176:                                              ; preds = %169
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 2
  %181 = load i64 (i32, %struct.TYPE_28__*, i32, %struct.TYPE_27__*)*, i64 (i32, %struct.TYPE_28__*, i32, %struct.TYPE_27__*)** %180, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %186, align 8
  %188 = load i32, i32* @HDB_F_REPLACE, align 4
  %189 = call i64 %181(i32 %184, %struct.TYPE_28__* %187, i32 %188, %struct.TYPE_27__* %11)
  store i64 %189, i64* %12, align 8
  %190 = load i64, i64* %12, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %176
  br label %210

193:                                              ; preds = %176
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %196 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %197 = load i32, i32* @KADM5_MOD_NAME, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @KADM5_MOD_TIME, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @KADM5_KEY_DATA, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @KADM5_KVNO, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @KADM5_PW_EXPIRATION, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @KADM5_TL_DATA, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @kadm5_log_modify(%struct.TYPE_26__* %194, %struct.TYPE_24__* %195, i32 %208)
  br label %210

210:                                              ; preds = %193, %192, %175, %168, %156, %138, %107, %84
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @hdb_free_entry(i32 %213, %struct.TYPE_27__* %11)
  br label %215

215:                                              ; preds = %210, %57
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 1
  %220 = load i32 (i32, %struct.TYPE_28__*)*, i32 (i32, %struct.TYPE_28__*)** %219, align 8
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %225, align 8
  %227 = call i32 %220(i32 %223, %struct.TYPE_28__* %226)
  %228 = load i64, i64* %12, align 8
  %229 = call i64 @_kadm5_error_code(i64 %228)
  store i64 %229, i64* %5, align 8
  br label %230

230:                                              ; preds = %215, %34
  %231 = load i64, i64* %5, align 8
  ret i64 %231
}

declare dso_local i32 @memset(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i64 @_kadm5_set_keys(%struct.TYPE_26__*, %struct.TYPE_24__*, i8*) #1

declare dso_local i32 @_kadm5_free_keys(i32, i64, i32*) #1

declare dso_local i32 @_kadm5_exists_keys(i32*, i64, i32*, i64) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*) #1

declare dso_local i64 @hdb_seal_keys(i32, %struct.TYPE_28__*, %struct.TYPE_24__*) #1

declare dso_local i64 @_kadm5_set_modifier(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i64 @_kadm5_bump_pw_expire(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i32 @kadm5_log_modify(%struct.TYPE_26__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_27__*) #1

declare dso_local i64 @_kadm5_error_code(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
