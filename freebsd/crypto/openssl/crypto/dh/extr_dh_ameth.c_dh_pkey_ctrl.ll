; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_ameth.c_dh_pkey_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_ameth.c_dh_pkey_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMS_RECIPINFO_AGREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i8*)* @dh_pkey_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_pkey_ctrl(i32* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %29 [
    i32 129, label %11
    i32 128, label %25
  ]

11:                                               ; preds = %4
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @dh_cms_decrypt(i8* %15)
  store i32 %16, i32* %5, align 4
  br label %30

17:                                               ; preds = %11
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @dh_cms_encrypt(i8* %21)
  store i32 %22, i32* %5, align 4
  br label %30

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  store i32 -2, i32* %5, align 4
  br label %30

25:                                               ; preds = %4
  %26 = load i32, i32* @CMS_RECIPINFO_AGREE, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 4
  store i32 1, i32* %5, align 4
  br label %30

29:                                               ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %25, %24, %20, %14
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @dh_cms_decrypt(i8*) #1

declare dso_local i32 @dh_cms_encrypt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
