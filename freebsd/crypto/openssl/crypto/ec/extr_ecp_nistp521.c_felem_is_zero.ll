; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp521.c_felem_is_zero.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp521.c_felem_is_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bottom57bits = common dso_local global i32 0, align 4
@bottom58bits = common dso_local global i32 0, align 4
@kPrime = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @felem_is_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @felem_is_zero(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @felem_assign(i32* %6, i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 8
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 57
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @bottom57bits, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 58
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @bottom58bits, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 58
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @bottom58bits, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 58
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @bottom58bits, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 58
  %65 = load i32*, i32** %3, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @bottom58bits, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 58
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @bottom58bits, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 58
  %91 = load i32*, i32** %3, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @bottom58bits, align 4
  %96 = load i32*, i32** %3, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 5
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 6
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 58
  %104 = load i32*, i32** %3, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 7
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* @bottom58bits, align 4
  %109 = load i32*, i32** %3, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 6
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32*, i32** %3, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 7
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 58
  %117 = load i32*, i32** %3, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 8
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* @bottom58bits, align 4
  %122 = load i32*, i32** %3, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 7
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 4
  store i32 0, i32* %4, align 4
  %126 = load i32*, i32** %3, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %4, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %4, align 4
  %131 = load i32*, i32** %3, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %4, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %4, align 4
  %136 = load i32*, i32** %3, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %4, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %4, align 4
  %141 = load i32*, i32** %3, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %4, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %4, align 4
  %146 = load i32*, i32** %3, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 4
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %4, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %4, align 4
  %151 = load i32*, i32** %3, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 5
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %4, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %4, align 4
  %156 = load i32*, i32** %3, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 6
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %4, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %4, align 4
  %161 = load i32*, i32** %3, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 7
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %4, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %4, align 4
  %166 = load i32*, i32** %3, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %4, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = ashr i32 %173, 63
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %4, align 4
  %176 = load i32*, i32** %3, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** @kPrime, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %178, %181
  store i32 %182, i32* %5, align 4
  %183 = load i32*, i32** %3, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** @kPrime, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = xor i32 %185, %188
  %190 = load i32, i32* %5, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %5, align 4
  %192 = load i32*, i32** %3, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** @kPrime, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %196, align 4
  %198 = xor i32 %194, %197
  %199 = load i32, i32* %5, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %5, align 4
  %201 = load i32*, i32** %3, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** @kPrime, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 3
  %206 = load i32, i32* %205, align 4
  %207 = xor i32 %203, %206
  %208 = load i32, i32* %5, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %5, align 4
  %210 = load i32*, i32** %3, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 4
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** @kPrime, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 4
  %215 = load i32, i32* %214, align 4
  %216 = xor i32 %212, %215
  %217 = load i32, i32* %5, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %5, align 4
  %219 = load i32*, i32** %3, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 5
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** @kPrime, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 5
  %224 = load i32, i32* %223, align 4
  %225 = xor i32 %221, %224
  %226 = load i32, i32* %5, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %5, align 4
  %228 = load i32*, i32** %3, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 6
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** @kPrime, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 6
  %233 = load i32, i32* %232, align 4
  %234 = xor i32 %230, %233
  %235 = load i32, i32* %5, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %5, align 4
  %237 = load i32*, i32** %3, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 7
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** @kPrime, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 7
  %242 = load i32, i32* %241, align 4
  %243 = xor i32 %239, %242
  %244 = load i32, i32* %5, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %5, align 4
  %246 = load i32*, i32** %3, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 8
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** @kPrime, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 8
  %251 = load i32, i32* %250, align 4
  %252 = xor i32 %248, %251
  %253 = load i32, i32* %5, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %5, align 4
  %255 = load i32, i32* %5, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %5, align 4
  %257 = load i32, i32* %5, align 4
  %258 = ashr i32 %257, 63
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %5, align 4
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* %4, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %4, align 4
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i32 @felem_assign(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
