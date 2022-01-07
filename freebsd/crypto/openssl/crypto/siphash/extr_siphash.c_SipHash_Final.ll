; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/siphash/extr_siphash.c_SipHash_Final.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/siphash/extr_siphash.c_SipHash_Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32* }

@SIPROUND = common dso_local global i32 0, align 4
@SIPHASH_MAX_DIGEST_SIZE = common dso_local global i64 0, align 8
@SIPHASH_MIN_DIGEST_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SipHash_Final(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %16, 56
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %188

36:                                               ; preds = %3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %103 [
    i32 7, label %40
    i32 6, label %49
    i32 5, label %58
    i32 4, label %67
    i32 3, label %76
    i32 2, label %85
    i32 1, label %94
    i32 0, label %102
  ]

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 9
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 6
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 48
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %36, %40
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 9
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 40
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %36, %49
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 9
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 32
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %36, %58
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 9
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 24
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %36, %67
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 9
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 16
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %36, %76
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 9
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 8
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %36, %85
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 9
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %36, %94
  br label %103

103:                                              ; preds = %36, %102
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %13, align 4
  %106 = xor i32 %105, %104
  store i32 %106, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %115, %103
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i32, i32* @SIPROUND, align 4
  br label %115

115:                                              ; preds = %113
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %107

118:                                              ; preds = %107
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = xor i32 %120, %119
  store i32 %121, i32* %10, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SIPHASH_MAX_DIGEST_SIZE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load i32, i32* %12, align 4
  %129 = xor i32 %128, 238
  store i32 %129, i32* %12, align 4
  br label %133

130:                                              ; preds = %118
  %131 = load i32, i32* %12, align 4
  %132 = xor i32 %131, 255
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %130, %127
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %142, %133
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load i32, i32* @SIPROUND, align 4
  br label %142

142:                                              ; preds = %140
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %134

145:                                              ; preds = %134
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = xor i32 %146, %147
  %149 = load i32, i32* %12, align 4
  %150 = xor i32 %148, %149
  %151 = load i32, i32* %13, align 4
  %152 = xor i32 %150, %151
  store i32 %152, i32* %9, align 4
  %153 = load i8*, i8** %6, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @U64TO8_LE(i8* %153, i32 %154)
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SIPHASH_MIN_DIGEST_SIZE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %145
  store i32 1, i32* %4, align 4
  br label %188

162:                                              ; preds = %145
  %163 = load i32, i32* %11, align 4
  %164 = xor i32 %163, 221
  store i32 %164, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %165

165:                                              ; preds = %173, %162
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  %172 = load i32, i32* @SIPROUND, align 4
  br label %173

173:                                              ; preds = %171
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %165

176:                                              ; preds = %165
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %11, align 4
  %179 = xor i32 %177, %178
  %180 = load i32, i32* %12, align 4
  %181 = xor i32 %179, %180
  %182 = load i32, i32* %13, align 4
  %183 = xor i32 %181, %182
  store i32 %183, i32* %9, align 4
  %184 = load i8*, i8** %6, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @U64TO8_LE(i8* %185, i32 %186)
  store i32 1, i32* %4, align 4
  br label %188

188:                                              ; preds = %176, %161, %35
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @U64TO8_LE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
