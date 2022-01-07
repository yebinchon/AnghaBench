; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_win32.c_os_get_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_win32.c_os_get_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_get_random(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @PROV_RSA_FULL, align 4
  %9 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %10 = call i32 @CryptAcquireContext(i32* %6, i32* null, i32* null, i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @CryptGenRandom(i32 %14, i64 %15, i8* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @CryptReleaseContext(i32 %18, i32 0)
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 -1
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %13, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @CryptAcquireContext(i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @CryptGenRandom(i32, i64, i8*) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
