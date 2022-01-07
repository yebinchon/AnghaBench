; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_mont.c_bn_from_montgomery_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_mont.c_bn_from_montgomery_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_8__ }

@BN_FLG_FIXED_TOP = common dso_local global i32 0, align 4
@BN_MASK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_7__*)* @bn_from_montgomery_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bn_from_montgomery_word(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %8, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  store i32 1, i32* %4, align 4
  br label %216

29:                                               ; preds = %3
  %30 = load i32, i32* %15, align 4
  %31 = mul nsw i32 2, %30
  store i32 %31, i32* %16, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = load i32, i32* %16, align 4
  %34 = call i32* @bn_wexpand(%struct.TYPE_8__* %32, i32 %33)
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %216

37:                                               ; preds = %29
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = xor i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %10, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %11, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %71, %37
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = sub i32 %59, %60
  %62 = lshr i32 %61, 31
  %63 = sub i32 0, %62
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %64
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @BN_FLG_FIXED_TOP, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %88

88:                                               ; preds = %140, %74
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %145

92:                                               ; preds = %88
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %15, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %12, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* @BN_MASK2, align 4
  %102 = and i32 %100, %101
  %103 = call i32 @bn_mul_add_words(i32* %93, i32* %94, i32 %95, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %106, %111
  %113 = load i32, i32* @BN_MASK2, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %115, %120
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %14, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp sle i32 %125, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %14, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  br label %140

140:                                              ; preds = %92
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  %143 = load i32*, i32** %11, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %11, align 8
  br label %88

145:                                              ; preds = %88
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = load i32, i32* %15, align 4
  %148 = call i32* @bn_wexpand(%struct.TYPE_8__* %146, i32 %147)
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %216

151:                                              ; preds = %145
  %152 = load i32, i32* %15, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @BN_FLG_FIXED_TOP, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  store i32* %167, i32** %11, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32* %173, i32** %9, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %15, align 4
  %178 = call i64 @bn_sub_words(i32* %174, i32* %175, i32* %176, i32 %177)
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = sub nsw i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %183

183:                                              ; preds = %212, %151
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %215

187:                                              ; preds = %183
  %188 = load i32, i32* %14, align 4
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %188, %193
  %195 = load i32, i32* %14, align 4
  %196 = xor i32 %195, -1
  %197 = load i32*, i32** %11, align 8
  %198 = load i32, i32* %17, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %196, %201
  %203 = or i32 %194, %202
  %204 = load i32*, i32** %11, align 8
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %203, i32* %207, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 0, i32* %211, align 4
  br label %212

212:                                              ; preds = %187
  %213 = load i32, i32* %17, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %17, align 4
  br label %183

215:                                              ; preds = %183
  store i32 1, i32* %4, align 4
  br label %216

216:                                              ; preds = %215, %150, %36, %26
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32* @bn_wexpand(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bn_mul_add_words(i32*, i32*, i32, i32) #1

declare dso_local i64 @bn_sub_words(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
