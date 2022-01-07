; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_des_enc.c_DES_encrypt2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_des_enc.c_DES_encrypt2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_encrypt2(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ROTATE(i32 %18, i32 29)
  %20 = sext i32 %19 to i64
  %21 = and i64 %20, 4294967295
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ROTATE(i32 %23, i32 29)
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, 4294967295
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %11, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @D_ENCRYPT(i32 %36, i32 %37, i32 0)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @D_ENCRYPT(i32 %39, i32 %40, i32 2)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @D_ENCRYPT(i32 %42, i32 %43, i32 4)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @D_ENCRYPT(i32 %45, i32 %46, i32 6)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @D_ENCRYPT(i32 %48, i32 %49, i32 8)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @D_ENCRYPT(i32 %51, i32 %52, i32 10)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @D_ENCRYPT(i32 %54, i32 %55, i32 12)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @D_ENCRYPT(i32 %57, i32 %58, i32 14)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @D_ENCRYPT(i32 %60, i32 %61, i32 16)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @D_ENCRYPT(i32 %63, i32 %64, i32 18)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @D_ENCRYPT(i32 %66, i32 %67, i32 20)
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @D_ENCRYPT(i32 %69, i32 %70, i32 22)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @D_ENCRYPT(i32 %72, i32 %73, i32 24)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @D_ENCRYPT(i32 %75, i32 %76, i32 26)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @D_ENCRYPT(i32 %78, i32 %79, i32 28)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @D_ENCRYPT(i32 %81, i32 %82, i32 30)
  br label %133

84:                                               ; preds = %3
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @D_ENCRYPT(i32 %85, i32 %86, i32 30)
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @D_ENCRYPT(i32 %88, i32 %89, i32 28)
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @D_ENCRYPT(i32 %91, i32 %92, i32 26)
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @D_ENCRYPT(i32 %94, i32 %95, i32 24)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @D_ENCRYPT(i32 %97, i32 %98, i32 22)
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @D_ENCRYPT(i32 %100, i32 %101, i32 20)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @D_ENCRYPT(i32 %103, i32 %104, i32 18)
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @D_ENCRYPT(i32 %106, i32 %107, i32 16)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @D_ENCRYPT(i32 %109, i32 %110, i32 14)
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @D_ENCRYPT(i32 %112, i32 %113, i32 12)
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @D_ENCRYPT(i32 %115, i32 %116, i32 10)
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @D_ENCRYPT(i32 %118, i32 %119, i32 8)
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @D_ENCRYPT(i32 %121, i32 %122, i32 6)
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @D_ENCRYPT(i32 %124, i32 %125, i32 4)
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @D_ENCRYPT(i32 %127, i32 %128, i32 2)
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @D_ENCRYPT(i32 %130, i32 %131, i32 0)
  br label %133

133:                                              ; preds = %84, %35
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @ROTATE(i32 %134, i32 3)
  %136 = sext i32 %135 to i64
  %137 = and i64 %136, 4294967295
  %138 = trunc i64 %137 to i32
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @ROTATE(i32 %141, i32 3)
  %143 = sext i32 %142 to i64
  %144 = and i64 %143, 4294967295
  %145 = trunc i64 %144 to i32
  %146 = load i32*, i32** %4, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  store i32 %145, i32* %147, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  ret void
}

declare dso_local i32 @ROTATE(i32, i32) #1

declare dso_local i32 @D_ENCRYPT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
