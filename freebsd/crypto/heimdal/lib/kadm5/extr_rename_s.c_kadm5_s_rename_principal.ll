; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_rename_s.c_kadm5_s_rename_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_rename_s.c_kadm5_s_rename_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 (i32, %struct.TYPE_32__*)*, i64 (i32, %struct.TYPE_32__*, i8*)*, i64 (i32, %struct.TYPE_32__*, i32, %struct.TYPE_31__*)*, i64 (i32, %struct.TYPE_32__*, i8*, i32, i32, %struct.TYPE_31__*)*, i64 (i32, %struct.TYPE_32__*, i32, i32)* }
%struct.TYPE_31__ = type { %struct.TYPE_26__, i32, i32 }
%struct.TYPE_26__ = type { i8*, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_29__ = type { i32 }

@KADM5_DUP = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@HDB_F_GET_ANY = common dso_local global i32 0, align 4
@HDB_F_ADMIN_DATA = common dso_local global i32 0, align 4
@hdb_pw_salt = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kadm5_s_rename_principal(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_31__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_31__, align 8
  %14 = alloca %struct.TYPE_29__, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %16, %struct.TYPE_30__** %8, align 8
  %17 = call i32 @memset(%struct.TYPE_31__* %10, i32 0, i32 32)
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @krb5_principal_compare(i32 %20, i8* %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* @KADM5_DUP, align 8
  store i64 %26, i64* %4, align 8
  br label %242

27:                                               ; preds = %3
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %30, i32 0, i32 4
  %32 = load i64 (i32, %struct.TYPE_32__*, i32, i32)*, i64 (i32, %struct.TYPE_32__*, i32, i32)** %31, align 8
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %37, align 8
  %39 = load i32, i32* @O_RDWR, align 4
  %40 = call i64 %32(i32 %35, %struct.TYPE_32__* %38, i32 %39, i32 0)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %4, align 8
  br label %242

45:                                               ; preds = %27
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 3
  %50 = load i64 (i32, %struct.TYPE_32__*, i8*, i32, i32, %struct.TYPE_31__*)*, i64 (i32, %struct.TYPE_32__*, i8*, i32, i32, %struct.TYPE_31__*)** %49, align 8
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %55, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* @HDB_F_GET_ANY, align 4
  %59 = load i32, i32* @HDB_F_ADMIN_DATA, align 4
  %60 = or i32 %58, %59
  %61 = call i64 %50(i32 %53, %struct.TYPE_32__* %56, i8* %57, i32 %60, i32 0, %struct.TYPE_31__* %10)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %45
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 0
  %69 = load i32 (i32, %struct.TYPE_32__*)*, i32 (i32, %struct.TYPE_32__*)** %68, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %74, align 8
  %76 = call i32 %69(i32 %72, %struct.TYPE_32__* %75)
  br label %239

77:                                               ; preds = %45
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %80 = call i64 @_kadm5_set_modifier(%struct.TYPE_30__* %78, %struct.TYPE_26__* %79)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %222

84:                                               ; preds = %77
  %85 = call i32 @memset(%struct.TYPE_31__* %13, i32 0, i32 32)
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @krb5_get_pw_salt(i32 %88, i8* %89, %struct.TYPE_29__* %14)
  %91 = load i32, i32* @hdb_pw_salt, align 4
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 2
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 1
  store i32 %94, i32* %95, align 8
  store i64 0, i64* %12, align 8
  br label %96

96:                                               ; preds = %148, %84
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ult i64 %97, %101
  br i1 %102, label %103, label %151

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %106, align 8
  %108 = load i64, i64* %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %147

113:                                              ; preds = %103
  %114 = call i32* @malloc(i32 4)
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  store i32* %114, i32** %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %124, align 8
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %113
  %132 = load i64, i64* @ENOMEM, align 8
  store i64 %132, i64* %4, align 8
  br label %242

133:                                              ; preds = %113
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %136, align 8
  %138 = load i64, i64* %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i64 @copy_Salt(%struct.TYPE_31__* %13, i32* %141)
  store i64 %142, i64* %9, align 8
  %143 = load i64, i64* %9, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %151

146:                                              ; preds = %133
  br label %147

147:                                              ; preds = %146, %103
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %12, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %12, align 8
  br label %96

151:                                              ; preds = %145, %96
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @krb5_free_salt(i32 %154, i32 %156)
  %158 = load i64, i64* %9, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %222

161:                                              ; preds = %151
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %11, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %175 = call i64 @hdb_seal_keys(i32 %170, %struct.TYPE_32__* %173, %struct.TYPE_26__* %174)
  store i64 %175, i64* %9, align 8
  %176 = load i64, i64* %9, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %161
  %179 = load i8*, i8** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  br label %222

182:                                              ; preds = %161
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %184 = load i8*, i8** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %186 = call i32 @kadm5_log_rename(%struct.TYPE_30__* %183, i8* %184, %struct.TYPE_26__* %185)
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 2
  %191 = load i64 (i32, %struct.TYPE_32__*, i32, %struct.TYPE_31__*)*, i64 (i32, %struct.TYPE_32__*, i32, %struct.TYPE_31__*)** %190, align 8
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %196, align 8
  %198 = call i64 %191(i32 %194, %struct.TYPE_32__* %197, i32 0, %struct.TYPE_31__* %10)
  store i64 %198, i64* %9, align 8
  %199 = load i64, i64* %9, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %182
  %202 = load i8*, i8** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  br label %222

205:                                              ; preds = %182
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %208, i32 0, i32 1
  %210 = load i64 (i32, %struct.TYPE_32__*, i8*)*, i64 (i32, %struct.TYPE_32__*, i8*)** %209, align 8
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %215, align 8
  %217 = load i8*, i8** %11, align 8
  %218 = call i64 %210(i32 %213, %struct.TYPE_32__* %216, i8* %217)
  store i64 %218, i64* %9, align 8
  %219 = load i8*, i8** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 0
  store i8* %219, i8** %221, align 8
  br label %222

222:                                              ; preds = %205, %201, %178, %160, %83
  %223 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_32__*, %struct.TYPE_32__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %225, i32 0, i32 0
  %227 = load i32 (i32, %struct.TYPE_32__*)*, i32 (i32, %struct.TYPE_32__*)** %226, align 8
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %232, align 8
  %234 = call i32 %227(i32 %230, %struct.TYPE_32__* %233)
  %235 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @hdb_free_entry(i32 %237, %struct.TYPE_31__* %10)
  br label %239

239:                                              ; preds = %222, %64
  %240 = load i64, i64* %9, align 8
  %241 = call i64 @_kadm5_error_code(i64 %240)
  store i64 %241, i64* %4, align 8
  br label %242

242:                                              ; preds = %239, %131, %43, %25
  %243 = load i64, i64* %4, align 8
  ret i64 %243
}

declare dso_local i32 @memset(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i64 @krb5_principal_compare(i32, i8*, i8*) #1

declare dso_local i64 @_kadm5_set_modifier(%struct.TYPE_30__*, %struct.TYPE_26__*) #1

declare dso_local i32 @krb5_get_pw_salt(i32, i8*, %struct.TYPE_29__*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @copy_Salt(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @krb5_free_salt(i32, i32) #1

declare dso_local i64 @hdb_seal_keys(i32, %struct.TYPE_32__*, %struct.TYPE_26__*) #1

declare dso_local i32 @kadm5_log_rename(%struct.TYPE_30__*, i8*, %struct.TYPE_26__*) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_31__*) #1

declare dso_local i64 @_kadm5_error_code(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
