; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_do_case_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_do_case_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U8_MB_CUR_MAX = common dso_local global i32 0, align 4
@u8_number_of_bytes = common dso_local global i32* null, align 8
@EILSEQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i64*, i64, i64, i32, i32*)* @do_case_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_case_compare(i64 %0, i64* %1, i64* %2, i64 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %26 = load i32, i32* @U8_MB_CUR_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %22, align 8
  %30 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %23, align 8
  %31 = load i32, i32* @U8_MB_CUR_MAX, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = alloca i64, i64 %33, align 16
  store i64 %33, i64* %24, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %20, align 8
  br label %35

35:                                               ; preds = %207, %7
  %36 = load i64, i64* %20, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64, i64* %21, align 8
  %41 = load i64, i64* %13, align 8
  %42 = icmp ult i64 %40, %41
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ false, %35 ], [ %42, %39 ]
  br i1 %44, label %45, label %216

45:                                               ; preds = %43
  %46 = load i32*, i32** @u8_number_of_bytes, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EILSEQ, align 4
  %55 = load i32*, i32** %15, align 8
  store i32 %54, i32* %55, align 4
  store i32 1, i32* %17, align 4
  br label %56

56:                                               ; preds = %53, %45
  %57 = load i32, i32* %17, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i64*, i64** %10, align 8
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @U8_ASCII_TOUPPER(i64 %64)
  %66 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %65, i64* %66, align 16
  br label %72

67:                                               ; preds = %59
  %68 = load i64*, i64** %10, align 8
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @U8_ASCII_TOLOWER(i64 %69)
  %71 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %70, i64* %71, align 16
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i64*, i64** %10, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %10, align 8
  %75 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 0, i64* %75, align 8
  br label %113

76:                                               ; preds = %56
  %77 = load i64, i64* %20, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %77, %79
  %81 = load i64, i64* %12, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %76
  %84 = load i32, i32* @EINVAL, align 4
  %85 = load i32*, i32** %15, align 8
  store i32 %84, i32* %85, align 4
  store i64 0, i64* %19, align 8
  br label %86

86:                                               ; preds = %92, %83
  %87 = load i64, i64* %20, align 8
  %88 = load i64, i64* %19, align 8
  %89 = add i64 %87, %88
  %90 = load i64, i64* %12, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load i64*, i64** %10, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %10, align 8
  %95 = load i64, i64* %93, align 8
  %96 = load i64, i64* %19, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %19, align 8
  %98 = getelementptr inbounds i64, i64* %30, i64 %96
  store i64 %95, i64* %98, align 8
  br label %86

99:                                               ; preds = %86
  %100 = load i64, i64* %19, align 8
  %101 = getelementptr inbounds i64, i64* %30, i64 %100
  store i64 0, i64* %101, align 8
  br label %112

102:                                              ; preds = %76
  %103 = load i64, i64* %9, align 8
  %104 = load i64*, i64** %10, align 8
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @do_case_conv(i64 %103, i64* %30, i64* %104, i32 %105, i32 %106)
  %108 = load i32, i32* %17, align 4
  %109 = load i64*, i64** %10, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64* %111, i64** %10, align 8
  br label %112

112:                                              ; preds = %102, %99
  br label %113

113:                                              ; preds = %112, %72
  %114 = load i32*, i32** @u8_number_of_bytes, align 8
  %115 = load i64*, i64** %11, align 8
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i32, i32* @EILSEQ, align 4
  %123 = load i32*, i32** %15, align 8
  store i32 %122, i32* %123, align 4
  store i32 1, i32* %18, align 4
  br label %124

124:                                              ; preds = %121, %113
  %125 = load i32, i32* %18, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %144

127:                                              ; preds = %124
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i64*, i64** %11, align 8
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @U8_ASCII_TOUPPER(i64 %132)
  %134 = getelementptr inbounds i64, i64* %34, i64 0
  store i64 %133, i64* %134, align 16
  br label %140

135:                                              ; preds = %127
  %136 = load i64*, i64** %11, align 8
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @U8_ASCII_TOLOWER(i64 %137)
  %139 = getelementptr inbounds i64, i64* %34, i64 0
  store i64 %138, i64* %139, align 16
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i64*, i64** %11, align 8
  %142 = getelementptr inbounds i64, i64* %141, i32 1
  store i64* %142, i64** %11, align 8
  %143 = getelementptr inbounds i64, i64* %34, i64 1
  store i64 0, i64* %143, align 8
  br label %181

144:                                              ; preds = %124
  %145 = load i64, i64* %21, align 8
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %145, %147
  %149 = load i64, i64* %13, align 8
  %150 = icmp ugt i64 %148, %149
  br i1 %150, label %151, label %170

151:                                              ; preds = %144
  %152 = load i32, i32* @EINVAL, align 4
  %153 = load i32*, i32** %15, align 8
  store i32 %152, i32* %153, align 4
  store i64 0, i64* %19, align 8
  br label %154

154:                                              ; preds = %160, %151
  %155 = load i64, i64* %21, align 8
  %156 = load i64, i64* %19, align 8
  %157 = add i64 %155, %156
  %158 = load i64, i64* %13, align 8
  %159 = icmp ult i64 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %154
  %161 = load i64*, i64** %11, align 8
  %162 = getelementptr inbounds i64, i64* %161, i32 1
  store i64* %162, i64** %11, align 8
  %163 = load i64, i64* %161, align 8
  %164 = load i64, i64* %19, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %19, align 8
  %166 = getelementptr inbounds i64, i64* %34, i64 %164
  store i64 %163, i64* %166, align 8
  br label %154

167:                                              ; preds = %154
  %168 = load i64, i64* %19, align 8
  %169 = getelementptr inbounds i64, i64* %34, i64 %168
  store i64 0, i64* %169, align 8
  br label %180

170:                                              ; preds = %144
  %171 = load i64, i64* %9, align 8
  %172 = load i64*, i64** %11, align 8
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @do_case_conv(i64 %171, i64* %34, i64* %172, i32 %173, i32 %174)
  %176 = load i32, i32* %18, align 4
  %177 = load i64*, i64** %11, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  store i64* %179, i64** %11, align 8
  br label %180

180:                                              ; preds = %170, %167
  br label %181

181:                                              ; preds = %180, %140
  %182 = load i32, i32* %17, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %198

184:                                              ; preds = %181
  %185 = load i32, i32* %18, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %198

187:                                              ; preds = %184
  %188 = load i64, i64* %30, align 16
  %189 = load i64, i64* %34, align 16
  %190 = icmp ugt i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i32 1, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %227

192:                                              ; preds = %187
  %193 = load i64, i64* %30, align 16
  %194 = load i64, i64* %34, align 16
  %195 = icmp ult i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %227

197:                                              ; preds = %192
  br label %207

198:                                              ; preds = %184, %181
  %199 = bitcast i64* %30 to i8*
  %200 = bitcast i64* %34 to i8*
  %201 = call i32 @strcmp(i8* %199, i8* %200)
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i32, i32* %16, align 4
  store i32 %205, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %227

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206, %197
  %208 = load i32, i32* %17, align 4
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* %20, align 8
  %211 = add i64 %210, %209
  store i64 %211, i64* %20, align 8
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %21, align 8
  %215 = add i64 %214, %213
  store i64 %215, i64* %21, align 8
  br label %35

216:                                              ; preds = %43
  %217 = load i64, i64* %20, align 8
  %218 = load i64, i64* %12, align 8
  %219 = icmp uge i64 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load i64, i64* %21, align 8
  %222 = load i64, i64* %13, align 8
  %223 = icmp uge i64 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  store i32 0, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %227

225:                                              ; preds = %220
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %227

226:                                              ; preds = %216
  store i32 1, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %227

227:                                              ; preds = %226, %225, %224, %204, %196, %191
  %228 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %228)
  %229 = load i32, i32* %8, align 4
  ret i32 %229
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @U8_ASCII_TOUPPER(i64) #2

declare dso_local i64 @U8_ASCII_TOLOWER(i64) #2

declare dso_local i32 @do_case_conv(i64, i64*, i64*, i32, i32) #2

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
