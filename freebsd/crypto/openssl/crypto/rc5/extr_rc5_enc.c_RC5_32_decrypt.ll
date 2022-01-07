; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rc5/extr_rc5_enc.c_RC5_32_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rc5/extr_rc5_enc.c_RC5_32_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RC5_32_decrypt(i64* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %7, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 16
  br i1 %20, label %21, label %54

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = call i32 @D_RC5_32(i64 %22, i64 %23, i64* %24, i32 32)
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = call i32 @D_RC5_32(i64 %26, i64 %27, i64* %28, i32 30)
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = call i32 @D_RC5_32(i64 %30, i64 %31, i64* %32, i32 28)
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = call i32 @D_RC5_32(i64 %34, i64 %35, i64* %36, i32 26)
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = call i32 @D_RC5_32(i64 %38, i64 %39, i64* %40, i32 24)
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = call i32 @D_RC5_32(i64 %42, i64 %43, i64* %44, i32 22)
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = call i32 @D_RC5_32(i64 %46, i64 %47, i64* %48, i32 20)
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = call i32 @D_RC5_32(i64 %50, i64 %51, i64* %52, i32 18)
  br label %77

54:                                               ; preds = %2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 12
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = call i32 @D_RC5_32(i64 %60, i64 %61, i64* %62, i32 24)
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = call i32 @D_RC5_32(i64 %64, i64 %65, i64* %66, i32 22)
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64*, i64** %7, align 8
  %71 = call i32 @D_RC5_32(i64 %68, i64 %69, i64* %70, i32 20)
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = call i32 @D_RC5_32(i64 %72, i64 %73, i64* %74, i32 18)
  br label %76

76:                                               ; preds = %59, %54
  br label %77

77:                                               ; preds = %76, %21
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64*, i64** %7, align 8
  %81 = call i32 @D_RC5_32(i64 %78, i64 %79, i64* %80, i32 16)
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64*, i64** %7, align 8
  %85 = call i32 @D_RC5_32(i64 %82, i64 %83, i64* %84, i32 14)
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64*, i64** %7, align 8
  %89 = call i32 @D_RC5_32(i64 %86, i64 %87, i64* %88, i32 12)
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64*, i64** %7, align 8
  %93 = call i32 @D_RC5_32(i64 %90, i64 %91, i64* %92, i32 10)
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load i64*, i64** %7, align 8
  %97 = call i32 @D_RC5_32(i64 %94, i64 %95, i64* %96, i32 8)
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64*, i64** %7, align 8
  %101 = call i32 @D_RC5_32(i64 %98, i64 %99, i64* %100, i32 6)
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64*, i64** %7, align 8
  %105 = call i32 @D_RC5_32(i64 %102, i64 %103, i64* %104, i32 4)
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i64*, i64** %7, align 8
  %109 = call i32 @D_RC5_32(i64 %106, i64 %107, i64* %108, i32 2)
  %110 = load i64, i64* %5, align 8
  %111 = load i64*, i64** %7, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = sub i64 %110, %113
  %115 = load i64*, i64** %3, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load i64*, i64** %7, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %117, %120
  %122 = load i64*, i64** %3, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 1
  store i64 %121, i64* %123, align 8
  ret void
}

declare dso_local i32 @D_RC5_32(i64, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
