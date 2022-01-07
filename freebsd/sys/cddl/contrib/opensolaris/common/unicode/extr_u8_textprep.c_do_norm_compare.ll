; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_do_norm_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_do_norm_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U8_STREAM_SAFE_TEXT_MAX = common dso_local global i32 0, align 4
@U8_TEXTPREP_TOUPPER = common dso_local global i32 0, align 4
@U8_TEXTPREP_TOLOWER = common dso_local global i32 0, align 4
@U8_CANON_DECOMP = common dso_local global i32 0, align 4
@U8_COMPAT_DECOMP = common dso_local global i32 0, align 4
@U8_CANON_COMP = common dso_local global i32 0, align 4
@U8_STATE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i64*, i64, i64, i32, i32*)* @do_norm_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_norm_compare(i64 %0, i64* %1, i64* %2, i64 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %31 = load i32, i32* @U8_STREAM_SAFE_TEXT_MAX, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %19, align 8
  %35 = alloca i64, i64 %33, align 16
  store i64 %33, i64* %20, align 8
  %36 = load i32, i32* @U8_STREAM_SAFE_TEXT_MAX, align 4
  %37 = add nsw i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %21, align 8
  %40 = load i64*, i64** %10, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64* %42, i64** %22, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64* %45, i64** %23, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @U8_TEXTPREP_TOUPPER, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %24, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @U8_TEXTPREP_TOLOWER, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %25, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @U8_CANON_DECOMP, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %26, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @U8_COMPAT_DECOMP, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %27, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @U8_CANON_COMP, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %28, align 4
  br label %61

61:                                               ; preds = %211, %7
  %62 = load i64*, i64** %10, align 8
  %63 = load i64*, i64** %22, align 8
  %64 = icmp ult i64* %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i64*, i64** %11, align 8
  %67 = load i64*, i64** %23, align 8
  %68 = icmp ult i64* %66, %67
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i1 [ false, %61 ], [ %68, %65 ]
  br i1 %70, label %71, label %212

71:                                               ; preds = %69
  %72 = load i64*, i64** %10, align 8
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @U8_ISASCII(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %71
  %77 = load i64*, i64** %10, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64*, i64** %22, align 8
  %80 = icmp uge i64* %78, %79
  br i1 %80, label %92, label %81

81:                                               ; preds = %76
  %82 = load i64*, i64** %10, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64*, i64** %22, align 8
  %85 = icmp ult i64* %83, %84
  br i1 %85, label %86, label %117

86:                                               ; preds = %81
  %87 = load i64*, i64** %10, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @U8_ISASCII(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %86, %76
  %93 = load i32, i32* %24, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i64*, i64** %10, align 8
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @U8_ASCII_TOUPPER(i64 %97)
  %99 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 %98, i64* %99, align 16
  br label %113

100:                                              ; preds = %92
  %101 = load i32, i32* %25, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i64*, i64** %10, align 8
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @U8_ASCII_TOLOWER(i64 %105)
  %107 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 %106, i64* %107, align 16
  br label %112

108:                                              ; preds = %100
  %109 = load i64*, i64** %10, align 8
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 %110, i64* %111, align 16
  br label %112

112:                                              ; preds = %108, %103
  br label %113

113:                                              ; preds = %112, %95
  %114 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 0, i64* %114, align 8
  store i64 1, i64* %17, align 8
  %115 = load i64*, i64** %10, align 8
  %116 = getelementptr inbounds i64, i64* %115, i32 1
  store i64* %116, i64** %10, align 8
  br label %128

117:                                              ; preds = %86, %81, %71
  %118 = load i32, i32* @U8_STATE_START, align 4
  store i32 %118, i32* %29, align 4
  %119 = load i64, i64* %9, align 8
  %120 = load i64*, i64** %22, align 8
  %121 = load i32, i32* %24, align 4
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %26, align 4
  %124 = load i32, i32* %27, align 4
  %125 = load i32, i32* %28, align 4
  %126 = load i32*, i32** %15, align 8
  %127 = call i64 @collect_a_seq(i64 %119, i64* %35, i64** %10, i64* %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32* %126, i32* %29)
  store i64 %127, i64* %17, align 8
  br label %128

128:                                              ; preds = %117, %113
  %129 = load i64*, i64** %11, align 8
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @U8_ISASCII(i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %174

133:                                              ; preds = %128
  %134 = load i64*, i64** %11, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 1
  %136 = load i64*, i64** %23, align 8
  %137 = icmp uge i64* %135, %136
  br i1 %137, label %149, label %138

138:                                              ; preds = %133
  %139 = load i64*, i64** %11, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  %141 = load i64*, i64** %23, align 8
  %142 = icmp ult i64* %140, %141
  br i1 %142, label %143, label %174

143:                                              ; preds = %138
  %144 = load i64*, i64** %11, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 1
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @U8_ISASCII(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %174

149:                                              ; preds = %143, %133
  %150 = load i32, i32* %24, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i64*, i64** %11, align 8
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @U8_ASCII_TOUPPER(i64 %154)
  %156 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 %155, i64* %156, align 16
  br label %170

157:                                              ; preds = %149
  %158 = load i32, i32* %25, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i64*, i64** %11, align 8
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @U8_ASCII_TOLOWER(i64 %162)
  %164 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 %163, i64* %164, align 16
  br label %169

165:                                              ; preds = %157
  %166 = load i64*, i64** %11, align 8
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 %167, i64* %168, align 16
  br label %169

169:                                              ; preds = %165, %160
  br label %170

170:                                              ; preds = %169, %152
  %171 = getelementptr inbounds i64, i64* %39, i64 1
  store i64 0, i64* %171, align 8
  store i64 1, i64* %18, align 8
  %172 = load i64*, i64** %11, align 8
  %173 = getelementptr inbounds i64, i64* %172, i32 1
  store i64* %173, i64** %11, align 8
  br label %185

174:                                              ; preds = %143, %138, %128
  %175 = load i32, i32* @U8_STATE_START, align 4
  store i32 %175, i32* %29, align 4
  %176 = load i64, i64* %9, align 8
  %177 = load i64*, i64** %23, align 8
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %25, align 4
  %180 = load i32, i32* %26, align 4
  %181 = load i32, i32* %27, align 4
  %182 = load i32, i32* %28, align 4
  %183 = load i32*, i32** %15, align 8
  %184 = call i64 @collect_a_seq(i64 %176, i64* %39, i64** %11, i64* %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32* %183, i32* %29)
  store i64 %184, i64* %18, align 8
  br label %185

185:                                              ; preds = %174, %170
  %186 = load i64, i64* %17, align 8
  %187 = icmp eq i64 %186, 1
  br i1 %187, label %188, label %202

188:                                              ; preds = %185
  %189 = load i64, i64* %18, align 8
  %190 = icmp eq i64 %189, 1
  br i1 %190, label %191, label %202

191:                                              ; preds = %188
  %192 = load i64, i64* %35, align 16
  %193 = load i64, i64* %39, align 16
  %194 = icmp sgt i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  store i32 1, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %223

196:                                              ; preds = %191
  %197 = load i64, i64* %35, align 16
  %198 = load i64, i64* %39, align 16
  %199 = icmp slt i64 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %223

201:                                              ; preds = %196
  br label %211

202:                                              ; preds = %188, %185
  %203 = bitcast i64* %35 to i8*
  %204 = bitcast i64* %39 to i8*
  %205 = call i32 @strcmp(i8* %203, i8* %204)
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i32, i32* %16, align 4
  store i32 %209, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %223

210:                                              ; preds = %202
  br label %211

211:                                              ; preds = %210, %201
  br label %61

212:                                              ; preds = %69
  %213 = load i64*, i64** %10, align 8
  %214 = load i64*, i64** %22, align 8
  %215 = icmp uge i64* %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %212
  %217 = load i64*, i64** %11, align 8
  %218 = load i64*, i64** %23, align 8
  %219 = icmp uge i64* %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  store i32 0, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %223

221:                                              ; preds = %216
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %223

222:                                              ; preds = %212
  store i32 1, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %223

223:                                              ; preds = %222, %221, %220, %208, %200, %195
  %224 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %8, align 4
  ret i32 %225
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @U8_ISASCII(i64) #2

declare dso_local i64 @U8_ASCII_TOUPPER(i64) #2

declare dso_local i64 @U8_ASCII_TOLOWER(i64) #2

declare dso_local i64 @collect_a_seq(i64, i64*, i64**, i64*, i32, i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
