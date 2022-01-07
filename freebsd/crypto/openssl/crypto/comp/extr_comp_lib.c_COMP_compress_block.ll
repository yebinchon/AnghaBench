; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/comp/extr_comp_lib.c_COMP_compress_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/comp/extr_comp_lib.c_COMP_compress_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @COMP_compress_block(%struct.TYPE_6__* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.TYPE_6__*, i8*, i32, i8*, i32)**
  %18 = load i32 (%struct.TYPE_6__*, i8*, i32, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32, i8*, i32)** %17, align 8
  %19 = icmp eq i32 (%struct.TYPE_6__*, i8*, i32, i8*, i32)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %49

21:                                               ; preds = %5
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.TYPE_6__*, i8*, i32, i8*, i32)**
  %27 = load i32 (%struct.TYPE_6__*, i8*, i32, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32, i8*, i32)** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 %27(%struct.TYPE_6__* %28, i8* %29, i32 %30, i8* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %21
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %36, %21
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %20
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
