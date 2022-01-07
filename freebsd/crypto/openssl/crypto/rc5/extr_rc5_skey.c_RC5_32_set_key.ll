; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rc5/extr_rc5_skey.c_RC5_32_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rc5/extr_rc5_skey.c_RC5_32_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@RC5_16_ROUNDS = common dso_local global i32 0, align 4
@RC5_12_ROUNDS = common dso_local global i32 0, align 4
@RC5_8_ROUNDS = common dso_local global i32 0, align 4
@RC5_32_P = common dso_local global i32 0, align 4
@RC5_32_Q = common dso_local global i32 0, align 4
@RC5_32_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RC5_32_set_key(%struct.TYPE_3__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @RC5_16_ROUNDS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RC5_12_ROUNDS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @RC5_8_ROUNDS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @RC5_16_ROUNDS, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %30, %26, %4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32* %43, i32** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %66, %36
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 8
  %48 = icmp sle i32 %45, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @c2l(i8* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %17, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @c2l(i8* %58, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %17, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %64
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %49
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 8
  store i32 %68, i32* %16, align 4
  br label %44

69:                                               ; preds = %44
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %16, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %21, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, 7
  store i32 %77, i32* %15, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @c2ln(i8* %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 0
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %86
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %91
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %75, %69
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 3
  %96 = sdiv i32 %95, 4
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  %99 = mul nsw i32 %98, 2
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* @RC5_32_P, align 4
  %101 = load i32*, i32** %14, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %100, i32* %102, align 4
  store i32 1, i32* %16, align 4
  br label %103

103:                                              ; preds = %122, %93
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %20, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %103
  %108 = load i32*, i32** %14, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RC5_32_Q, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* @RC5_32_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %107
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  br label %103

125:                                              ; preds = %103
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %19, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* %20, align 4
  br label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %19, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = mul nsw i32 %135, 3
  store i32 %136, i32* %17, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %137

137:                                              ; preds = %190, %133
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %193

141:                                              ; preds = %137
  %142 = load i32*, i32** %14, align 8
  %143 = load i32, i32* %21, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %146, %147
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %148, %149
  %151 = load i32, i32* @RC5_32_MASK, align 4
  %152 = and i32 %150, %151
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @ROTATE_l32(i32 %153, i32 3)
  %155 = load i32*, i32** %14, align 8
  %156 = load i32, i32* %21, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  store i32 %154, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %159, %160
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* %22, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* @RC5_32_MASK, align 4
  %171 = and i32 %169, %170
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @ROTATE_l32(i32 %172, i32 %173)
  %175 = load i32, i32* %22, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %176
  store i32 %174, i32* %177, align 4
  store i32 %174, i32* %13, align 4
  %178 = load i32, i32* %21, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %21, align 4
  %180 = load i32, i32* %20, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %141
  store i32 0, i32* %21, align 4
  br label %183

183:                                              ; preds = %182, %141
  %184 = load i32, i32* %22, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %22, align 4
  %186 = load i32, i32* %19, align 4
  %187 = icmp sge i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  store i32 0, i32* %22, align 4
  br label %189

189:                                              ; preds = %188, %183
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %16, align 4
  br label %137

193:                                              ; preds = %137
  ret void
}

declare dso_local i32 @c2l(i8*, i32) #1

declare dso_local i32 @c2ln(i8*, i32, i32, i32) #1

declare dso_local i32 @ROTATE_l32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
