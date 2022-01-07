; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs12/extr_p12_utl.c_bmp_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs12/extr_p12_utl.c_bmp_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @bmp_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp_to_utf8(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %78

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %22, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp uge i64 %29, 55296
  br i1 %30, label %31, label %67

31:                                               ; preds = %17
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %32, 57344
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %78

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 %39, 55296
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = shl i64 %41, 10
  store i64 %42, i64* %8, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 8
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %47, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ult i32 %53, 56320
  br i1 %54, label %58, label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %9, align 4
  %57 = icmp uge i32 %56, 57344
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %38
  store i32 -1, i32* %4, align 4
  br label %78

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = sub i32 %60, 56320
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* %8, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 65536
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %59, %31, %17
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %69, 4
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i32 [ 4, %71 ], [ %73, %72 ]
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @UTF8_putc(i8* %68, i32 %75, i64 %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %58, %37, %16, %12
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @UTF8_putc(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
