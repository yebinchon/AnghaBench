; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_hx509_revoke_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_revoke.c_hx509_revoke_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { i64, i32 }
%struct.TYPE_48__ = type { %struct.TYPE_54__, %struct.TYPE_39__ }
%struct.TYPE_54__ = type { i64, %struct.revoke_crl* }
%struct.revoke_crl = type { i64, i32, i32, %struct.TYPE_53__, i32 }
%struct.TYPE_53__ = type { %struct.TYPE_62__ }
%struct.TYPE_62__ = type { %struct.TYPE_61__*, %struct.TYPE_57__*, i32 }
%struct.TYPE_61__ = type { i64, %struct.TYPE_60__* }
%struct.TYPE_60__ = type { %struct.TYPE_59__*, i32, i32 }
%struct.TYPE_59__ = type { i64, %struct.TYPE_58__* }
%struct.TYPE_58__ = type { i64 }
%struct.TYPE_57__ = type { i64, %struct.TYPE_56__* }
%struct.TYPE_56__ = type { i64 }
%struct.TYPE_39__ = type { i64, %struct.revoke_ocsp* }
%struct.revoke_ocsp = type { i64, %struct.TYPE_43__, i32*, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i64, %struct.TYPE_45__* }
%struct.TYPE_45__ = type { i64, i64*, %struct.TYPE_49__, %struct.TYPE_44__ }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_44__ = type { i32, i32, i32, i32 }
%struct.TYPE_52__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32, %struct.TYPE_55__, %struct.TYPE_41__ }
%struct.TYPE_55__ = type { %struct.TYPE_51__ }
%struct.TYPE_51__ = type { i32, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32, i32 }
%struct.stat = type { i64 }

@HX509_CERT_REVOKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Certificate revoked by issuer in OCSP\00", align 1
@HX509_CRL_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown CRL extension\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Certificate revoked by issuer in CRL\00", align 1
@HX509_CTX_VERIFY_MISSING_OK = common dso_local global i32 0, align 4
@HX509_ERROR_APPEND = common dso_local global i32 0, align 4
@HX509_REVOKE_STATUS_MISSING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"No revoke status found for certificates\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_revoke_verify(%struct.TYPE_50__* %0, %struct.TYPE_48__* %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_50__*, align 8
  %9 = alloca %struct.TYPE_48__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_52__*, align 8
  %15 = alloca %struct.TYPE_52__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.revoke_ocsp*, align 8
  %21 = alloca %struct.stat, align 8
  %22 = alloca %struct.TYPE_51__, align 4
  %23 = alloca %struct.revoke_crl*, align 8
  %24 = alloca %struct.stat, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_53__, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_50__* %0, %struct.TYPE_50__** %8, align 8
  store %struct.TYPE_48__* %1, %struct.TYPE_48__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call %struct.TYPE_52__* @_hx509_get_cert(i32 %28)
  store %struct.TYPE_52__* %29, %struct.TYPE_52__** %14, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call %struct.TYPE_52__* @_hx509_get_cert(i32 %30)
  store %struct.TYPE_52__* %31, %struct.TYPE_52__** %15, align 8
  %32 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %33 = call i32 @hx509_clear_error_string(%struct.TYPE_50__* %32)
  store i64 0, i64* %16, align 8
  br label %34

34:                                               ; preds = %254, %6
  %35 = load i64, i64* %16, align 8
  %36 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %257

41:                                               ; preds = %34
  %42 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %43, i32 0, i32 1
  %45 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %44, align 8
  %46 = load i64, i64* %16, align 8
  %47 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %45, i64 %46
  store %struct.revoke_ocsp* %47, %struct.revoke_ocsp** %20, align 8
  %48 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %49 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @stat(i32 %50, %struct.stat* %21)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %41
  %55 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %56 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %63 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %64 = call i32 @load_ocsp(%struct.TYPE_50__* %62, %struct.revoke_ocsp* %63)
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %254

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %54, %41
  %70 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %71 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %76 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @verify_ocsp(%struct.TYPE_50__* %75, %struct.revoke_ocsp* %76, i64 %77, i32 %78, i32 %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %254

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %69
  store i64 0, i64* %17, align 8
  br label %86

86:                                               ; preds = %250, %85
  %87 = load i64, i64* %17, align 8
  %88 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %89 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %87, %93
  br i1 %94, label %95, label %253

95:                                               ; preds = %86
  %96 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %97 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_45__*, %struct.TYPE_45__** %100, align 8
  %102 = load i64, i64* %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %107, i32 0, i32 0
  %109 = call i32 @der_heim_integer_cmp(i32* %105, i32* %108)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %95
  br label %250

113:                                              ; preds = %95
  %114 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %115 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %116 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_45__*, %struct.TYPE_45__** %119, align 8
  %121 = load i64, i64* %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %127, i32 0, i32 0
  %129 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %130 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_45__*, %struct.TYPE_45__** %133, align 8
  %135 = load i64, i64* %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %137, i32 0, i32 2
  %139 = call i32 @_hx509_verify_signature(%struct.TYPE_50__* %114, i32* null, i32* %124, %struct.TYPE_51__* %128, i32* %138)
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %113
  br label %250

143:                                              ; preds = %113
  %144 = load %struct.TYPE_52__*, %struct.TYPE_52__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %22, i32 0, i32 1
  store i32 %149, i32* %150, align 4
  %151 = load %struct.TYPE_52__*, %struct.TYPE_52__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %156, 8
  %158 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %22, i32 0, i32 0
  store i32 %157, i32* %158, align 4
  %159 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %160 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %161 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_45__*, %struct.TYPE_45__** %164, align 8
  %166 = load i64, i64* %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %168, i32 0, i32 1
  %170 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %171 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_45__*, %struct.TYPE_45__** %174, align 8
  %176 = load i64, i64* %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %178, i32 0, i32 0
  %180 = call i32 @_hx509_verify_signature(%struct.TYPE_50__* %159, i32* null, i32* %169, %struct.TYPE_51__* %22, i32* %179)
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %19, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %143
  br label %250

184:                                              ; preds = %143
  %185 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %186 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_45__*, %struct.TYPE_45__** %189, align 8
  %191 = load i64, i64* %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  switch i32 %195, label %203 [
    i32 130, label %196
    i32 129, label %197
    i32 128, label %202
  ]

196:                                              ; preds = %184
  br label %203

197:                                              ; preds = %184
  %198 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %199 = load i32, i32* @HX509_CERT_REVOKED, align 4
  %200 = call i32 @hx509_set_error_string(%struct.TYPE_50__* %198, i32 0, i32 %199, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %201 = load i32, i32* @HX509_CERT_REVOKED, align 4
  store i32 %201, i32* %7, align 4
  br label %526

202:                                              ; preds = %184
  br label %250

203:                                              ; preds = %184, %196
  %204 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %205 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_45__*, %struct.TYPE_45__** %208, align 8
  %210 = load i64, i64* %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %11, align 8
  %215 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %214, %217
  %219 = icmp sgt i64 %213, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %203
  br label %250

221:                                              ; preds = %203
  %222 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %223 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_45__*, %struct.TYPE_45__** %226, align 8
  %228 = load i64, i64* %17, align 8
  %229 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %229, i32 0, i32 1
  %231 = load i64*, i64** %230, align 8
  %232 = icmp ne i64* %231, null
  br i1 %232, label %233, label %249

233:                                              ; preds = %221
  %234 = load %struct.revoke_ocsp*, %struct.revoke_ocsp** %20, align 8
  %235 = getelementptr inbounds %struct.revoke_ocsp, %struct.revoke_ocsp* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_45__*, %struct.TYPE_45__** %238, align 8
  %240 = load i64, i64* %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %241, i32 0, i32 1
  %243 = load i64*, i64** %242, align 8
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %11, align 8
  %246 = icmp slt i64 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %233
  br label %250

248:                                              ; preds = %233
  br label %249

249:                                              ; preds = %248, %221
  store i32 0, i32* %7, align 4
  br label %526

250:                                              ; preds = %247, %220, %202, %183, %142, %112
  %251 = load i64, i64* %17, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %17, align 8
  br label %86

253:                                              ; preds = %86
  br label %254

254:                                              ; preds = %253, %83, %67
  %255 = load i64, i64* %16, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %16, align 8
  br label %34

257:                                              ; preds = %34
  store i64 0, i64* %16, align 8
  br label %258

258:                                              ; preds = %509, %257
  %259 = load i64, i64* %16, align 8
  %260 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ult i64 %259, %263
  br i1 %264, label %265, label %512

265:                                              ; preds = %258
  %266 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %267, i32 0, i32 1
  %269 = load %struct.revoke_crl*, %struct.revoke_crl** %268, align 8
  %270 = load i64, i64* %16, align 8
  %271 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %269, i64 %270
  store %struct.revoke_crl* %271, %struct.revoke_crl** %23, align 8
  %272 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %273 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %273, i32 0, i32 1
  %275 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %276 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %277, i32 0, i32 2
  %279 = call i32 @_hx509_name_cmp(%struct.TYPE_55__* %274, i32* %278, i32* %25)
  store i32 %279, i32* %19, align 4
  %280 = load i32, i32* %19, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %265
  %283 = load i32, i32* %25, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282, %265
  br label %509

286:                                              ; preds = %282
  %287 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %288 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @stat(i32 %289, %struct.stat* %24)
  store i32 %290, i32* %19, align 4
  %291 = load i32, i32* %19, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %322

293:                                              ; preds = %286
  %294 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %295 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %296, %298
  br i1 %299, label %300, label %322

300:                                              ; preds = %293
  %301 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %302 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %305 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %304, i32 0, i32 0
  %306 = call i32 @load_crl(i32 %303, i64* %305, %struct.TYPE_53__* %26)
  store i32 %306, i32* %19, align 4
  %307 = load i32, i32* %19, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %321

309:                                              ; preds = %300
  %310 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %311 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %310, i32 0, i32 3
  %312 = call i32 @free_CRLCertificateList(%struct.TYPE_53__* %311)
  %313 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %314 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %313, i32 0, i32 3
  %315 = bitcast %struct.TYPE_53__* %314 to i8*
  %316 = bitcast %struct.TYPE_53__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %315, i8* align 8 %316, i64 24, i1 false)
  %317 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %318 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %317, i32 0, i32 1
  store i32 0, i32* %318, align 8
  %319 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %320 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %319, i32 0, i32 2
  store i32 0, i32* %320, align 4
  br label %321

321:                                              ; preds = %309, %300
  br label %322

322:                                              ; preds = %321, %293, %286
  %323 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %324 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %322
  br label %509

328:                                              ; preds = %322
  %329 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %330 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %350

333:                                              ; preds = %328
  %334 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %335 = load %struct.TYPE_48__*, %struct.TYPE_48__** %9, align 8
  %336 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %337 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %336, i32 0, i32 3
  %338 = load i64, i64* %11, align 8
  %339 = load i32, i32* %10, align 4
  %340 = load i32, i32* %13, align 4
  %341 = call i32 @verify_crl(%struct.TYPE_50__* %334, %struct.TYPE_48__* %335, %struct.TYPE_53__* %337, i64 %338, i32 %339, i32 %340)
  store i32 %341, i32* %19, align 4
  %342 = load i32, i32* %19, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %333
  %345 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %346 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %345, i32 0, i32 2
  store i32 1, i32* %346, align 4
  br label %509

347:                                              ; preds = %333
  %348 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %349 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %348, i32 0, i32 1
  store i32 1, i32* %349, align 8
  br label %350

350:                                              ; preds = %347, %328
  %351 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %352 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_57__*, %struct.TYPE_57__** %354, align 8
  %356 = icmp ne %struct.TYPE_57__* %355, null
  br i1 %356, label %357, label %391

357:                                              ; preds = %350
  store i64 0, i64* %17, align 8
  br label %358

358:                                              ; preds = %387, %357
  %359 = load i64, i64* %17, align 8
  %360 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %361 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %360, i32 0, i32 3
  %362 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %362, i32 0, i32 1
  %364 = load %struct.TYPE_57__*, %struct.TYPE_57__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = icmp ult i64 %359, %366
  br i1 %367, label %368, label %390

368:                                              ; preds = %358
  %369 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %370 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %369, i32 0, i32 3
  %371 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_57__*, %struct.TYPE_57__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %373, i32 0, i32 1
  %375 = load %struct.TYPE_56__*, %struct.TYPE_56__** %374, align 8
  %376 = load i64, i64* %17, align 8
  %377 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %375, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %368
  %382 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %383 = load i32, i32* @HX509_CRL_UNKNOWN_EXTENSION, align 4
  %384 = call i32 @hx509_set_error_string(%struct.TYPE_50__* %382, i32 0, i32 %383, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %385 = load i32, i32* @HX509_CRL_UNKNOWN_EXTENSION, align 4
  store i32 %385, i32* %7, align 4
  br label %526

386:                                              ; preds = %368
  br label %387

387:                                              ; preds = %386
  %388 = load i64, i64* %17, align 8
  %389 = add i64 %388, 1
  store i64 %389, i64* %17, align 8
  br label %358

390:                                              ; preds = %358
  br label %391

391:                                              ; preds = %390, %350
  %392 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %393 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %392, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_61__*, %struct.TYPE_61__** %395, align 8
  %397 = icmp eq %struct.TYPE_61__* %396, null
  br i1 %397, label %398, label %399

398:                                              ; preds = %391
  store i32 0, i32* %7, align 4
  br label %526

399:                                              ; preds = %391
  store i64 0, i64* %17, align 8
  br label %400

400:                                              ; preds = %505, %399
  %401 = load i64, i64* %17, align 8
  %402 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %403 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %404, i32 0, i32 0
  %406 = load %struct.TYPE_61__*, %struct.TYPE_61__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = icmp ult i64 %401, %408
  br i1 %409, label %410, label %508

410:                                              ; preds = %400
  %411 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %412 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %411, i32 0, i32 3
  %413 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_61__*, %struct.TYPE_61__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %415, i32 0, i32 1
  %417 = load %struct.TYPE_60__*, %struct.TYPE_60__** %416, align 8
  %418 = load i64, i64* %17, align 8
  %419 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %417, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %419, i32 0, i32 2
  %421 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %422 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %422, i32 0, i32 0
  %424 = call i32 @der_heim_integer_cmp(i32* %420, i32* %423)
  store i32 %424, i32* %19, align 4
  %425 = load i32, i32* %19, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %410
  br label %505

428:                                              ; preds = %410
  %429 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %430 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %429, i32 0, i32 3
  %431 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_61__*, %struct.TYPE_61__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_60__*, %struct.TYPE_60__** %434, align 8
  %436 = load i64, i64* %17, align 8
  %437 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %435, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %437, i32 0, i32 1
  %439 = call i64 @_hx509_Time2time_t(i32* %438)
  store i64 %439, i64* %27, align 8
  %440 = load i64, i64* %27, align 8
  %441 = load i64, i64* %11, align 8
  %442 = icmp sgt i64 %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %428
  br label %505

444:                                              ; preds = %428
  %445 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %446 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %445, i32 0, i32 3
  %447 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %447, i32 0, i32 0
  %449 = load %struct.TYPE_61__*, %struct.TYPE_61__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %449, i32 0, i32 1
  %451 = load %struct.TYPE_60__*, %struct.TYPE_60__** %450, align 8
  %452 = load i64, i64* %17, align 8
  %453 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %451, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %453, i32 0, i32 0
  %455 = load %struct.TYPE_59__*, %struct.TYPE_59__** %454, align 8
  %456 = icmp ne %struct.TYPE_59__* %455, null
  br i1 %456, label %457, label %500

457:                                              ; preds = %444
  store i64 0, i64* %18, align 8
  br label %458

458:                                              ; preds = %496, %457
  %459 = load i64, i64* %18, align 8
  %460 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %461 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %460, i32 0, i32 3
  %462 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %462, i32 0, i32 0
  %464 = load %struct.TYPE_61__*, %struct.TYPE_61__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %464, i32 0, i32 1
  %466 = load %struct.TYPE_60__*, %struct.TYPE_60__** %465, align 8
  %467 = load i64, i64* %17, align 8
  %468 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %466, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %468, i32 0, i32 0
  %470 = load %struct.TYPE_59__*, %struct.TYPE_59__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = icmp ult i64 %459, %472
  br i1 %473, label %474, label %499

474:                                              ; preds = %458
  %475 = load %struct.revoke_crl*, %struct.revoke_crl** %23, align 8
  %476 = getelementptr inbounds %struct.revoke_crl, %struct.revoke_crl* %475, i32 0, i32 3
  %477 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %477, i32 0, i32 0
  %479 = load %struct.TYPE_61__*, %struct.TYPE_61__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %479, i32 0, i32 1
  %481 = load %struct.TYPE_60__*, %struct.TYPE_60__** %480, align 8
  %482 = load i64, i64* %17, align 8
  %483 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %481, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %483, i32 0, i32 0
  %485 = load %struct.TYPE_59__*, %struct.TYPE_59__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %485, i32 0, i32 1
  %487 = load %struct.TYPE_58__*, %struct.TYPE_58__** %486, align 8
  %488 = load i64, i64* %18, align 8
  %489 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %487, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %474
  %494 = load i32, i32* @HX509_CRL_UNKNOWN_EXTENSION, align 4
  store i32 %494, i32* %7, align 4
  br label %526

495:                                              ; preds = %474
  br label %496

496:                                              ; preds = %495
  %497 = load i64, i64* %18, align 8
  %498 = add i64 %497, 1
  store i64 %498, i64* %18, align 8
  br label %458

499:                                              ; preds = %458
  br label %500

500:                                              ; preds = %499, %444
  %501 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %502 = load i32, i32* @HX509_CERT_REVOKED, align 4
  %503 = call i32 @hx509_set_error_string(%struct.TYPE_50__* %501, i32 0, i32 %502, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %504 = load i32, i32* @HX509_CERT_REVOKED, align 4
  store i32 %504, i32* %7, align 4
  br label %526

505:                                              ; preds = %443, %427
  %506 = load i64, i64* %17, align 8
  %507 = add i64 %506, 1
  store i64 %507, i64* %17, align 8
  br label %400

508:                                              ; preds = %400
  store i32 0, i32* %7, align 4
  br label %526

509:                                              ; preds = %344, %327, %285
  %510 = load i64, i64* %16, align 8
  %511 = add i64 %510, 1
  store i64 %511, i64* %16, align 8
  br label %258

512:                                              ; preds = %258
  %513 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %514 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 8
  %516 = load i32, i32* @HX509_CTX_VERIFY_MISSING_OK, align 4
  %517 = and i32 %515, %516
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %512
  store i32 0, i32* %7, align 4
  br label %526

520:                                              ; preds = %512
  %521 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %522 = load i32, i32* @HX509_ERROR_APPEND, align 4
  %523 = load i32, i32* @HX509_REVOKE_STATUS_MISSING, align 4
  %524 = call i32 @hx509_set_error_string(%struct.TYPE_50__* %521, i32 %522, i32 %523, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %525 = load i32, i32* @HX509_REVOKE_STATUS_MISSING, align 4
  store i32 %525, i32* %7, align 4
  br label %526

526:                                              ; preds = %520, %519, %508, %500, %493, %398, %381, %249, %197
  %527 = load i32, i32* %7, align 4
  ret i32 %527
}

declare dso_local %struct.TYPE_52__* @_hx509_get_cert(i32) #1

declare dso_local i32 @hx509_clear_error_string(%struct.TYPE_50__*) #1

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @load_ocsp(%struct.TYPE_50__*, %struct.revoke_ocsp*) #1

declare dso_local i32 @verify_ocsp(%struct.TYPE_50__*, %struct.revoke_ocsp*, i64, i32, i32) #1

declare dso_local i32 @der_heim_integer_cmp(i32*, i32*) #1

declare dso_local i32 @_hx509_verify_signature(%struct.TYPE_50__*, i32*, i32*, %struct.TYPE_51__*, i32*) #1

declare dso_local i32 @hx509_set_error_string(%struct.TYPE_50__*, i32, i32, i8*) #1

declare dso_local i32 @_hx509_name_cmp(%struct.TYPE_55__*, i32*, i32*) #1

declare dso_local i32 @load_crl(i32, i64*, %struct.TYPE_53__*) #1

declare dso_local i32 @free_CRLCertificateList(%struct.TYPE_53__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @verify_crl(%struct.TYPE_50__*, %struct.TYPE_48__*, %struct.TYPE_53__*, i64, i32, i32) #1

declare dso_local i64 @_hx509_Time2time_t(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
