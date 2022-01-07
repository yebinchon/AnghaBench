; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_integ_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_ikev2_common.c_ikev2_integ_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IKEV2_MAX_HASH_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ikev2_integ_hash(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* @IKEV2_MAX_HASH_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %52 [
    i32 128, label %22
    i32 129, label %37
  ]

22:                                               ; preds = %6
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 20
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %54

26:                                               ; preds = %22
  %27 = load i32*, i32** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @hmac_sha1(i32* %27, i64 %28, i32* %29, i64 %30, i32* %20)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %54

34:                                               ; preds = %26
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @os_memcpy(i32* %35, i32* %20, i32 12)
  br label %53

37:                                               ; preds = %6
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %38, 16
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %54

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @hmac_md5(i32* %42, i64 %43, i32* %44, i64 %45, i32* %20)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %54

49:                                               ; preds = %41
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @os_memcpy(i32* %50, i32* %20, i32 12)
  br label %53

52:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %54

53:                                               ; preds = %49, %34
  store i32 0, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %54

54:                                               ; preds = %53, %52, %48, %40, %33, %25
  %55 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hmac_sha1(i32*, i64, i32*, i64, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @hmac_md5(i32*, i64, i32*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
