; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_chacha20_poly1305.c_chacha_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_chacha20_poly1305.c_chacha_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CHACHA_BLK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @chacha_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha_cipher(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call %struct.TYPE_5__* @data(i32* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %10, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %85

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %31, %21
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %28 = icmp ult i32 %26, %27
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %50

31:                                               ; preds = %29
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %35, %43
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  store i8 %45, i8* %46, align 1
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %9, align 8
  br label %22

50:                                               ; preds = %29
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %225

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %61
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %76, %61
  br label %84

84:                                               ; preds = %83, %57
  br label %85

85:                                               ; preds = %84, %4
  %86 = load i64, i64* %9, align 8
  %87 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %88 = zext i32 %87 to i64
  %89 = urem i64 %86, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %9, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %9, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %167, %85
  %101 = load i64, i64* %9, align 8
  %102 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %103 = zext i32 %102 to i64
  %104 = icmp uge i64 %101, %103
  br i1 %104, label %105, label %168

105:                                              ; preds = %100
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %108 = zext i32 %107 to i64
  %109 = udiv i64 %106, %108
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %14, align 8
  %111 = icmp ugt i64 %110, 268435456
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  store i64 268435456, i64* %14, align 8
  br label %113

113:                                              ; preds = %112, %105
  %114 = load i64, i64* %14, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i32, i32* %13, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %14, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load i32, i32* %13, align 4
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %14, align 8
  %126 = sub i64 %125, %124
  store i64 %126, i64* %14, align 8
  store i32 0, i32* %13, align 4
  br label %127

127:                                              ; preds = %122, %113
  %128 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %129 = zext i32 %128 to i64
  %130 = load i64, i64* %14, align 8
  %131 = mul i64 %130, %129
  store i64 %131, i64* %14, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i64, i64* %14, align 8
  %135 = trunc i64 %134 to i32
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @ChaCha20_ctr32(i8* %132, i8* %133, i32 %135, i32 %139, i32* %142)
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* %9, align 8
  %146 = sub i64 %145, %144
  store i64 %146, i64* %9, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  store i8* %149, i8** %8, align 8
  %150 = load i64, i64* %14, align 8
  %151 = load i8*, i8** %7, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 %150
  store i8* %152, i8** %7, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %153, i32* %157, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %127
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %160, %127
  br label %100

168:                                              ; preds = %100
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %224

171:                                              ; preds = %168
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @memset(i32* %174, i32 0, i32 8)
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = bitcast i32* %178 to i8*
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = bitcast i32* %182 to i8*
  %184 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @ChaCha20_ctr32(i8* %179, i8* %183, i32 %184, i32 %188, i32* %191)
  store i32 0, i32* %11, align 4
  br label %193

193:                                              ; preds = %217, %171
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp ult i32 %194, %195
  br i1 %196, label %197, label %220

197:                                              ; preds = %193
  %198 = load i8*, i8** %8, align 8
  %199 = load i32, i32* %11, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = xor i32 %203, %210
  %212 = trunc i32 %211 to i8
  %213 = load i8*, i8** %7, align 8
  %214 = load i32, i32* %11, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  store i8 %212, i8* %216, align 1
  br label %217

217:                                              ; preds = %197
  %218 = load i32, i32* %11, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %193

220:                                              ; preds = %193
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  br label %224

224:                                              ; preds = %220, %168
  store i32 1, i32* %5, align 4
  br label %225

225:                                              ; preds = %224, %56
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local %struct.TYPE_5__* @data(i32*) #1

declare dso_local i32 @ChaCha20_ctr32(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
