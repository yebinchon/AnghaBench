; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_marshall.c_store_principal_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_marshall.c_store_principal_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@KADM5_PRINCIPAL = common dso_local global i32 0, align 4
@KADM5_PRINC_EXPIRE_TIME = common dso_local global i32 0, align 4
@KADM5_PW_EXPIRATION = common dso_local global i32 0, align 4
@KADM5_LAST_PWD_CHANGE = common dso_local global i32 0, align 4
@KADM5_MAX_LIFE = common dso_local global i32 0, align 4
@KADM5_MOD_NAME = common dso_local global i32 0, align 4
@KADM5_MOD_TIME = common dso_local global i32 0, align 4
@KADM5_ATTRIBUTES = common dso_local global i32 0, align 4
@KADM5_KVNO = common dso_local global i32 0, align 4
@KADM5_MKVNO = common dso_local global i32 0, align 4
@KADM5_POLICY = common dso_local global i32 0, align 4
@KADM5_AUX_ATTRIBUTES = common dso_local global i32 0, align 4
@KADM5_MAX_RLIFE = common dso_local global i32 0, align 4
@KADM5_LAST_SUCCESS = common dso_local global i32 0, align 4
@KADM5_LAST_FAILED = common dso_local global i32 0, align 4
@KADM5_FAIL_AUTH_COUNT = common dso_local global i32 0, align 4
@KADM5_KEY_DATA = common dso_local global i32 0, align 4
@KADM5_TL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32)* @store_principal_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_principal_ent(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 19
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @krb5_store_principal(i32* %14, i32* %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @KADM5_PRINC_EXPIRE_TIME, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @krb5_store_int32(i32* %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @KADM5_PW_EXPIRATION, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @krb5_store_int32(i32* %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @KADM5_LAST_PWD_CHANGE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @krb5_store_int32(i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @KADM5_MAX_LIFE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @krb5_store_int32(i32* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @KADM5_MOD_NAME, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %63
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 18
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @krb5_store_int32(i32* %69, i32 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 18
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %68
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 18
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @krb5_store_principal(i32* %81, i32* %84)
  br label %86

86:                                               ; preds = %80, %68
  br label %87

87:                                               ; preds = %86, %63
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @KADM5_MOD_TIME, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @krb5_store_int32(i32* %93, i32 %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @krb5_store_int32(i32* %104, i32 %107)
  br label %109

109:                                              ; preds = %103, %98
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @KADM5_KVNO, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @krb5_store_int32(i32* %115, i32 %118)
  br label %120

120:                                              ; preds = %114, %109
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @KADM5_MKVNO, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i32*, i32** %4, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @krb5_store_int32(i32* %126, i32 %129)
  br label %131

131:                                              ; preds = %125, %120
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @KADM5_POLICY, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %131
  %137 = load i32*, i32** %4, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 17
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  %142 = zext i1 %141 to i32
  %143 = call i32 @krb5_store_int32(i32* %137, i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 17
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %136
  %149 = load i32*, i32** %4, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 17
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @krb5_store_string(i32* %149, i32* %152)
  br label %154

154:                                              ; preds = %148, %136
  br label %155

155:                                              ; preds = %154, %131
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @KADM5_AUX_ATTRIBUTES, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32*, i32** %4, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @krb5_store_int32(i32* %161, i32 %164)
  br label %166

166:                                              ; preds = %160, %155
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @KADM5_MAX_RLIFE, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i32*, i32** %4, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @krb5_store_int32(i32* %172, i32 %175)
  br label %177

177:                                              ; preds = %171, %166
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @KADM5_LAST_SUCCESS, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load i32*, i32** %4, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 10
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @krb5_store_int32(i32* %183, i32 %186)
  br label %188

188:                                              ; preds = %182, %177
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @KADM5_LAST_FAILED, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load i32*, i32** %4, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 11
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @krb5_store_int32(i32* %194, i32 %197)
  br label %199

199:                                              ; preds = %193, %188
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @KADM5_FAIL_AUTH_COUNT, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load i32*, i32** %4, align 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 12
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @krb5_store_int32(i32* %205, i32 %208)
  br label %210

210:                                              ; preds = %204, %199
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* @KADM5_KEY_DATA, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %240

215:                                              ; preds = %210
  %216 = load i32*, i32** %4, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 13
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @krb5_store_int32(i32* %216, i32 %219)
  store i32 0, i32* %7, align 4
  br label %221

221:                                              ; preds = %236, %215
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 13
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %239

227:                                              ; preds = %221
  %228 = load i32*, i32** %4, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 16
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = call i32 @kadm5_store_key_data(i32* %228, i32* %234)
  br label %236

236:                                              ; preds = %227
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %7, align 4
  br label %221

239:                                              ; preds = %221
  br label %240

240:                                              ; preds = %239, %210
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* @KADM5_TL_DATA, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %266

245:                                              ; preds = %240
  %246 = load i32*, i32** %4, align 8
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 14
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @krb5_store_int32(i32* %246, i32 %249)
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 15
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  store %struct.TYPE_5__* %253, %struct.TYPE_5__** %8, align 8
  br label %254

254:                                              ; preds = %261, %245
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %256 = icmp ne %struct.TYPE_5__* %255, null
  br i1 %256, label %257, label %265

257:                                              ; preds = %254
  %258 = load i32*, i32** %4, align 8
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %260 = call i32 @kadm5_store_tl_data(i32* %258, %struct.TYPE_5__* %259)
  br label %261

261:                                              ; preds = %257
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  store %struct.TYPE_5__* %264, %struct.TYPE_5__** %8, align 8
  br label %254

265:                                              ; preds = %254
  br label %266

266:                                              ; preds = %265, %240
  ret i32 0
}

declare dso_local i32 @krb5_store_principal(i32*, i32*) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @krb5_store_string(i32*, i32*) #1

declare dso_local i32 @kadm5_store_key_data(i32*, i32*) #1

declare dso_local i32 @kadm5_store_tl_data(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
