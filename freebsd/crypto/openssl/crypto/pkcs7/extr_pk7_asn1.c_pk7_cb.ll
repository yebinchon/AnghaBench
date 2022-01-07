; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_asn1.c_pk7_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_asn1.c_pk7_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32*, i8*)* @pk7_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk7_cb(i32 %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32**, align 8
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load i32**, i32*** %7, align 8
  store i32** %14, i32*** %11, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %50 [
    i32 128, label %16
    i32 130, label %25
    i32 129, label %40
    i32 131, label %40
  ]

16:                                               ; preds = %4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32**, i32*** %11, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @PKCS7_stream(i32* %18, i32* %20)
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %51

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %4, %24
  %26 = load i32**, i32*** %11, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PKCS7_dataInit(i32* %27, i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %51

39:                                               ; preds = %25
  br label %50

40:                                               ; preds = %4, %4
  %41 = load i32**, i32*** %11, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PKCS7_dataFinal(i32* %42, i32 %45)
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %51

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %4, %49, %39
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %48, %38, %23
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @PKCS7_stream(i32*, i32*) #1

declare dso_local i32 @PKCS7_dataInit(i32*, i32) #1

declare dso_local i32 @PKCS7_dataFinal(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
