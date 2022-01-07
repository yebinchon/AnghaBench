; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/md2/extr_md2_dgst.c_md2_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/md2/extr_md2_dgst.c_md2_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@MD2_BLOCK = common dso_local global i32 0, align 4
@S = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @md2_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md2_block(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [48 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @MD2_BLOCK, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %69, %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 16
  br i1 %25, label %26, label %72

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 16
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %45, %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 32
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = load i32*, i32** @S, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %9, align 4
  %59 = xor i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = xor i32 %67, %62
  store i32 %68, i32* %66, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %26
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %23

72:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %177, %72
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 18
  br i1 %75, label %76, label %180

76:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %169, %76
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 48
  br i1 %79, label %80, label %172

80:                                               ; preds = %77
  %81 = load i32*, i32** @S, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 0
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, %85
  store i32 %91, i32* %89, align 4
  store i32 %91, i32* %5, align 4
  %92 = load i32*, i32** @S, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = xor i32 %101, %96
  store i32 %102, i32* %100, align 4
  store i32 %102, i32* %5, align 4
  %103 = load i32*, i32** @S, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = xor i32 %112, %107
  store i32 %113, i32* %111, align 4
  store i32 %113, i32* %5, align 4
  %114 = load i32*, i32** @S, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %123, %118
  store i32 %124, i32* %122, align 4
  store i32 %124, i32* %5, align 4
  %125 = load i32*, i32** @S, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = xor i32 %134, %129
  store i32 %135, i32* %133, align 4
  store i32 %135, i32* %5, align 4
  %136 = load i32*, i32** @S, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 5
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = xor i32 %145, %140
  store i32 %146, i32* %144, align 4
  store i32 %146, i32* %5, align 4
  %147 = load i32*, i32** @S, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 6
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = xor i32 %156, %151
  store i32 %157, i32* %155, align 4
  store i32 %157, i32* %5, align 4
  %158 = load i32*, i32** @S, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 7
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = xor i32 %167, %162
  store i32 %168, i32* %166, align 4
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %80
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 8
  store i32 %171, i32* %9, align 4
  br label %77

172:                                              ; preds = %77
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %173, %174
  %176 = and i32 %175, 255
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %172
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %73

180:                                              ; preds = %73
  %181 = load i32*, i32** %6, align 8
  %182 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 0
  %183 = call i32 @memcpy(i32* %181, i32* %182, i32 64)
  %184 = getelementptr inbounds [48 x i32], [48 x i32]* %10, i64 0, i64 0
  %185 = call i32 @OPENSSL_cleanse(i32* %184, i32 192)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @OPENSSL_cleanse(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
