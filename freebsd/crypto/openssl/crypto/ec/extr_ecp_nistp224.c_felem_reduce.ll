; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp224.c_felem_reduce.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp224.c_felem_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@felem_reduce.two127p15 = internal constant i32 -2147450880, align 4
@felem_reduce.two127m71 = internal constant i32 0, align 4
@felem_reduce.two127m71m55 = internal constant i32 -2147483648, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @felem_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @felem_reduce(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [5 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, -2147450880
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 %9, i32* %10, align 16
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -2147483648
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 0
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 %19, i32* %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  store i32 %27, i32* %28, align 16
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 6
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  %34 = load i32, i32* %33, align 16
  %35 = add nsw i32 %34, %32
  store i32 %35, i32* %33, align 16
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 6
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 65535
  %40 = shl i32 %39, 40
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 6
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, %46
  store i32 %49, i32* %47, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 16
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 65535
  %61 = shl i32 %60, 40
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, %61
  store i32 %64, i32* %62, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  %72 = load i32, i32* %71, align 16
  %73 = ashr i32 %72, 16
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, %73
  store i32 %76, i32* %74, align 8
  %77 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  %78 = load i32, i32* %77, align 16
  %79 = and i32 %78, 65535
  %80 = shl i32 %79, 40
  %81 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  %85 = load i32, i32* %84, align 16
  %86 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %87 = load i32, i32* %86, align 16
  %88 = sub nsw i32 %87, %85
  store i32 %88, i32* %86, align 16
  %89 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  %90 = load i32, i32* %89, align 8
  %91 = ashr i32 %90, 56
  %92 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = and i64 %97, 72057594037927935
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 8
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 56
  %103 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  store i32 %102, i32* %103, align 16
  %104 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = and i64 %106, 72057594037927935
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  %110 = load i32, i32* %109, align 16
  %111 = ashr i32 %110, 16
  %112 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, %111
  store i32 %114, i32* %112, align 8
  %115 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  %116 = load i32, i32* %115, align 16
  %117 = and i32 %116, 65535
  %118 = shl i32 %117, 40
  %119 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %118
  store i32 %121, i32* %119, align 4
  %122 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  %123 = load i32, i32* %122, align 16
  %124 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %125 = load i32, i32* %124, align 16
  %126 = sub nsw i32 %125, %123
  store i32 %126, i32* %124, align 16
  %127 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %128 = load i32, i32* %127, align 16
  %129 = ashr i32 %128, 56
  %130 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %129
  store i32 %132, i32* %130, align 4
  %133 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %134 = load i32, i32* %133, align 16
  %135 = sext i32 %134 to i64
  %136 = and i64 %135, 72057594037927935
  %137 = trunc i64 %136 to i32
  %138 = load i32*, i32** %3, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %137, i32* %139, align 4
  %140 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 56
  %143 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, %142
  store i32 %145, i32* %143, align 8
  %146 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = and i64 %148, 72057594037927935
  %150 = trunc i64 %149 to i32
  %151 = load i32*, i32** %3, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  store i32 %150, i32* %152, align 4
  %153 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = ashr i32 %154, 56
  %156 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %155
  store i32 %158, i32* %156, align 4
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = and i64 %161, 72057594037927935
  %163 = trunc i64 %162 to i32
  %164 = load i32*, i32** %3, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  store i32 %163, i32* %165, align 4
  %166 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %3, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  store i32 %167, i32* %169, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
