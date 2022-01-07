; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_lib.c_EVP_CIPHER_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_lib.c_EVP_CIPHER_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_undef = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_CIPHER_type(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @EVP_CIPHER_nid(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %16 [
    i32 130, label %9
    i32 131, label %9
    i32 132, label %9
    i32 129, label %10
    i32 128, label %10
    i32 146, label %11
    i32 145, label %11
    i32 147, label %11
    i32 143, label %12
    i32 142, label %12
    i32 144, label %12
    i32 140, label %13
    i32 139, label %13
    i32 141, label %13
    i32 137, label %14
    i32 136, label %14
    i32 138, label %14
    i32 134, label %15
    i32 133, label %15
    i32 135, label %15
  ]

9:                                                ; preds = %1, %1, %1
  store i32 130, i32* %2, align 4
  br label %28

10:                                               ; preds = %1, %1
  store i32 129, i32* %2, align 4
  br label %28

11:                                               ; preds = %1, %1, %1
  store i32 146, i32* %2, align 4
  br label %28

12:                                               ; preds = %1, %1, %1
  store i32 143, i32* %2, align 4
  br label %28

13:                                               ; preds = %1, %1, %1
  store i32 140, i32* %2, align 4
  br label %28

14:                                               ; preds = %1, %1, %1
  store i32 137, i32* %2, align 4
  br label %28

15:                                               ; preds = %1, %1, %1
  store i32 137, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32* @OBJ_nid2obj(i32 %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32* @OBJ_get0_data(i32* %19)
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @NID_undef, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @ASN1_OBJECT_free(i32* %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %15, %14, %13, %12, %11, %10, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @EVP_CIPHER_nid(i32*) #1

declare dso_local i32* @OBJ_nid2obj(i32) #1

declare dso_local i32* @OBJ_get0_data(i32*) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
