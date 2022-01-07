; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/simple/extr_x86.c_x86_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/simple/extr_x86.c_x86_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@x86_code.MASK_TO_ALLOWED_STATUS = internal constant [8 x i32] [i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0], align 16
@x86_code.MASK_TO_BIT_NUMBER = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32, i32*, i64)* @x86_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @x86_code(i8* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %12, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %31, 5
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %230

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %14, align 4
  %37 = sub nsw i32 %35, %36
  %38 = icmp sgt i32 %37, 5
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 5
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i64, i64* %11, align 8
  %44 = sub i64 %43, 5
  store i64 %44, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %45

45:                                               ; preds = %221, %59, %42
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* %15, align 8
  %48 = icmp ule i64 %46, %47
  br i1 %48, label %49, label %222

49:                                               ; preds = %45
  %50 = load i32*, i32** %10, align 8
  %51 = load i64, i64* %16, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 232
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 233
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* %16, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %16, align 8
  br label %45

62:                                               ; preds = %56, %49
  %63 = load i32, i32* %8, align 4
  %64 = load i64, i64* %16, align 8
  %65 = trunc i64 %64 to i32
  %66 = add nsw i32 %63, %65
  %67 = load i32, i32* %14, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i64, i64* %16, align 8
  %71 = trunc i64 %70 to i32
  %72 = add nsw i32 %69, %71
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp sgt i32 %73, 5
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  br label %90

76:                                               ; preds = %62
  store i32 0, i32* %19, align 4
  br label %77

77:                                               ; preds = %86, %76
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %82, 119
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = shl i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  br label %77

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %75
  %91 = load i32*, i32** %10, align 8
  %92 = load i64, i64* %16, align 8
  %93 = add i64 %92, 4
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = call i64 @Test86MSByte(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %209

99:                                               ; preds = %90
  %100 = load i32, i32* %13, align 4
  %101 = ashr i32 %100, 1
  %102 = and i32 %101, 7
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* @x86_code.MASK_TO_ALLOWED_STATUS, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %209

107:                                              ; preds = %99
  %108 = load i32, i32* %13, align 4
  %109 = ashr i32 %108, 1
  %110 = icmp slt i32 %109, 16
  br i1 %110, label %111, label %209

111:                                              ; preds = %107
  %112 = load i32, i32* %17, align 4
  %113 = shl i32 %112, 24
  %114 = load i32*, i32** %10, align 8
  %115 = load i64, i64* %16, align 8
  %116 = add i64 %115, 3
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 16
  %120 = or i32 %113, %119
  %121 = load i32*, i32** %10, align 8
  %122 = load i64, i64* %16, align 8
  %123 = add i64 %122, 2
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 8
  %127 = or i32 %120, %126
  %128 = load i32*, i32** %10, align 8
  %129 = load i64, i64* %16, align 8
  %130 = add i64 %129, 1
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %127, %132
  store i32 %133, i32* %20, align 4
  br label %134

134:                                              ; preds = %111, %172
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i64, i64* %16, align 8
  %141 = trunc i64 %140 to i32
  %142 = add nsw i32 %139, %141
  %143 = add nsw i32 %142, 5
  %144 = add nsw i32 %138, %143
  store i32 %144, i32* %21, align 4
  br label %153

145:                                              ; preds = %134
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i64, i64* %16, align 8
  %149 = trunc i64 %148 to i32
  %150 = add nsw i32 %147, %149
  %151 = add nsw i32 %150, 5
  %152 = sub nsw i32 %146, %151
  store i32 %152, i32* %21, align 4
  br label %153

153:                                              ; preds = %145, %137
  %154 = load i32, i32* %13, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %180

157:                                              ; preds = %153
  %158 = load i32, i32* %13, align 4
  %159 = ashr i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* @x86_code.MASK_TO_BIT_NUMBER, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %22, align 4
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* %22, align 4
  %165 = mul nsw i32 %164, 8
  %166 = sub nsw i32 24, %165
  %167 = ashr i32 %163, %166
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %17, align 4
  %169 = call i64 @Test86MSByte(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %157
  br label %180

172:                                              ; preds = %157
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %22, align 4
  %175 = mul nsw i32 %174, 8
  %176 = sub nsw i32 32, %175
  %177 = shl i32 1, %176
  %178 = sub nsw i32 %177, 1
  %179 = xor i32 %173, %178
  store i32 %179, i32* %20, align 4
  br label %134

180:                                              ; preds = %171, %156
  %181 = load i32, i32* %21, align 4
  %182 = ashr i32 %181, 24
  %183 = and i32 %182, 1
  %184 = sub nsw i32 %183, 1
  %185 = xor i32 %184, -1
  %186 = load i32*, i32** %10, align 8
  %187 = load i64, i64* %16, align 8
  %188 = add i64 %187, 4
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %185, i32* %189, align 4
  %190 = load i32, i32* %21, align 4
  %191 = ashr i32 %190, 16
  %192 = load i32*, i32** %10, align 8
  %193 = load i64, i64* %16, align 8
  %194 = add i64 %193, 3
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %191, i32* %195, align 4
  %196 = load i32, i32* %21, align 4
  %197 = ashr i32 %196, 8
  %198 = load i32*, i32** %10, align 8
  %199 = load i64, i64* %16, align 8
  %200 = add i64 %199, 2
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %197, i32* %201, align 4
  %202 = load i32, i32* %21, align 4
  %203 = load i32*, i32** %10, align 8
  %204 = load i64, i64* %16, align 8
  %205 = add i64 %204, 1
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %202, i32* %206, align 4
  %207 = load i64, i64* %16, align 8
  %208 = add i64 %207, 5
  store i64 %208, i64* %16, align 8
  store i32 0, i32* %13, align 4
  br label %221

209:                                              ; preds = %107, %99, %90
  %210 = load i64, i64* %16, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %16, align 8
  %212 = load i32, i32* %13, align 4
  %213 = or i32 %212, 1
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %17, align 4
  %215 = call i64 @Test86MSByte(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %209
  %218 = load i32, i32* %13, align 4
  %219 = or i32 %218, 16
  store i32 %219, i32* %13, align 4
  br label %220

220:                                              ; preds = %217, %209
  br label %221

221:                                              ; preds = %220, %180
  br label %45

222:                                              ; preds = %45
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load i64, i64* %16, align 8
  store i64 %229, i64* %6, align 8
  br label %230

230:                                              ; preds = %222, %33
  %231 = load i64, i64* %6, align 8
  ret i64 %231
}

declare dso_local i64 @Test86MSByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
