; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_stream/xchacha20/extr_stream_xchacha20.c_crypto_stream_xchacha20.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_stream/xchacha20/extr_stream_xchacha20.c_crypto_stream_xchacha20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_core_hchacha20_OUTPUTBYTES = common dso_local global i32 0, align 4
@crypto_stream_chacha20_KEYBYTES = common dso_local global i32 0, align 4
@crypto_stream_chacha20_NONCEBYTES = common dso_local global i64 0, align 8
@crypto_stream_xchacha20_NONCEBYTES = common dso_local global i64 0, align 8
@crypto_core_hchacha20_INPUTBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_stream_xchacha20(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @crypto_core_hchacha20_OUTPUTBYTES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @crypto_core_hchacha20(i8* %14, i8* %15, i8* %16, i32* null)
  %18 = load i32, i32* @crypto_stream_chacha20_KEYBYTES, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ule i64 %19, %12
  %21 = zext i1 %20 to i32
  %22 = call i32 @COMPILER_ASSERT(i32 %21)
  %23 = load i64, i64* @crypto_stream_chacha20_NONCEBYTES, align 8
  %24 = load i64, i64* @crypto_stream_xchacha20_NONCEBYTES, align 8
  %25 = load i64, i64* @crypto_core_hchacha20_INPUTBYTES, align 8
  %26 = sub nsw i64 %24, %25
  %27 = icmp eq i64 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @COMPILER_ASSERT(i32 %28)
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* @crypto_core_hchacha20_INPUTBYTES, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = call i32 @crypto_stream_chacha20(i8* %30, i64 %31, i8* %34, i8* %14)
  %36 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %36)
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_core_hchacha20(i8*, i8*, i8*, i32*) #2

declare dso_local i32 @COMPILER_ASSERT(i32) #2

declare dso_local i32 @crypto_stream_chacha20(i8*, i64, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
