; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_key.c_ieee802_1x_kek_aes_cmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_key.c_ieee802_1x_kek_aes_cmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"IEEE8021 KEK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_1x_kek_aes_cmac(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [16 x i32], align 16
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %15 = call i32 @os_memset(i32* %14, i32 0, i32 64)
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ult i64 %18, 16
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i64, i64* %10, align 8
  br label %23

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i64 [ %21, %20 ], [ 16, %22 ]
  %25 = call i32 @os_memcpy(i32* %16, i32* %17, i64 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %31 = load i64, i64* %12, align 8
  %32 = mul i64 8, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @aes_kdf(i32* %26, i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %30, i32 512, i32 %33, i32* %34)
  ret i32 %35
}

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @aes_kdf(i32*, i32, i8*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
