; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rc2/extr_rc2_cbc.c_RC2_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rc2/extr_rc2_cbc.c_RC2_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RC2_encrypt(i64* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %14, align 8
  %22 = lshr i64 %21, 16
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i64*, i64** %3, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 65535
  store i32 %29, i32* %11, align 4
  %30 = load i64, i64* %14, align 8
  %31 = lshr i64 %30, 16
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  store i32 3, i32* %6, align 4
  store i32 5, i32* %5, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32* %36, i32** %8, align 8
  store i32* %36, i32** %7, align 8
  br label %37

37:                                               ; preds = %163, %2
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %12, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = add nsw i32 %38, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %44, %45
  %47 = add nsw i32 %43, %46
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %7, align 8
  %50 = load i32, i32* %48, align 4
  %51 = add nsw i32 %47, %50
  %52 = and i32 %51, 65535
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = shl i32 %53, 1
  %55 = load i32, i32* %13, align 4
  %56 = ashr i32 %55, 15
  %57 = or i32 %54, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = add nsw i32 %58, %62
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %64, %65
  %67 = add nsw i32 %63, %66
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %7, align 8
  %70 = load i32, i32* %68, align 4
  %71 = add nsw i32 %67, %70
  %72 = and i32 %71, 65535
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = shl i32 %73, 2
  %75 = load i32, i32* %13, align 4
  %76 = ashr i32 %75, 14
  %77 = or i32 %74, %76
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %10, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = add nsw i32 %78, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %84, %85
  %87 = add nsw i32 %83, %86
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %7, align 8
  %90 = load i32, i32* %88, align 4
  %91 = add nsw i32 %87, %90
  %92 = and i32 %91, 65535
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = shl i32 %93, 3
  %95 = load i32, i32* %13, align 4
  %96 = ashr i32 %95, 13
  %97 = or i32 %94, %96
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %11, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = add nsw i32 %98, %102
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %104, %105
  %107 = add nsw i32 %103, %106
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %7, align 8
  %110 = load i32, i32* %108, align 4
  %111 = add nsw i32 %107, %110
  %112 = and i32 %111, 65535
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = shl i32 %113, 5
  %115 = load i32, i32* %13, align 4
  %116 = ashr i32 %115, 11
  %117 = or i32 %114, %116
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %5, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %163

121:                                              ; preds = %37
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %6, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %164

126:                                              ; preds = %121
  %127 = load i32, i32* %6, align 4
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 6, i32 5
  store i32 %130, i32* %5, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %12, align 4
  %133 = and i32 %132, 63
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %9, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = and i32 %140, 63
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %10, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %10, align 4
  %149 = and i32 %148, 63
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %11, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %11, align 4
  %157 = and i32 %156, 63
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %126, %37
  br label %37

164:                                              ; preds = %125
  %165 = load i32, i32* %9, align 4
  %166 = and i32 %165, 65535
  %167 = sext i32 %166 to i64
  %168 = load i32, i32* %10, align 4
  %169 = and i32 %168, 65535
  %170 = sext i32 %169 to i64
  %171 = shl i64 %170, 16
  %172 = or i64 %167, %171
  %173 = load i64*, i64** %3, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 0
  store i64 %172, i64* %174, align 8
  %175 = load i32, i32* %11, align 4
  %176 = and i32 %175, 65535
  %177 = sext i32 %176 to i64
  %178 = load i32, i32* %12, align 4
  %179 = and i32 %178, 65535
  %180 = sext i32 %179 to i64
  %181 = shl i64 %180, 16
  %182 = or i64 %177, %181
  %183 = load i64*, i64** %3, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  store i64 %182, i64* %184, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
