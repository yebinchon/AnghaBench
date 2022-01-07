; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_int.c_i2c_ibuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_int.c_i2c_ibuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32, i8**)* @i2c_ibuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i2c_ibuf(i8* %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  store i8 0, i8* %14, align 1
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %75

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  store i64 %25, i64* %12, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i64, i64* %12, align 8
  %30 = icmp ugt i64 %29, 127
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  store i8 0, i8* %14, align 1
  br label %70

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  store i8 -1, i8* %14, align 1
  %36 = load i64, i64* %12, align 8
  %37 = icmp ugt i64 %36, 128
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %68

39:                                               ; preds = %35
  %40 = load i64, i64* %12, align 8
  %41 = icmp eq i64 %40, 128
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  store i64 1, i64* %12, align 8
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %12, align 8
  br label %43

58:                                               ; preds = %43
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 255, i32 0
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %14, align 1
  %64 = load i8, i8* %14, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %58, %39
  br label %68

68:                                               ; preds = %67, %38
  br label %69

69:                                               ; preds = %68, %32
  br label %70

70:                                               ; preds = %69, %31
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %11, align 8
  br label %76

75:                                               ; preds = %17, %4
  store i64 1, i64* %11, align 8
  store i64 0, i64* %7, align 8
  br label %76

76:                                               ; preds = %75, %70
  %77 = load i8**, i8*** %9, align 8
  %78 = icmp eq i8** %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i8**, i8*** %9, align 8
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %13, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %79, %76
  %84 = load i64, i64* %11, align 8
  store i64 %84, i64* %5, align 8
  br label %102

85:                                               ; preds = %79
  %86 = load i8, i8* %14, align 1
  %87 = load i8*, i8** %13, align 8
  store i8 %86, i8* %87, align 1
  %88 = load i32, i32* %10, align 4
  %89 = load i8*, i8** %13, align 8
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i8, i8* %14, align 1
  %96 = call i32 @twos_complement(i8* %92, i8* %93, i64 %94, i8 zeroext %95)
  %97 = load i64, i64* %11, align 8
  %98 = load i8**, i8*** %9, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 %97
  store i8* %100, i8** %98, align 8
  %101 = load i64, i64* %11, align 8
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %85, %83
  %103 = load i64, i64* %5, align 8
  ret i64 %103
}

declare dso_local i32 @twos_complement(i8*, i8*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
