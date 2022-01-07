; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_key.c_EC_KEY_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_key.c_EC_KEY_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_19__*, i32*, i32* }
%struct.TYPE_21__ = type { i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)* }

@EC_F_EC_KEY_COPY = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@CRYPTO_EX_INDEX_EC_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @EC_KEY_copy(%struct.TYPE_22__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %8 = icmp eq %struct.TYPE_22__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %11 = icmp eq %struct.TYPE_22__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EC_F_EC_KEY_COPY, align 4
  %14 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %15 = call i32 @ECerr(i32 %13, i32 %14)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %272

16:                                               ; preds = %9
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %23 = icmp ne %struct.TYPE_21__* %19, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %16
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_22__*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %35, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = call i32 %36(%struct.TYPE_22__* %37)
  br label %39

39:                                               ; preds = %31, %24
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = icmp ne %struct.TYPE_19__* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 7
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %50, align 8
  %52 = icmp ne i32 (%struct.TYPE_22__*)* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 7
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %59, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %62 = call i32 %60(%struct.TYPE_22__* %61)
  br label %63

63:                                               ; preds = %53, %44, %39
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @ENGINE_finish(i32* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %272

70:                                               ; preds = %63
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %70, %16
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 7
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = icmp ne %struct.TYPE_19__* %76, null
  br i1 %77, label %78, label %192

78:                                               ; preds = %73
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 7
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = call i32* @EC_GROUP_method_of(%struct.TYPE_19__* %81)
  store i32* %82, i32** %6, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 7
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = call i32 @EC_GROUP_free(%struct.TYPE_19__* %85)
  %87 = load i32*, i32** %6, align 8
  %88 = call %struct.TYPE_19__* @EC_GROUP_new(i32* %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 7
  store %struct.TYPE_19__* %88, %struct.TYPE_19__** %90, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 7
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = icmp eq %struct.TYPE_19__* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %272

96:                                               ; preds = %78
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 7
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 7
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = call i32 @EC_GROUP_copy(%struct.TYPE_19__* %99, %struct.TYPE_19__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %272

106:                                              ; preds = %96
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 9
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %138

111:                                              ; preds = %106
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 9
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @EC_POINT_free(i32* %114)
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 7
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = call i32* @EC_POINT_new(%struct.TYPE_19__* %118)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 9
  store i32* %119, i32** %121, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 9
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %111
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %272

127:                                              ; preds = %111
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 9
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 9
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @EC_POINT_copy(i32* %130, i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %127
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %272

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %106
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 8
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %191

143:                                              ; preds = %138
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 8
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  %149 = call i32* (...) @BN_new()
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 8
  store i32* %149, i32** %151, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 8
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %272

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157, %143
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 8
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 8
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @BN_copy(i32* %161, i32* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %158
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %272

168:                                              ; preds = %158
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 7
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)** %174, align 8
  %176 = icmp ne i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)* %175, null
  br i1 %176, label %177, label %190

177:                                              ; preds = %168
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = load i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)** %183, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %187 = call i64 %184(%struct.TYPE_22__* %185, %struct.TYPE_22__* %186)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %272

190:                                              ; preds = %177, %168
  br label %191

191:                                              ; preds = %190, %138
  br label %192

192:                                              ; preds = %191, %73
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 6
  store i32 %195, i32* %197, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 4
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* @CRYPTO_EX_INDEX_EC_KEY, align 4
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 2
  %218 = call i32 @CRYPTO_dup_ex_data(i32 %213, i32* %215, i32* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %192
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %272

221:                                              ; preds = %192
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %223, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %226, align 8
  %228 = icmp ne %struct.TYPE_21__* %224, %227
  br i1 %228, label %229, label %252

229:                                              ; preds = %221
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %241

234:                                              ; preds = %229
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = call i64 @ENGINE_init(i32* %237)
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %272

241:                                              ; preds = %234, %229
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 1
  store i32* %244, i32** %246, align 8
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %248, align 8
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 0
  store %struct.TYPE_21__* %249, %struct.TYPE_21__** %251, align 8
  br label %252

252:                                              ; preds = %241, %221
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 0
  %257 = load i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)** %256, align 8
  %258 = icmp ne i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)* %257, null
  br i1 %258, label %259, label %270

259:                                              ; preds = %252
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 0
  %264 = load i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_22__*)** %263, align 8
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %267 = call i64 %264(%struct.TYPE_22__* %265, %struct.TYPE_22__* %266)
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %259
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %272

270:                                              ; preds = %259, %252
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_22__* %271, %struct.TYPE_22__** %3, align 8
  br label %272

272:                                              ; preds = %270, %269, %240, %220, %189, %167, %156, %136, %126, %105, %95, %69, %12
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %273
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @ENGINE_finish(i32*) #1

declare dso_local i32* @EC_GROUP_method_of(%struct.TYPE_19__*) #1

declare dso_local i32 @EC_GROUP_free(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @EC_GROUP_new(i32*) #1

declare dso_local i32 @EC_GROUP_copy(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_19__*) #1

declare dso_local i32 @EC_POINT_copy(i32*, i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @CRYPTO_dup_ex_data(i32, i32*, i32*) #1

declare dso_local i64 @ENGINE_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
