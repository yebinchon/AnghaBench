; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_key.c_ieee802_1x_icv_aes_cmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_key.c_ieee802_1x_icv_aes_cmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"MKA: AES-CMAC failed for ICV calculation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_1x_icv_aes_cmac(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @omac1_aes_128(i32* %16, i32* %17, i64 %18, i32* %19)
  store i32 %20, i32* %12, align 4
  br label %32

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 32
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @omac1_aes_256(i32* %25, i32* %26, i64 %27, i32* %28)
  store i32 %29, i32* %12, align 4
  br label %31

30:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %39

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @MSG_ERROR, align 4
  %37 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %39

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %35, %30
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @omac1_aes_128(i32*, i32*, i64, i32*) #1

declare dso_local i32 @omac1_aes_256(i32*, i32*, i64, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
