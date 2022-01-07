; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_fcrypt_b.c_fcrypt_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_fcrypt_b.c_fcrypt_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcrypt_body(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %13, align 8
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %75, %4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 25
  br i1 %22, label %23, label %78

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @D_ENCRYPT(i32 %24, i32 %25, i32 0)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @D_ENCRYPT(i32 %27, i32 %28, i32 2)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @D_ENCRYPT(i32 %30, i32 %31, i32 4)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @D_ENCRYPT(i32 %33, i32 %34, i32 6)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @D_ENCRYPT(i32 %36, i32 %37, i32 8)
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @D_ENCRYPT(i32 %39, i32 %40, i32 10)
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @D_ENCRYPT(i32 %42, i32 %43, i32 12)
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @D_ENCRYPT(i32 %45, i32 %46, i32 14)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @D_ENCRYPT(i32 %48, i32 %49, i32 16)
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @D_ENCRYPT(i32 %51, i32 %52, i32 18)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @D_ENCRYPT(i32 %54, i32 %55, i32 20)
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @D_ENCRYPT(i32 %57, i32 %58, i32 22)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @D_ENCRYPT(i32 %60, i32 %61, i32 24)
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @D_ENCRYPT(i32 %63, i32 %64, i32 26)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @D_ENCRYPT(i32 %66, i32 %67, i32 28)
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @D_ENCRYPT(i32 %69, i32 %70, i32 30)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %23
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %20

78:                                               ; preds = %20
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @ROTATE(i32 %79, i32 3)
  %81 = sext i32 %80 to i64
  %82 = and i64 %81, 4294967295
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @ROTATE(i32 %84, i32 3)
  %86 = sext i32 %85 to i64
  %87 = and i64 %86, 4294967295
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @PERM_OP(i32 %89, i32 %90, i32 %91, i32 1, i32 1431655765)
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @PERM_OP(i32 %93, i32 %94, i32 %95, i32 8, i32 16711935)
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @PERM_OP(i32 %97, i32 %98, i32 %99, i32 2, i32 858993459)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @PERM_OP(i32 %101, i32 %102, i32 %103, i32 16, i32 65535)
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @PERM_OP(i32 %105, i32 %106, i32 %107, i32 4, i32 252645135)
  %109 = load i32, i32* %10, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %112, i32* %114, align 4
  ret void
}

declare dso_local i32 @D_ENCRYPT(i32, i32, i32) #1

declare dso_local i32 @ROTATE(i32, i32) #1

declare dso_local i32 @PERM_OP(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
