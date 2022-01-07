; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2-core.c_validate_inputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_pwhash/argon2/extr_argon2-core.c_validate_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i32, i32, i64, i64, i32*, i32*, i32*, i32*, i32* }

@ARGON2_INCORRECT_PARAMETER = common dso_local global i32 0, align 4
@ARGON2_OUTPUT_PTR_NULL = common dso_local global i32 0, align 4
@ARGON2_MIN_OUTLEN = common dso_local global i64 0, align 8
@ARGON2_OUTPUT_TOO_SHORT = common dso_local global i32 0, align 4
@ARGON2_MAX_OUTLEN = common dso_local global i64 0, align 8
@ARGON2_OUTPUT_TOO_LONG = common dso_local global i32 0, align 4
@ARGON2_PWD_PTR_MISMATCH = common dso_local global i32 0, align 4
@ARGON2_MIN_PWD_LENGTH = common dso_local global i64 0, align 8
@ARGON2_PWD_TOO_SHORT = common dso_local global i32 0, align 4
@ARGON2_MAX_PWD_LENGTH = common dso_local global i64 0, align 8
@ARGON2_PWD_TOO_LONG = common dso_local global i32 0, align 4
@ARGON2_SALT_PTR_MISMATCH = common dso_local global i32 0, align 4
@ARGON2_MIN_SALT_LENGTH = common dso_local global i64 0, align 8
@ARGON2_SALT_TOO_SHORT = common dso_local global i32 0, align 4
@ARGON2_MAX_SALT_LENGTH = common dso_local global i64 0, align 8
@ARGON2_SALT_TOO_LONG = common dso_local global i32 0, align 4
@ARGON2_SECRET_PTR_MISMATCH = common dso_local global i32 0, align 4
@ARGON2_MIN_SECRET = common dso_local global i64 0, align 8
@ARGON2_SECRET_TOO_SHORT = common dso_local global i32 0, align 4
@ARGON2_MAX_SECRET = common dso_local global i64 0, align 8
@ARGON2_SECRET_TOO_LONG = common dso_local global i32 0, align 4
@ARGON2_AD_PTR_MISMATCH = common dso_local global i32 0, align 4
@ARGON2_MIN_AD_LENGTH = common dso_local global i64 0, align 8
@ARGON2_AD_TOO_SHORT = common dso_local global i32 0, align 4
@ARGON2_MAX_AD_LENGTH = common dso_local global i64 0, align 8
@ARGON2_AD_TOO_LONG = common dso_local global i32 0, align 4
@ARGON2_MIN_MEMORY = common dso_local global i32 0, align 4
@ARGON2_MEMORY_TOO_LITTLE = common dso_local global i32 0, align 4
@ARGON2_MAX_MEMORY = common dso_local global i32 0, align 4
@ARGON2_MEMORY_TOO_MUCH = common dso_local global i32 0, align 4
@ARGON2_MIN_TIME = common dso_local global i64 0, align 8
@ARGON2_TIME_TOO_SMALL = common dso_local global i32 0, align 4
@ARGON2_MAX_TIME = common dso_local global i64 0, align 8
@ARGON2_TIME_TOO_LARGE = common dso_local global i32 0, align 4
@ARGON2_MIN_LANES = common dso_local global i32 0, align 4
@ARGON2_LANES_TOO_FEW = common dso_local global i32 0, align 4
@ARGON2_MAX_LANES = common dso_local global i32 0, align 4
@ARGON2_LANES_TOO_MANY = common dso_local global i32 0, align 4
@ARGON2_MIN_THREADS = common dso_local global i64 0, align 8
@ARGON2_THREADS_TOO_FEW = common dso_local global i32 0, align 4
@ARGON2_MAX_THREADS = common dso_local global i64 0, align 8
@ARGON2_THREADS_TOO_MANY = common dso_local global i32 0, align 4
@ARGON2_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_inputs(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = icmp eq %struct.TYPE_3__* null, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @ARGON2_INCORRECT_PARAMETER, align 4
  store i32 %7, i32* %2, align 4
  br label %226

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 13
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* null, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @ARGON2_OUTPUT_PTR_NULL, align 4
  store i32 %14, i32* %2, align 4
  br label %226

15:                                               ; preds = %8
  %16 = load i64, i64* @ARGON2_MIN_OUTLEN, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @ARGON2_OUTPUT_TOO_SHORT, align 4
  store i32 %22, i32* %2, align 4
  br label %226

23:                                               ; preds = %15
  %24 = load i64, i64* @ARGON2_MAX_OUTLEN, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ARGON2_OUTPUT_TOO_LONG, align 4
  store i32 %30, i32* %2, align 4
  br label %226

31:                                               ; preds = %23
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 12
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* null, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 0, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @ARGON2_PWD_PTR_MISMATCH, align 4
  store i32 %42, i32* %2, align 4
  br label %226

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i64, i64* @ARGON2_MIN_PWD_LENGTH, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @ARGON2_PWD_TOO_SHORT, align 4
  store i32 %51, i32* %2, align 4
  br label %226

52:                                               ; preds = %44
  %53 = load i64, i64* @ARGON2_MAX_PWD_LENGTH, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @ARGON2_PWD_TOO_LONG, align 4
  store i32 %59, i32* %2, align 4
  br label %226

60:                                               ; preds = %52
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 11
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* null, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 0, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @ARGON2_SALT_PTR_MISMATCH, align 4
  store i32 %71, i32* %2, align 4
  br label %226

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %60
  %74 = load i64, i64* @ARGON2_MIN_SALT_LENGTH, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @ARGON2_SALT_TOO_SHORT, align 4
  store i32 %80, i32* %2, align 4
  br label %226

81:                                               ; preds = %73
  %82 = load i64, i64* @ARGON2_MAX_SALT_LENGTH, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @ARGON2_SALT_TOO_LONG, align 4
  store i32 %88, i32* %2, align 4
  br label %226

89:                                               ; preds = %81
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 10
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* null, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 0, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @ARGON2_SECRET_PTR_MISMATCH, align 4
  store i32 %100, i32* %2, align 4
  br label %226

101:                                              ; preds = %94
  br label %119

102:                                              ; preds = %89
  %103 = load i64, i64* @ARGON2_MIN_SECRET, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @ARGON2_SECRET_TOO_SHORT, align 4
  store i32 %109, i32* %2, align 4
  br label %226

110:                                              ; preds = %102
  %111 = load i64, i64* @ARGON2_MAX_SECRET, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %111, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* @ARGON2_SECRET_TOO_LONG, align 4
  store i32 %117, i32* %2, align 4
  br label %226

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %101
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 9
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* null, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 0, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @ARGON2_AD_PTR_MISMATCH, align 4
  store i32 %130, i32* %2, align 4
  br label %226

131:                                              ; preds = %124
  br label %149

132:                                              ; preds = %119
  %133 = load i64, i64* @ARGON2_MIN_AD_LENGTH, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %133, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* @ARGON2_AD_TOO_SHORT, align 4
  store i32 %139, i32* %2, align 4
  br label %226

140:                                              ; preds = %132
  %141 = load i64, i64* @ARGON2_MAX_AD_LENGTH, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %141, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* @ARGON2_AD_TOO_LONG, align 4
  store i32 %147, i32* %2, align 4
  br label %226

148:                                              ; preds = %140
  br label %149

149:                                              ; preds = %148, %131
  %150 = load i32, i32* @ARGON2_MIN_MEMORY, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = icmp sgt i32 %150, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* @ARGON2_MEMORY_TOO_LITTLE, align 4
  store i32 %156, i32* %2, align 4
  br label %226

157:                                              ; preds = %149
  %158 = load i32, i32* @ARGON2_MAX_MEMORY, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* @ARGON2_MEMORY_TOO_MUCH, align 4
  store i32 %164, i32* %2, align 4
  br label %226

165:                                              ; preds = %157
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 8, %171
  %173 = icmp slt i32 %168, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %165
  %175 = load i32, i32* @ARGON2_MEMORY_TOO_LITTLE, align 4
  store i32 %175, i32* %2, align 4
  br label %226

176:                                              ; preds = %165
  %177 = load i64, i64* @ARGON2_MIN_TIME, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 7
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %177, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load i32, i32* @ARGON2_TIME_TOO_SMALL, align 4
  store i32 %183, i32* %2, align 4
  br label %226

184:                                              ; preds = %176
  %185 = load i64, i64* @ARGON2_MAX_TIME, align 8
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = icmp slt i64 %185, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i32, i32* @ARGON2_TIME_TOO_LARGE, align 4
  store i32 %191, i32* %2, align 4
  br label %226

192:                                              ; preds = %184
  %193 = load i32, i32* @ARGON2_MIN_LANES, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %193, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = load i32, i32* @ARGON2_LANES_TOO_FEW, align 4
  store i32 %199, i32* %2, align 4
  br label %226

200:                                              ; preds = %192
  %201 = load i32, i32* @ARGON2_MAX_LANES, align 4
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %200
  %207 = load i32, i32* @ARGON2_LANES_TOO_MANY, align 4
  store i32 %207, i32* %2, align 4
  br label %226

208:                                              ; preds = %200
  %209 = load i64, i64* @ARGON2_MIN_THREADS, align 8
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 8
  %212 = load i64, i64* %211, align 8
  %213 = icmp sgt i64 %209, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %208
  %215 = load i32, i32* @ARGON2_THREADS_TOO_FEW, align 4
  store i32 %215, i32* %2, align 4
  br label %226

216:                                              ; preds = %208
  %217 = load i64, i64* @ARGON2_MAX_THREADS, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 8
  %220 = load i64, i64* %219, align 8
  %221 = icmp slt i64 %217, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %216
  %223 = load i32, i32* @ARGON2_THREADS_TOO_MANY, align 4
  store i32 %223, i32* %2, align 4
  br label %226

224:                                              ; preds = %216
  %225 = load i32, i32* @ARGON2_OK, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %224, %222, %214, %206, %198, %190, %182, %174, %163, %155, %146, %138, %129, %116, %108, %99, %87, %79, %70, %58, %50, %41, %29, %21, %13, %6
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
