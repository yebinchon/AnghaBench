; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_ocb128.c_CRYPTO_ocb128_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_ocb128.c_CRYPTO_ocb128_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i32, i32 (i8*, i8*, i32)*, %struct.TYPE_11__, i64, i32 (i8*, i8*, i64, i32, i64, i32*, i8**, i32*)* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_ocb128_encrypt(%struct.TYPE_12__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = udiv i64 %19, 16
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %21, %25
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %4
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %84

33:                                               ; preds = %29
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 5
  %36 = load i32 (i8*, i8*, i64, i32, i64, i32*, i8**, i32*)*, i32 (i8*, i8*, i64, i32, i64, i32*, i8**, i32*)** %35, align 8
  %37 = icmp ne i32 (i8*, i8*, i64, i32, i64, i32*, i8**, i32*)* %36, null
  br i1 %37, label %38, label %84

38:                                               ; preds = %33
  store i64 0, i64* %14, align 8
  %39 = load i64, i64* %11, align 8
  store i64 %39, i64* %15, align 8
  br label %40

40:                                               ; preds = %44, %38
  %41 = load i64, i64* %15, align 8
  %42 = lshr i64 %41, 1
  store i64 %42, i64* %15, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %14, align 8
  br label %40

47:                                               ; preds = %40
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call %struct.TYPE_11__* @ocb_lookup_l(%struct.TYPE_12__* %48, i64 %49)
  %51 = icmp eq %struct.TYPE_11__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %221

53:                                               ; preds = %47
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 5
  %56 = load i32 (i8*, i8*, i64, i32, i64, i32*, i8**, i32*)*, i32 (i8*, i8*, i64, i32, i64, i32*, i8**, i32*)** %55, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to [16 x i8]*
  %77 = bitcast [16 x i8]* %76 to i8**
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 %56(i8* %57, i8* %58, i64 %59, i32 %62, i64 %67, i32* %72, i8** %77, i32* %82)
  br label %157

84:                                               ; preds = %33, %29, %4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %10, align 8
  br label %90

90:                                               ; preds = %153, %84
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ule i64 %91, %92
  br i1 %93, label %94, label %156

94:                                               ; preds = %90
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @ocb_ntz(i64 %96)
  %98 = call %struct.TYPE_11__* @ocb_lookup_l(%struct.TYPE_12__* %95, i64 %97)
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %16, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %100 = icmp eq %struct.TYPE_11__* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %221

102:                                              ; preds = %94
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = call i32 @ocb_block16_xor(%struct.TYPE_11__* %105, %struct.TYPE_11__* %106, %struct.TYPE_11__* %109)
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = bitcast i32* %112 to i8*
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @memcpy(i8* %113, i8* %114, i64 16)
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 16
  store i8* %117, i8** %7, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = call i32 @ocb_block16_xor(%struct.TYPE_11__* %17, %struct.TYPE_11__* %120, %struct.TYPE_11__* %123)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = call i32 @ocb_block16_xor(%struct.TYPE_11__* %127, %struct.TYPE_11__* %17, %struct.TYPE_11__* %17)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = bitcast i32* %133 to i8*
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = bitcast i32* %136 to i8*
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 %131(i8* %134, i8* %137, i32 %140)
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = call i32 @ocb_block16_xor(%struct.TYPE_11__* %144, %struct.TYPE_11__* %17, %struct.TYPE_11__* %17)
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = bitcast i32* %148 to i8*
  %150 = call i32 @memcpy(i8* %146, i8* %149, i64 16)
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 16
  store i8* %152, i8** %8, align 8
  br label %153

153:                                              ; preds = %102
  %154 = load i64, i64* %10, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %10, align 8
  br label %90

156:                                              ; preds = %90
  br label %157

157:                                              ; preds = %156, %53
  %158 = load i64, i64* %9, align 8
  %159 = urem i64 %158, 16
  store i64 %159, i64* %13, align 8
  %160 = load i64, i64* %13, align 8
  %161 = icmp ugt i64 %160, 0
  br i1 %161, label %162, label %216

162:                                              ; preds = %157
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = call i32 @ocb_block16_xor(%struct.TYPE_11__* %165, %struct.TYPE_11__* %167, %struct.TYPE_11__* %170)
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %173, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = bitcast i32* %179 to i8*
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = bitcast i32* %182 to i8*
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call i32 %174(i8* %180, i8* %183, i32 %186)
  %188 = load i8*, i8** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = bitcast i32* %190 to i8*
  %192 = load i64, i64* %13, align 8
  %193 = load i8*, i8** %8, align 8
  %194 = call i32 @ocb_block_xor(i8* %188, i8* %191, i64 %192, i8* %193)
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = bitcast i32* %196 to i8*
  %198 = call i32 @memset(i8* %197, i32 0, i32 16)
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = bitcast i32* %200 to i8*
  %202 = load i8*, i8** %7, align 8
  %203 = load i64, i64* %13, align 8
  %204 = call i32 @memcpy(i8* %201, i8* %202, i64 %203)
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* %13, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32 128, i32* %208, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = call i32 @ocb_block16_xor(%struct.TYPE_11__* %18, %struct.TYPE_11__* %211, %struct.TYPE_11__* %214)
  br label %216

216:                                              ; preds = %162, %157
  %217 = load i64, i64* %11, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  store i64 %217, i64* %220, align 8
  store i32 1, i32* %5, align 4
  br label %221

221:                                              ; preds = %216, %101, %52
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local %struct.TYPE_11__* @ocb_lookup_l(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @ocb_ntz(i64) #1

declare dso_local i32 @ocb_block16_xor(%struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ocb_block_xor(i8*, i8*, i64, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
