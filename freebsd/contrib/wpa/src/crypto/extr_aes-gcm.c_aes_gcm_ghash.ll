; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-gcm.c_aes_gcm_ghash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-gcm.c_aes_gcm_ghash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"S = GHASH_H(...)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32*, i64, i32*)* @aes_gcm_ghash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_gcm_ghash(i32* %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [16 x i32], align 16
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = call i32 @ghash_start(i32* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @ghash(i32* %16, i32* %17, i32 %19, i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @ghash(i32* %22, i32* %23, i32 %25, i32* %26)
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %29 = load i64, i64* %9, align 8
  %30 = mul i64 %29, 8
  %31 = call i32 @WPA_PUT_BE64(i32* %28, i64 %30)
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = load i64, i64* %11, align 8
  %35 = mul i64 %34, 8
  %36 = call i32 @WPA_PUT_BE64(i32* %33, i64 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @ghash(i32* %37, i32* %38, i32 64, i32* %39)
  %41 = load i32, i32* @MSG_EXCESSIVE, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @wpa_hexdump_key(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %42, i32 16)
  ret void
}

declare dso_local i32 @ghash_start(i32*) #1

declare dso_local i32 @ghash(i32*, i32*, i32, i32*) #1

declare dso_local i32 @WPA_PUT_BE64(i32*, i64) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
