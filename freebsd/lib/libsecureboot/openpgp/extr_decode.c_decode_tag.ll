; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_decode.c_decode_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_decode.c_decode_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENPGP_TAG_ISTAG = common dso_local global i32 0, align 4
@OPENPGP_TAG_ISNEW = common dso_local global i32 0, align 4
@OPENPGP_TAG_NEW_MASK = common dso_local global i32 0, align 4
@OPENPGP_TAG_OLD_TYPE = common dso_local global i32 0, align 4
@OPENPGP_TAG_OLD_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_tag(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11, %3
  store i32 -1, i32* %4, align 4
  br label %51

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @OPENPGP_TAG_ISTAG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %51

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @OPENPGP_TAG_ISNEW, align 4
  %30 = and i32 %28, %29
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i32*, i32** %7, align 8
  store i32 -1, i32* %36, align 4
  %37 = load i32, i32* @OPENPGP_TAG_NEW_MASK, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %49

40:                                               ; preds = %27
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @OPENPGP_TAG_OLD_TYPE, align 4
  %43 = and i32 %41, %42
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @OPENPGP_TAG_OLD_MASK, align 4
  %47 = and i32 %45, %46
  %48 = ashr i32 %47, 2
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %40, %35
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %26, %17
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
