; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_blowfish.c_blf_cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_blowfish.c_blf_cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blf_cbc_decrypt(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = getelementptr inbounds i32, i32* %17, i64 -16
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = getelementptr inbounds i32, i32* %22, i64 -8
  store i32* %23, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 8
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %129, %4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sge i32 %27, 8
  br i1 %28, label %29, label %132

29:                                               ; preds = %26
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 24
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %33, %37
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %38, %42
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %43, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 24
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = or i32 %51, %55
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %56, %60
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @Blowfish_decipher(i32* %66, i32* %9, i32* %10)
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %68, 24
  %70 = and i32 %69, 255
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 255
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, 255
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %87, 24
  %89 = and i32 %88, 255
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = ashr i32 %92, 16
  %94 = and i32 %93, 255
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %10, align 4
  %98 = ashr i32 %97, 8
  %99 = and i32 %98, 255
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 6
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, 255
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 7
  store i32 %103, i32* %105, align 4
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %121, %29
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %107, 8
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %119, %114
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %109
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %106

124:                                              ; preds = %106
  %125 = load i32*, i32** %11, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 -8
  store i32* %126, i32** %11, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 -8
  store i32* %128, i32** %7, align 8
  br label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %12, align 4
  %131 = sub nsw i32 %130, 8
  store i32 %131, i32* %12, align 4
  br label %26

132:                                              ; preds = %26
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 24
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 16
  %141 = or i32 %136, %140
  %142 = load i32*, i32** %7, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 8
  %146 = or i32 %141, %145
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %146, %149
  store i32 %150, i32* %9, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 24
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 5
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 16
  %159 = or i32 %154, %158
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 6
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 8
  %164 = or i32 %159, %163
  %165 = load i32*, i32** %7, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 7
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %164, %167
  store i32 %168, i32* %10, align 4
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 @Blowfish_decipher(i32* %169, i32* %9, i32* %10)
  %171 = load i32, i32* %9, align 4
  %172 = ashr i32 %171, 24
  %173 = and i32 %172, 255
  %174 = load i32*, i32** %7, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %9, align 4
  %177 = ashr i32 %176, 16
  %178 = and i32 %177, 255
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %9, align 4
  %182 = ashr i32 %181, 8
  %183 = and i32 %182, 255
  %184 = load i32*, i32** %7, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* %9, align 4
  %187 = and i32 %186, 255
  %188 = load i32*, i32** %7, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %10, align 4
  %191 = ashr i32 %190, 24
  %192 = and i32 %191, 255
  %193 = load i32*, i32** %7, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 4
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* %10, align 4
  %196 = ashr i32 %195, 16
  %197 = and i32 %196, 255
  %198 = load i32*, i32** %7, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 5
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %10, align 4
  %201 = ashr i32 %200, 8
  %202 = and i32 %201, 255
  %203 = load i32*, i32** %7, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 6
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %10, align 4
  %206 = and i32 %205, 255
  %207 = load i32*, i32** %7, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 7
  store i32 %206, i32* %208, align 4
  store i32 0, i32* %13, align 4
  br label %209

209:                                              ; preds = %224, %132
  %210 = load i32, i32* %13, align 4
  %211 = icmp slt i32 %210, 8
  br i1 %211, label %212, label %227

212:                                              ; preds = %209
  %213 = load i32*, i32** %6, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = xor i32 %222, %217
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %212
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %13, align 4
  br label %209

227:                                              ; preds = %209
  ret void
}

declare dso_local i32 @Blowfish_decipher(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
