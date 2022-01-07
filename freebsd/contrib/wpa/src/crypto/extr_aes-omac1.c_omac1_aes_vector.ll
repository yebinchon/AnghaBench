; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-omac1.c_omac1_aes_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-omac1.c_omac1_aes_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omac1_aes_vector(i32* %0, i64 %1, i64 %2, i32** %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32** %3, i32*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %25 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %29 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  %32 = call i64 (...) @TEST_FAIL()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %212

35:                                               ; preds = %6
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i8* @aes_encrypt_init(i32* %36, i64 %37)
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %212

42:                                               ; preds = %35
  %43 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %44 = call i32 @os_memset(i32* %28, i32 0, i32 %43)
  store i64 0, i64* %23, align 8
  store i64 0, i64* %21, align 8
  br label %45

45:                                               ; preds = %56, %42
  %46 = load i64, i64* %21, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i64*, i64** %12, align 8
  %51 = load i64, i64* %21, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %23, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %23, align 8
  br label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %21, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %21, align 8
  br label %45

59:                                               ; preds = %45
  %60 = load i64, i64* %23, align 8
  store i64 %60, i64* %22, align 8
  store i64 0, i64* %21, align 8
  %61 = load i32**, i32*** %11, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %18, align 8
  %64 = load i32*, i32** %18, align 8
  %65 = load i64*, i64** %12, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32* %68, i32** %19, align 8
  br label %69

69:                                               ; preds = %128, %59
  %70 = load i64, i64* %22, align 8
  %71 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp uge i64 %70, %72
  br i1 %73, label %74, label %133

74:                                               ; preds = %69
  store i64 0, i64* %20, align 8
  br label %75

75:                                               ; preds = %117, %74
  %76 = load i64, i64* %20, align 8
  %77 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %120

80:                                               ; preds = %75
  %81 = load i32*, i32** %18, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %18, align 8
  %83 = load i32, i32* %81, align 4
  %84 = load i64, i64* %20, align 8
  %85 = getelementptr inbounds i32, i32* %28, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32*, i32** %18, align 8
  %89 = load i32*, i32** %19, align 8
  %90 = icmp uge i32* %88, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %80
  %92 = load i64, i64* %20, align 8
  %93 = add i64 %92, 1
  %94 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i64, i64* %22, align 8
  %99 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp eq i64 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %120

103:                                              ; preds = %97, %91
  %104 = load i64, i64* %21, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %21, align 8
  %106 = load i32**, i32*** %11, align 8
  %107 = load i64, i64* %21, align 8
  %108 = getelementptr inbounds i32*, i32** %106, i64 %107
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %18, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = load i64*, i64** %12, align 8
  %112 = load i64, i64* %21, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  store i32* %115, i32** %19, align 8
  br label %116

116:                                              ; preds = %103, %80
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %20, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %20, align 8
  br label %75

120:                                              ; preds = %102, %75
  %121 = load i64, i64* %22, align 8
  %122 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp ugt i64 %121, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i8*, i8** %14, align 8
  %127 = call i32 @aes_encrypt(i8* %126, i32* %28, i32* %28)
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %22, align 8
  %132 = sub i64 %131, %130
  store i64 %132, i64* %22, align 8
  br label %69

133:                                              ; preds = %69
  %134 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %135 = call i32 @os_memset(i32* %31, i32 0, i32 %134)
  %136 = load i8*, i8** %14, align 8
  %137 = call i32 @aes_encrypt(i8* %136, i32* %31, i32* %31)
  %138 = call i32 @gf_mulx(i32* %31)
  %139 = load i64, i64* %22, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %133
  %142 = load i64, i64* %23, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %189

144:                                              ; preds = %141, %133
  store i64 0, i64* %20, align 8
  br label %145

145:                                              ; preds = %180, %144
  %146 = load i64, i64* %20, align 8
  %147 = load i64, i64* %22, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %183

149:                                              ; preds = %145
  %150 = load i32*, i32** %18, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %18, align 8
  %152 = load i32, i32* %150, align 4
  %153 = load i64, i64* %20, align 8
  %154 = getelementptr inbounds i32, i32* %28, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = xor i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load i32*, i32** %18, align 8
  %158 = load i32*, i32** %19, align 8
  %159 = icmp uge i32* %157, %158
  br i1 %159, label %160, label %179

160:                                              ; preds = %149
  %161 = load i64, i64* %20, align 8
  %162 = add i64 %161, 1
  %163 = load i64, i64* %22, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %183

166:                                              ; preds = %160
  %167 = load i64, i64* %21, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %21, align 8
  %169 = load i32**, i32*** %11, align 8
  %170 = load i64, i64* %21, align 8
  %171 = getelementptr inbounds i32*, i32** %169, i64 %170
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %18, align 8
  %173 = load i32*, i32** %18, align 8
  %174 = load i64*, i64** %12, align 8
  %175 = load i64, i64* %21, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  store i32* %178, i32** %19, align 8
  br label %179

179:                                              ; preds = %166, %149
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %20, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %20, align 8
  br label %145

183:                                              ; preds = %165, %145
  %184 = load i64, i64* %22, align 8
  %185 = getelementptr inbounds i32, i32* %28, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = xor i32 %186, 128
  store i32 %187, i32* %185, align 4
  %188 = call i32 @gf_mulx(i32* %31)
  br label %189

189:                                              ; preds = %183, %141
  store i64 0, i64* %20, align 8
  br label %190

190:                                              ; preds = %203, %189
  %191 = load i64, i64* %20, align 8
  %192 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %193 = sext i32 %192 to i64
  %194 = icmp ult i64 %191, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %190
  %196 = load i64, i64* %20, align 8
  %197 = getelementptr inbounds i32, i32* %28, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i64, i64* %20, align 8
  %200 = getelementptr inbounds i32, i32* %31, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = xor i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %195
  %204 = load i64, i64* %20, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %20, align 8
  br label %190

206:                                              ; preds = %190
  %207 = load i8*, i8** %14, align 8
  %208 = load i32*, i32** %13, align 8
  %209 = call i32 @aes_encrypt(i8* %207, i32* %31, i32* %208)
  %210 = load i8*, i8** %14, align 8
  %211 = call i32 @aes_encrypt_deinit(i8* %210)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %212

212:                                              ; preds = %206, %41, %34
  %213 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %213)
  %214 = load i32, i32* %7, align 4
  ret i32 %214
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @TEST_FAIL(...) #2

declare dso_local i8* @aes_encrypt_init(i32*, i64) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @aes_encrypt(i8*, i32*, i32*) #2

declare dso_local i32 @gf_mulx(i32*) #2

declare dso_local i32 @aes_encrypt_deinit(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
