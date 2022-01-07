; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_u8_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_u8_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U8_VALIDATE_ENTIRE = common dso_local global i32 0, align 4
@U8_VALIDATE_CHECK_ADDITIONAL = common dso_local global i32 0, align 4
@U8_VALIDATE_UCS2_RANGE = common dso_local global i32 0, align 4
@u8_number_of_bytes = common dso_local global i32* null, align 8
@U8_ILLEGAL_CHAR = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@U8_OUT_OF_RANGE_CHAR = common dso_local global i32 0, align 4
@U8_MAX_BYTES_UCS2 = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@u8_valid_min_2nd_byte = common dso_local global i64* null, align 8
@u8_valid_max_2nd_byte = common dso_local global i64* null, align 8
@B_FALSE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @u8_validate(i8* %0, i64 %1, i8** %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %216

28:                                               ; preds = %5
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to i64*
  store i64* %30, i64** %12, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64* %33, i64** %13, align 8
  store i32 0, i32* %20, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @U8_VALIDATE_ENTIRE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %22, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @U8_VALIDATE_CHECK_ADDITIONAL, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @U8_VALIDATE_UCS2_RANGE, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %24, align 4
  br label %46

46:                                               ; preds = %213, %28
  %47 = load i64*, i64** %12, align 8
  %48 = load i64*, i64** %13, align 8
  %49 = icmp ult i64* %47, %48
  br i1 %49, label %50, label %214

50:                                               ; preds = %46
  %51 = load i32*, i32** @u8_number_of_bytes, align 8
  %52 = load i64*, i64** %12, align 8
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* @U8_ILLEGAL_CHAR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @EILSEQ, align 4
  %61 = load i32*, i32** %11, align 8
  store i32 %60, i32* %61, align 4
  store i32 -1, i32* %6, align 4
  br label %216

62:                                               ; preds = %50
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* @U8_OUT_OF_RANGE_CHAR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %24, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* @U8_MAX_BYTES_UCS2, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %62
  %74 = load i32, i32* @ERANGE, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  store i32 -1, i32* %6, align 4
  br label %216

76:                                               ; preds = %69, %66
  %77 = load i64*, i64** %13, align 8
  %78 = load i64*, i64** %12, align 8
  %79 = ptrtoint i64* %77 to i64
  %80 = ptrtoint i64* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load i32, i32* @EINVAL, align 4
  %88 = load i32*, i32** %11, align 8
  store i32 %87, i32* %88, align 4
  store i32 -1, i32* %6, align 4
  br label %216

89:                                               ; preds = %76
  %90 = load i32, i32* %18, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i64*, i64** %12, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %12, align 8
  %95 = load i32, i32* %20, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %20, align 4
  br label %151

97:                                               ; preds = %89
  %98 = load i64*, i64** %12, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %12, align 8
  %100 = load i64, i64* %98, align 8
  store i64 %100, i64* %17, align 8
  %101 = load i32, i32* %20, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* @B_TRUE, align 4
  store i32 %103, i32* %21, align 4
  store i64 1, i64* %19, align 8
  br label %104

104:                                              ; preds = %147, %97
  %105 = load i64, i64* %19, align 8
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp ult i64 %105, %107
  br i1 %108, label %109, label %150

109:                                              ; preds = %104
  %110 = load i32, i32* %21, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %109
  %113 = load i64*, i64** %12, align 8
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** @u8_valid_min_2nd_byte, align 8
  %116 = load i64, i64* %17, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %114, %118
  br i1 %119, label %128, label %120

120:                                              ; preds = %112
  %121 = load i64*, i64** %12, align 8
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** @u8_valid_max_2nd_byte, align 8
  %124 = load i64, i64* %17, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp ugt i64 %122, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %120, %112
  %129 = load i32, i32* @EILSEQ, align 4
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  store i32 -1, i32* %6, align 4
  br label %216

131:                                              ; preds = %120
  %132 = load i32, i32* @B_FALSE, align 4
  store i32 %132, i32* %21, align 4
  br label %142

133:                                              ; preds = %109
  %134 = load i64*, i64** %12, align 8
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @U8_ILLEGAL_NEXT_BYTE_COMMON(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* @EILSEQ, align 4
  %140 = load i32*, i32** %11, align 8
  store i32 %139, i32* %140, align 4
  store i32 -1, i32* %6, align 4
  br label %216

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %131
  %143 = load i64*, i64** %12, align 8
  %144 = getelementptr inbounds i64, i64* %143, i32 1
  store i64* %144, i64** %12, align 8
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %20, align 4
  br label %147

147:                                              ; preds = %142
  %148 = load i64, i64* %19, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %19, align 8
  br label %104

150:                                              ; preds = %104
  br label %151

151:                                              ; preds = %150, %92
  %152 = load i32, i32* %23, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %209

154:                                              ; preds = %151
  %155 = load i8**, i8*** %9, align 8
  %156 = bitcast i8** %155 to i64**
  store i64** %156, i64*** %14, align 8
  store i64 0, i64* %19, align 8
  br label %157

157:                                              ; preds = %205, %154
  %158 = load i64**, i64*** %14, align 8
  %159 = load i64, i64* %19, align 8
  %160 = getelementptr inbounds i64*, i64** %158, i64 %159
  %161 = load i64*, i64** %160, align 8
  %162 = icmp ne i64* %161, null
  br i1 %162, label %163, label %208

163:                                              ; preds = %157
  %164 = load i64*, i64** %12, align 8
  %165 = load i32, i32* %18, align 4
  %166 = sext i32 %165 to i64
  %167 = sub i64 0, %166
  %168 = getelementptr inbounds i64, i64* %164, i64 %167
  store i64* %168, i64** %15, align 8
  %169 = load i64**, i64*** %14, align 8
  %170 = load i64, i64* %19, align 8
  %171 = getelementptr inbounds i64*, i64** %169, i64 %170
  %172 = load i64*, i64** %171, align 8
  store i64* %172, i64** %16, align 8
  br label %173

173:                                              ; preds = %188, %163
  %174 = load i64*, i64** %15, align 8
  %175 = load i64*, i64** %12, align 8
  %176 = icmp ult i64* %174, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %173
  %178 = load i64*, i64** %15, align 8
  %179 = load i64, i64* %178, align 8
  %180 = load i64*, i64** %16, align 8
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %179, %181
  br i1 %182, label %187, label %183

183:                                              ; preds = %177
  %184 = load i64*, i64** %16, align 8
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183, %177
  br label %193

188:                                              ; preds = %183
  %189 = load i64*, i64** %15, align 8
  %190 = getelementptr inbounds i64, i64* %189, i32 1
  store i64* %190, i64** %15, align 8
  %191 = load i64*, i64** %16, align 8
  %192 = getelementptr inbounds i64, i64* %191, i32 1
  store i64* %192, i64** %16, align 8
  br label %173

193:                                              ; preds = %187, %173
  %194 = load i64*, i64** %15, align 8
  %195 = load i64*, i64** %12, align 8
  %196 = icmp uge i64* %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %193
  %198 = load i64*, i64** %16, align 8
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load i32, i32* @EBADF, align 4
  %203 = load i32*, i32** %11, align 8
  store i32 %202, i32* %203, align 4
  store i32 -1, i32* %6, align 4
  br label %216

204:                                              ; preds = %197, %193
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %19, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %19, align 8
  br label %157

208:                                              ; preds = %157
  br label %209

209:                                              ; preds = %208, %151
  %210 = load i32, i32* %22, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  br label %214

213:                                              ; preds = %209
  br label %46

214:                                              ; preds = %212, %46
  %215 = load i32, i32* %20, align 4
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %214, %201, %138, %128, %86, %73, %59, %27
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local i64 @U8_ILLEGAL_NEXT_BYTE_COMMON(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
