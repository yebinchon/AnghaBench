; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_set_prop_nvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_set_prop_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_TYPE_NVLIST = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZPROP_INVAL = common dso_local global i64 0, align 8
@DATA_TYPE_STRING = common dso_local global i64 0, align 8
@DATA_TYPE_UINT64_ARRAY = common dso_local global i64 0, align 8
@DATA_TYPE_UINT64 = common dso_local global i64 0, align 8
@CE_PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown property type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_set_prop_nvlist(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %24 = call i32* (...) @fnvlist_alloc()
  store i32* %24, i32** %14, align 8
  %25 = call i32* (...) @fnvlist_alloc()
  store i32* %25, i32** %15, align 8
  br label %26

26:                                               ; preds = %197, %4
  store i32* null, i32** %9, align 8
  br label %27

27:                                               ; preds = %188, %26
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32* @nvlist_next_nvpair(i32* %28, i32* %29)
  store i32* %30, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %189

32:                                               ; preds = %27
  %33 = load i32*, i32** %9, align 8
  %34 = call i8* @nvpair_name(i32* %33)
  store i8* %34, i8** %16, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = call i64 @zfs_name_to_prop(i8* %35)
  store i64 %36, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %37 = load i32*, i32** %9, align 8
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @nvpair_type(i32* %38)
  %40 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load i32*, i32** %9, align 8
  %44 = call i32* @fnvpair_value_nvlist(i32* %43)
  store i32* %44, i32** %19, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = load i32, i32* @ZPROP_VALUE, align 4
  %47 = call i64 @nvlist_lookup_nvpair(i32* %45, i32 %46, i32** %10)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @SET_ERROR(i32 %50)
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %18, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %53
  %57 = load i64, i64* %17, align 8
  %58 = load i64, i64* @ZPROP_INVAL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  %61 = load i8*, i8** %16, align 8
  %62 = call i64 @zfs_prop_user(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i32*, i32** %10, align 8
  %66 = call i64 @nvpair_type(i32* %65)
  %67 = load i64, i64* @DATA_TYPE_STRING, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EINVAL, align 4
  %71 = call i32 @SET_ERROR(i32 %70)
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %69, %64
  br label %90

73:                                               ; preds = %60
  %74 = load i8*, i8** %16, align 8
  %75 = call i64 @zfs_prop_userquota(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32*, i32** %10, align 8
  %79 = call i64 @nvpair_type(i32* %78)
  %80 = load i64, i64* @DATA_TYPE_UINT64_ARRAY, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @EINVAL, align 4
  %84 = call i32 @SET_ERROR(i32 %83)
  store i32 %84, i32* %18, align 4
  br label %85

85:                                               ; preds = %82, %77
  br label %89

86:                                               ; preds = %73
  %87 = load i32, i32* @EINVAL, align 4
  %88 = call i32 @SET_ERROR(i32 %87)
  store i32 %88, i32* %18, align 4
  br label %89

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %89, %72
  br label %140

91:                                               ; preds = %56, %53
  %92 = load i32, i32* %18, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %139

94:                                               ; preds = %91
  %95 = load i32*, i32** %10, align 8
  %96 = call i64 @nvpair_type(i32* %95)
  %97 = load i64, i64* @DATA_TYPE_STRING, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i64, i64* %17, align 8
  %101 = call i32 @zfs_prop_get_type(i64 %100)
  %102 = icmp ne i32 %101, 128
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @EINVAL, align 4
  %105 = call i32 @SET_ERROR(i32 %104)
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %103, %99
  br label %138

107:                                              ; preds = %94
  %108 = load i32*, i32** %10, align 8
  %109 = call i64 @nvpair_type(i32* %108)
  %110 = load i64, i64* @DATA_TYPE_UINT64, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %107
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @fnvpair_value_uint64(i32* %113)
  store i32 %114, i32* %12, align 4
  %115 = load i64, i64* %17, align 8
  %116 = call i32 @zfs_prop_get_type(i64 %115)
  switch i32 %116, label %130 [
    i32 129, label %117
    i32 128, label %118
    i32 130, label %121
  ]

117:                                              ; preds = %112
  br label %133

118:                                              ; preds = %112
  %119 = load i32, i32* @EINVAL, align 4
  %120 = call i32 @SET_ERROR(i32 %119)
  store i32 %120, i32* %18, align 4
  br label %133

121:                                              ; preds = %112
  %122 = load i64, i64* %17, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @zfs_prop_index_to_string(i64 %122, i32 %123, i8** %20)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @EINVAL, align 4
  %128 = call i32 @SET_ERROR(i32 %127)
  store i32 %128, i32* %18, align 4
  br label %129

129:                                              ; preds = %126, %121
  br label %133

130:                                              ; preds = %112
  %131 = load i32, i32* @CE_PANIC, align 4
  %132 = call i32 @cmn_err(i32 %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %129, %118, %117
  br label %137

134:                                              ; preds = %107
  %135 = load i32, i32* @EINVAL, align 4
  %136 = call i32 @SET_ERROR(i32 %135)
  store i32 %136, i32* %18, align 4
  br label %137

137:                                              ; preds = %134, %133
  br label %138

138:                                              ; preds = %137, %106
  br label %139

139:                                              ; preds = %138, %91
  br label %140

140:                                              ; preds = %139, %90
  %141 = load i32, i32* %18, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i8*, i8** %5, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 (...) @CRED()
  %147 = call i32 @zfs_check_settable(i8* %144, i32* %145, i32 %146)
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %143, %140
  %149 = load i32, i32* %18, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %148
  %152 = load i8*, i8** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @zfs_prop_set_special(i8* %152, i32 %153, i32* %154)
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load i32*, i32** %14, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @nvlist_add_nvpair(i32* %159, i32* %160)
  store i32 %161, i32* %18, align 4
  br label %174

162:                                              ; preds = %151
  %163 = load i32, i32* %18, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load i32*, i32** %7, align 8
  %167 = load i32*, i32** %15, align 8
  %168 = icmp ne i32* %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i32*, i32** %15, align 8
  %171 = load i32*, i32** %9, align 8
  %172 = call i32 @nvlist_add_nvpair(i32* %170, i32* %171)
  store i32 %172, i32* %18, align 4
  br label %173

173:                                              ; preds = %169, %165, %162
  br label %174

174:                                              ; preds = %173, %158
  br label %175

175:                                              ; preds = %174, %148
  %176 = load i32, i32* %18, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %175
  %179 = load i32*, i32** %8, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i32*, i32** %8, align 8
  %183 = load i8*, i8** %16, align 8
  %184 = load i32, i32* %18, align 4
  %185 = call i32 @fnvlist_add_int32(i32* %182, i8* %183, i32 %184)
  br label %186

186:                                              ; preds = %181, %178
  %187 = load i32, i32* %18, align 4
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %186, %175
  br label %27

189:                                              ; preds = %27
  %190 = load i32*, i32** %7, align 8
  %191 = load i32*, i32** %15, align 8
  %192 = icmp ne i32* %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load i32*, i32** %15, align 8
  %195 = call i32 @nvlist_empty(i32* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = load i32*, i32** %15, align 8
  store i32* %198, i32** %7, align 8
  br label %26

199:                                              ; preds = %193, %189
  %200 = load i32*, i32** %14, align 8
  %201 = call i32 @nvlist_empty(i32* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %265, label %203

203:                                              ; preds = %199
  %204 = load i8*, i8** %5, align 8
  %205 = load i32, i32* %6, align 4
  %206 = load i32*, i32** %14, align 8
  %207 = call i64 @dsl_props_set(i8* %204, i32 %205, i32* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %265

209:                                              ; preds = %203
  store i32* null, i32** %9, align 8
  br label %210

210:                                              ; preds = %263, %209
  %211 = load i32*, i32** %14, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = call i32* @nvlist_next_nvpair(i32* %211, i32* %212)
  store i32* %213, i32** %9, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %264

215:                                              ; preds = %210
  %216 = load i32*, i32** %9, align 8
  %217 = call i8* @nvpair_name(i32* %216)
  store i8* %217, i8** %21, align 8
  store i32 0, i32* %22, align 4
  %218 = load i32*, i32** %9, align 8
  store i32* %218, i32** %10, align 8
  %219 = load i32*, i32** %9, align 8
  %220 = call i64 @nvpair_type(i32* %219)
  %221 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %215
  %224 = load i32*, i32** %9, align 8
  %225 = call i32* @fnvpair_value_nvlist(i32* %224)
  store i32* %225, i32** %23, align 8
  %226 = load i32*, i32** %23, align 8
  %227 = load i32, i32* @ZPROP_VALUE, align 4
  %228 = call i32* @fnvlist_lookup_nvpair(i32* %226, i32 %227)
  store i32* %228, i32** %10, align 8
  br label %229

229:                                              ; preds = %223, %215
  %230 = load i32*, i32** %10, align 8
  %231 = call i64 @nvpair_type(i32* %230)
  %232 = load i64, i64* @DATA_TYPE_STRING, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %229
  %235 = load i32*, i32** %10, align 8
  %236 = call i8* @fnvpair_value_string(i32* %235)
  store i8* %236, i8** %13, align 8
  %237 = load i8*, i8** %5, align 8
  %238 = load i8*, i8** %21, align 8
  %239 = load i32, i32* %6, align 4
  %240 = load i8*, i8** %13, align 8
  %241 = call i32 @dsl_prop_set_string(i8* %237, i8* %238, i32 %239, i8* %240)
  store i32 %241, i32* %22, align 4
  br label %250

242:                                              ; preds = %229
  %243 = load i32*, i32** %10, align 8
  %244 = call i32 @fnvpair_value_uint64(i32* %243)
  store i32 %244, i32* %12, align 4
  %245 = load i8*, i8** %5, align 8
  %246 = load i8*, i8** %21, align 8
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %12, align 4
  %249 = call i32 @dsl_prop_set_int(i8* %245, i8* %246, i32 %247, i32 %248)
  store i32 %249, i32* %22, align 4
  br label %250

250:                                              ; preds = %242, %234
  %251 = load i32, i32* %22, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %250
  %254 = load i32*, i32** %8, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %261

256:                                              ; preds = %253
  %257 = load i32*, i32** %8, align 8
  %258 = load i8*, i8** %21, align 8
  %259 = load i32, i32* %22, align 4
  %260 = call i32 @fnvlist_add_int32(i32* %257, i8* %258, i32 %259)
  br label %261

261:                                              ; preds = %256, %253
  %262 = load i32, i32* %22, align 4
  store i32 %262, i32* %11, align 4
  br label %263

263:                                              ; preds = %261, %250
  br label %210

264:                                              ; preds = %210
  br label %265

265:                                              ; preds = %264, %203, %199
  %266 = load i32*, i32** %14, align 8
  %267 = call i32 @nvlist_free(i32* %266)
  %268 = load i32*, i32** %15, align 8
  %269 = call i32 @nvlist_free(i32* %268)
  %270 = load i32, i32* %11, align 4
  ret i32 %270
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i32* @fnvpair_value_nvlist(i32*) #1

declare dso_local i64 @nvlist_lookup_nvpair(i32*, i32, i32**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @zfs_prop_user(i8*) #1

declare dso_local i64 @zfs_prop_userquota(i8*) #1

declare dso_local i32 @zfs_prop_get_type(i64) #1

declare dso_local i32 @fnvpair_value_uint64(i32*) #1

declare dso_local i32 @zfs_prop_index_to_string(i64, i32, i8**) #1

declare dso_local i32 @cmn_err(i32, i8*) #1

declare dso_local i32 @zfs_check_settable(i8*, i32*, i32) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @zfs_prop_set_special(i8*, i32, i32*) #1

declare dso_local i32 @nvlist_add_nvpair(i32*, i32*) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_empty(i32*) #1

declare dso_local i64 @dsl_props_set(i8*, i32, i32*) #1

declare dso_local i32* @fnvlist_lookup_nvpair(i32*, i32) #1

declare dso_local i8* @fnvpair_value_string(i32*) #1

declare dso_local i32 @dsl_prop_set_string(i8*, i8*, i32, i8*) #1

declare dso_local i32 @dsl_prop_set_int(i8*, i8*, i32, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
