; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_x_long.c_long_i2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_x_long.c_long_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i32*, %struct.TYPE_3__*)* @long_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @long_i2c(i32** %0, i8* %1, i32* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32**, i32*** %6, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @COPY_SIZE(i32* %18, i64 %19)
  %21 = call i32 @memcpy(i64* %10, i32** %16, i32 %20)
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %84

28:                                               ; preds = %4
  %29 = load i64, i64* %10, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  store i64 255, i64* %12, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 0, %32
  %34 = sub i64 %33, 1
  store i64 %34, i64* %11, align 8
  br label %37

35:                                               ; preds = %28
  store i64 0, i64* %12, align 8
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @num_bits_ulong(i64 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 7
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 1, i32* %14, align 4
  br label %45

44:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 7
  %48 = ashr i32 %47, 3
  store i32 %48, i32* %13, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %80

51:                                               ; preds = %45
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i64, i64* %12, align 8
  %56 = trunc i64 %55 to i8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  store i8 %56, i8* %57, align 1
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %76, %59
  %63 = load i32, i32* %15, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = xor i64 %66, %67
  %69 = trunc i64 %68 to i8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 %69, i8* %73, align 1
  %74 = load i64, i64* %11, align 8
  %75 = lshr i64 %74, 8
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %15, align 4
  br label %62

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %45
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %27
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @memcpy(i64*, i32**, i32) #1

declare dso_local i32 @COPY_SIZE(i32*, i64) #1

declare dso_local i32 @num_bits_ulong(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
