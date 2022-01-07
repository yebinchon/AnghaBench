; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_dolfptoa.c_dolfptoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_dolfptoa.c_dolfptoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dolfptoa(i64 %0, i64 %1, i32 %2, i16 signext %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [24 x i32], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  store i32 %4, i32* %10, align 4
  %24 = load i8*, i8** %16, align 8
  %25 = call i32 @LIB_GETBUF(i8* %24)
  %26 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 0
  %27 = call i32 @ZERO(i32* %26)
  %28 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 10
  store i32* %28, i32** %13, align 8
  store i32* %28, i32** %12, align 8
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 0
  %31 = ptrtoint i32* %29 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %59, %5
  %37 = load i32, i32* %14, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %36 ], [ %41, %39 ]
  br i1 %43, label %44, label %62

44:                                               ; preds = %42
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %18, align 8
  %46 = load i64, i64* %6, align 8
  %47 = sdiv i64 %46, 10
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = shl i64 %48, 3
  %50 = load i64, i64* %6, align 8
  %51 = shl i64 %50, 1
  %52 = add nsw i64 %49, %51
  %53 = load i64, i64* %18, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %18, align 8
  %55 = load i64, i64* %18, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 -1
  store i32* %58, i32** %11, align 8
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %14, align 4
  br label %36

62:                                               ; preds = %42
  %63 = load i16, i16* %9, align 2
  %64 = sext i16 %63 to i32
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 3
  store i32 %73, i32* %14, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32* %75, i32** %13, align 8
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 0
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = sub i64 96, %84
  %86 = icmp ugt i64 %78, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %76
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 0
  %90 = ptrtoint i32* %88 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = sub i64 96, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %87, %76
  br label %97

97:                                               ; preds = %126, %96
  %98 = load i32, i32* %14, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i64, i64* %7, align 8
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i1 [ false, %97 ], [ %102, %100 ]
  br i1 %104, label %105, label %129

105:                                              ; preds = %103
  store i64 0, i64* %19, align 8
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @M_LSHIFT(i64 %106, i64 %107)
  %109 = load i64, i64* %19, align 8
  store i64 %109, i64* %20, align 8
  %110 = load i64, i64* %7, align 8
  store i64 %110, i64* %21, align 8
  %111 = load i64, i64* %19, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @M_LSHIFT(i64 %111, i64 %112)
  %114 = load i64, i64* %19, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @M_LSHIFT(i64 %114, i64 %115)
  %117 = load i64, i64* %19, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* %20, align 8
  %120 = load i64, i64* %21, align 8
  %121 = call i32 @M_ADD(i64 %117, i64 %118, i64 %119, i64 %120)
  %122 = load i64, i64* %19, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %12, align 8
  store i32 %123, i32* %124, align 4
  br label %126

126:                                              ; preds = %105
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %14, align 4
  br label %97

129:                                              ; preds = %103
  %130 = load i32, i32* %14, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32, i32* %14, align 4
  %134 = load i32*, i32** %12, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %12, align 8
  br label %181

137:                                              ; preds = %129
  %138 = load i32*, i32** %12, align 8
  store i32* %138, i32** %22, align 8
  %139 = load i64, i64* %7, align 8
  %140 = and i64 %139, 2147483648
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %23, align 4
  %143 = load i32*, i32** %22, align 8
  %144 = getelementptr inbounds [24 x i32], [24 x i32]* %15, i64 0, i64 0
  %145 = ptrtoint i32* %143 to i64
  %146 = ptrtoint i32* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 4
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %171, %137
  %151 = load i32, i32* %23, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %14, align 4
  %155 = icmp sgt i32 %154, 0
  br label %156

156:                                              ; preds = %153, %150
  %157 = phi i1 [ false, %150 ], [ %155, %153 ]
  br i1 %157, label %158, label %174

158:                                              ; preds = %156
  %159 = load i32*, i32** %22, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 -1
  store i32* %160, i32** %22, align 8
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load i32*, i32** %22, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 10
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = load i32*, i32** %22, align 8
  store i32 0, i32* %167, align 4
  br label %170

168:                                              ; preds = %158
  %169 = load i32, i32* @FALSE, align 4
  store i32 %169, i32* %23, align 4
  br label %170

170:                                              ; preds = %168, %166
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %14, align 4
  br label %150

174:                                              ; preds = %156
  %175 = load i32*, i32** %22, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = icmp ult i32* %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32*, i32** %22, align 8
  store i32* %179, i32** %11, align 8
  br label %180

180:                                              ; preds = %178, %174
  br label %181

181:                                              ; preds = %180, %132
  br label %182

182:                                              ; preds = %192, %181
  %183 = load i32*, i32** %11, align 8
  %184 = load i32*, i32** %13, align 8
  %185 = icmp ult i32* %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load i32*, i32** %11, align 8
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 0
  br label %190

190:                                              ; preds = %186, %182
  %191 = phi i1 [ false, %182 ], [ %189, %186 ]
  br i1 %191, label %192, label %195

192:                                              ; preds = %190
  %193 = load i32*, i32** %11, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %11, align 8
  br label %182

195:                                              ; preds = %190
  %196 = load i32*, i32** %11, align 8
  %197 = load i32*, i32** %13, align 8
  %198 = icmp uge i32* %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i32*, i32** %13, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 -1
  store i32* %201, i32** %11, align 8
  br label %202

202:                                              ; preds = %199, %195
  %203 = load i8*, i8** %16, align 8
  store i8* %203, i8** %17, align 8
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i8*, i8** %17, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %17, align 8
  store i8 45, i8* %207, align 1
  br label %209

209:                                              ; preds = %206, %202
  br label %210

210:                                              ; preds = %221, %209
  %211 = load i32*, i32** %11, align 8
  %212 = load i32*, i32** %12, align 8
  %213 = icmp ult i32* %211, %212
  br i1 %213, label %214, label %231

214:                                              ; preds = %210
  %215 = load i32*, i32** %11, align 8
  %216 = load i32*, i32** %13, align 8
  %217 = icmp eq i32* %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load i8*, i8** %17, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %17, align 8
  store i8 46, i8* %219, align 1
  br label %221

221:                                              ; preds = %218, %214
  %222 = load i32*, i32** %11, align 8
  %223 = getelementptr inbounds i32, i32* %222, i32 1
  store i32* %223, i32** %11, align 8
  %224 = load i32, i32* %222, align 4
  %225 = trunc i32 %224 to i8
  %226 = sext i8 %225 to i32
  %227 = add nsw i32 %226, 48
  %228 = trunc i32 %227 to i8
  %229 = load i8*, i8** %17, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %17, align 8
  store i8 %228, i8* %229, align 1
  br label %210

231:                                              ; preds = %210
  %232 = load i8*, i8** %17, align 8
  store i8 0, i8* %232, align 1
  %233 = load i8*, i8** %16, align 8
  ret i8* %233
}

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @ZERO(i32*) #1

declare dso_local i32 @M_LSHIFT(i64, i64) #1

declare dso_local i32 @M_ADD(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
