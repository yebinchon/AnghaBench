; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bf/extr_bf_skey.c_BF_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bf/extr_bf_skey.c_BF_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32* }

@bf_init = common dso_local global i32 0, align 4
@BF_ROUNDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BF_set_key(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = call i32 @memcpy(%struct.TYPE_5__* %13, i32* @bf_init, i32 16)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BF_ROUNDS, align 4
  %20 = add nsw i32 %19, 2
  %21 = mul nsw i32 %20, 4
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @BF_ROUNDS, align 4
  %25 = add nsw i32 %24, 2
  %26 = mul nsw i32 %25, 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %3
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %12, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %98, %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BF_ROUNDS, align 4
  %36 = add nsw i32 %35, 2
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %101

38:                                               ; preds = %33
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %11, align 8
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = icmp uge i8* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  store i8* %47, i8** %11, align 8
  br label %48

48:                                               ; preds = %46, %38
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 %49, 8
  store i32 %50, i32* %9, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %11, align 8
  %53 = load i8, i8* %51, align 1
  %54 = zext i8 %53 to i32
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = icmp uge i8* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i8*, i8** %6, align 8
  store i8* %61, i8** %11, align 8
  br label %62

62:                                               ; preds = %60, %48
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 %63, 8
  store i32 %64, i32* %9, align 4
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %11, align 8
  %67 = load i8, i8* %65, align 1
  %68 = zext i8 %67 to i32
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = icmp uge i8* %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i8*, i8** %6, align 8
  store i8* %75, i8** %11, align 8
  br label %76

76:                                               ; preds = %74, %62
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %77, 8
  store i32 %78, i32* %9, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  %81 = load i8, i8* %79, align 1
  %82 = zext i8 %81 to i32
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp uge i8* %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %11, align 8
  br label %90

90:                                               ; preds = %88, %76
  %91 = load i32, i32* %9, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %96, %91
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %33

101:                                              ; preds = %33
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %103, align 4
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %126, %101
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @BF_ROUNDS, align 4
  %107 = add nsw i32 %106, 2
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %104
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = call i32 @BF_encrypt(i32* %110, %struct.TYPE_5__* %111)
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %120, i32* %125, align 4
  br label %126

126:                                              ; preds = %109
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %7, align 4
  br label %104

129:                                              ; preds = %104
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %153, %129
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 1024
  br i1 %135, label %136, label %156

136:                                              ; preds = %133
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = call i32 @BF_encrypt(i32* %137, %struct.TYPE_5__* %138)
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %147, i32* %152, align 4
  br label %153

153:                                              ; preds = %136
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 2
  store i32 %155, i32* %7, align 4
  br label %133

156:                                              ; preds = %133
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @BF_encrypt(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
