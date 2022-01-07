; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/des/extr_des_setkey.c_des_set_key_unchecked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/des/extr_des_setkey.c_des_set_key_unchecked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@des_set_key_unchecked.shifts2 = internal global [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], align 16
@ITERATIONS = common dso_local global i32 0, align 4
@des_skb = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @des_set_key_unchecked(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32* %17, i32** %11, align 8
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @c2l(i8* %19, i32 %20)
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @c2l(i8* %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @PERM_OP(i32 %25, i32 %26, i32 %27, i32 4, i32 252645135)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @HPERM_OP(i32 %29, i32 %30, i32 -2, i32 -859045888)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @HPERM_OP(i32 %32, i32 %33, i32 -2, i32 -859045888)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @PERM_OP(i32 %35, i32 %36, i32 %37, i32 1, i32 1431655765)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @PERM_OP(i32 %39, i32 %40, i32 %41, i32 8, i32 16711935)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @PERM_OP(i32 %43, i32 %44, i32 %45, i32 1, i32 1431655765)
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = and i64 %48, 255
  %50 = shl i64 %49, 16
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = and i64 %52, 65280
  %54 = or i64 %50, %53
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = and i64 %56, 16711680
  %58 = ashr i64 %57, 16
  %59 = or i64 %54, %58
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = and i64 %61, 4026531840
  %63 = ashr i64 %62, 4
  %64 = or i64 %59, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %67, 268435455
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %242, %2
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @ITERATIONS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %245

74:                                               ; preds = %70
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* @des_set_key_unchecked.shifts2, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 2
  %83 = load i32, i32* %5, align 4
  %84 = shl i32 %83, 26
  %85 = or i32 %82, %84
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = ashr i32 %86, 2
  %88 = load i32, i32* %6, align 4
  %89 = shl i32 %88, 26
  %90 = or i32 %87, %89
  store i32 %90, i32* %6, align 4
  br label %102

91:                                               ; preds = %74
  %92 = load i32, i32* %5, align 4
  %93 = ashr i32 %92, 1
  %94 = load i32, i32* %5, align 4
  %95 = shl i32 %94, 27
  %96 = or i32 %93, %95
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = ashr i32 %97, 1
  %99 = load i32, i32* %6, align 4
  %100 = shl i32 %99, 27
  %101 = or i32 %98, %100
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %91, %80
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = and i64 %104, 268435455
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = and i64 %108, 268435455
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %6, align 4
  %111 = load i32**, i32*** @des_skb, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, 63
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32**, i32*** @des_skb, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = ashr i32 %122, 6
  %124 = and i32 %123, 3
  %125 = load i32, i32* %5, align 4
  %126 = ashr i32 %125, 7
  %127 = and i32 %126, 60
  %128 = or i32 %124, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %121, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %118, %131
  %133 = load i32**, i32*** @des_skb, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = ashr i32 %136, 13
  %138 = and i32 %137, 15
  %139 = load i32, i32* %5, align 4
  %140 = ashr i32 %139, 14
  %141 = and i32 %140, 48
  %142 = or i32 %138, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %135, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %132, %145
  %147 = load i32**, i32*** @des_skb, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 3
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = ashr i32 %150, 20
  %152 = and i32 %151, 1
  %153 = load i32, i32* %5, align 4
  %154 = ashr i32 %153, 21
  %155 = and i32 %154, 6
  %156 = or i32 %152, %155
  %157 = load i32, i32* %5, align 4
  %158 = ashr i32 %157, 22
  %159 = and i32 %158, 56
  %160 = or i32 %156, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %149, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %146, %163
  store i32 %164, i32* %8, align 4
  %165 = load i32**, i32*** @des_skb, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 4
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = and i32 %168, 63
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32**, i32*** @des_skb, align 8
  %174 = getelementptr inbounds i32*, i32** %173, i64 5
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = ashr i32 %176, 7
  %178 = and i32 %177, 3
  %179 = load i32, i32* %6, align 4
  %180 = ashr i32 %179, 8
  %181 = and i32 %180, 60
  %182 = or i32 %178, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %175, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %172, %185
  %187 = load i32**, i32*** @des_skb, align 8
  %188 = getelementptr inbounds i32*, i32** %187, i64 6
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = ashr i32 %190, 15
  %192 = and i32 %191, 63
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %186, %195
  %197 = load i32**, i32*** @des_skb, align 8
  %198 = getelementptr inbounds i32*, i32** %197, i64 7
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = ashr i32 %200, 21
  %202 = and i32 %201, 15
  %203 = load i32, i32* %6, align 4
  %204 = ashr i32 %203, 22
  %205 = and i32 %204, 48
  %206 = or i32 %202, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %199, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %196, %209
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = shl i32 %211, 16
  %213 = sext i32 %212 to i64
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = and i64 %215, 65535
  %217 = or i64 %213, %216
  %218 = and i64 %217, 4294967295
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @ROTATE(i32 %220, i32 30)
  %222 = sext i32 %221 to i64
  %223 = and i64 %222, 4294967295
  %224 = trunc i64 %223 to i32
  %225 = load i32*, i32** %11, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %11, align 8
  store i32 %224, i32* %225, align 4
  %227 = load i32, i32* %8, align 4
  %228 = ashr i32 %227, 16
  %229 = sext i32 %228 to i64
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = and i64 %231, 4294901760
  %233 = or i64 %229, %232
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @ROTATE(i32 %235, i32 26)
  %237 = sext i32 %236 to i64
  %238 = and i64 %237, 4294967295
  %239 = trunc i64 %238 to i32
  %240 = load i32*, i32** %11, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %11, align 8
  store i32 %239, i32* %240, align 4
  br label %242

242:                                              ; preds = %102
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %12, align 4
  br label %70

245:                                              ; preds = %70
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
