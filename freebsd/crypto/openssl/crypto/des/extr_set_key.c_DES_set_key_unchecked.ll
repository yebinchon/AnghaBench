; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_set_key.c_DES_set_key_unchecked.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_set_key.c_DES_set_key_unchecked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32*, i32 }
%struct.TYPE_4__ = type { i32* }

@DES_set_key_unchecked.shifts2 = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], align 16
@ITERATIONS = common dso_local global i32 0, align 4
@des_skb = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_set_key_unchecked(i8** %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32* %18, i32** %11, align 8
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @c2l(i8* %22, i32 %23)
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @c2l(i8* %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @PERM_OP(i32 %28, i32 %29, i32 %30, i32 4, i32 252645135)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @HPERM_OP(i32 %32, i32 %33, i32 -2, i32 -859045888)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @HPERM_OP(i32 %35, i32 %36, i32 -2, i32 -859045888)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @PERM_OP(i32 %38, i32 %39, i32 %40, i32 1, i32 1431655765)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @PERM_OP(i32 %42, i32 %43, i32 %44, i32 8, i32 16711935)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @PERM_OP(i32 %46, i32 %47, i32 %48, i32 1, i32 1431655765)
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = and i64 %51, 255
  %53 = shl i64 %52, 16
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = and i64 %55, 65280
  %57 = or i64 %53, %56
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = and i64 %59, 16711680
  %61 = ashr i64 %60, 16
  %62 = or i64 %57, %61
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = and i64 %64, 4026531840
  %66 = ashr i64 %65, 4
  %67 = or i64 %62, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = and i64 %70, 268435455
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %245, %2
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @ITERATIONS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %248

77:                                               ; preds = %73
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* @DES_set_key_unchecked.shifts2, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4
  %85 = ashr i32 %84, 2
  %86 = load i32, i32* %5, align 4
  %87 = shl i32 %86, 26
  %88 = or i32 %85, %87
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = ashr i32 %89, 2
  %91 = load i32, i32* %6, align 4
  %92 = shl i32 %91, 26
  %93 = or i32 %90, %92
  store i32 %93, i32* %6, align 4
  br label %105

94:                                               ; preds = %77
  %95 = load i32, i32* %5, align 4
  %96 = ashr i32 %95, 1
  %97 = load i32, i32* %5, align 4
  %98 = shl i32 %97, 27
  %99 = or i32 %96, %98
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = ashr i32 %100, 1
  %102 = load i32, i32* %6, align 4
  %103 = shl i32 %102, 27
  %104 = or i32 %101, %103
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %94, %83
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = and i64 %107, 268435455
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = and i64 %111, 268435455
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %6, align 4
  %114 = load i32**, i32*** @des_skb, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, 63
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32**, i32*** @des_skb, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i64 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = ashr i32 %125, 6
  %127 = and i32 %126, 3
  %128 = load i32, i32* %5, align 4
  %129 = ashr i32 %128, 7
  %130 = and i32 %129, 60
  %131 = or i32 %127, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %124, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %121, %134
  %136 = load i32**, i32*** @des_skb, align 8
  %137 = getelementptr inbounds i32*, i32** %136, i64 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = ashr i32 %139, 13
  %141 = and i32 %140, 15
  %142 = load i32, i32* %5, align 4
  %143 = ashr i32 %142, 14
  %144 = and i32 %143, 48
  %145 = or i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %138, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %135, %148
  %150 = load i32**, i32*** @des_skb, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = ashr i32 %153, 20
  %155 = and i32 %154, 1
  %156 = load i32, i32* %5, align 4
  %157 = ashr i32 %156, 21
  %158 = and i32 %157, 6
  %159 = or i32 %155, %158
  %160 = load i32, i32* %5, align 4
  %161 = ashr i32 %160, 22
  %162 = and i32 %161, 56
  %163 = or i32 %159, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %152, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %149, %166
  store i32 %167, i32* %8, align 4
  %168 = load i32**, i32*** @des_skb, align 8
  %169 = getelementptr inbounds i32*, i32** %168, i64 4
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = and i32 %171, 63
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32**, i32*** @des_skb, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 5
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %6, align 4
  %180 = ashr i32 %179, 7
  %181 = and i32 %180, 3
  %182 = load i32, i32* %6, align 4
  %183 = ashr i32 %182, 8
  %184 = and i32 %183, 60
  %185 = or i32 %181, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %178, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %175, %188
  %190 = load i32**, i32*** @des_skb, align 8
  %191 = getelementptr inbounds i32*, i32** %190, i64 6
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = ashr i32 %193, 15
  %195 = and i32 %194, 63
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %189, %198
  %200 = load i32**, i32*** @des_skb, align 8
  %201 = getelementptr inbounds i32*, i32** %200, i64 7
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = ashr i32 %203, 21
  %205 = and i32 %204, 15
  %206 = load i32, i32* %6, align 4
  %207 = ashr i32 %206, 22
  %208 = and i32 %207, 48
  %209 = or i32 %205, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %202, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %199, %212
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %7, align 4
  %215 = shl i32 %214, 16
  %216 = sext i32 %215 to i64
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = and i64 %218, 65535
  %220 = or i64 %216, %219
  %221 = and i64 %220, 4294967295
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @ROTATE(i32 %223, i32 30)
  %225 = sext i32 %224 to i64
  %226 = and i64 %225, 4294967295
  %227 = trunc i64 %226 to i32
  %228 = load i32*, i32** %11, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %11, align 8
  store i32 %227, i32* %228, align 4
  %230 = load i32, i32* %8, align 4
  %231 = ashr i32 %230, 16
  %232 = sext i32 %231 to i64
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = and i64 %234, 4294901760
  %236 = or i64 %232, %235
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %9, align 4
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @ROTATE(i32 %238, i32 26)
  %240 = sext i32 %239 to i64
  %241 = and i64 %240, 4294967295
  %242 = trunc i64 %241 to i32
  %243 = load i32*, i32** %11, align 8
  %244 = getelementptr inbounds i32, i32* %243, i32 1
  store i32* %244, i32** %11, align 8
  store i32 %242, i32* %243, align 4
  br label %245

245:                                              ; preds = %105
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %12, align 4
  br label %73

248:                                              ; preds = %73
  ret void
}

declare dso_local i32 @c2l(i8*, i32) #1

declare dso_local i32 @PERM_OP(i32, i32, i32, i32, i32) #1

declare dso_local i32 @HPERM_OP(i32, i32, i32, i32) #1

declare dso_local i32 @ROTATE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
