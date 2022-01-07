; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/libtelnet/extr_pk.c_extractdeskey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/libtelnet/extr_pk.c_extractdeskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEYSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @extractdeskey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extractdeskey(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i16 256, i16* %9, align 2
  %11 = call i32* @mp_itom(i32 0)
  store i32* %11, i32** %6, align 8
  %12 = call i32* @mp_itom(i32 0)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @mp_madd(i32* %13, i32* %14, i32* %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %29, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @KEYSIZE, align 4
  %20 = sub nsw i32 %19, 64
  %21 = sdiv i32 %20, 2
  %22 = sdiv i32 %21, 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = load i16, i16* %9, align 2
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @mp_sdiv(i32* %25, i16 signext %26, i32* %27, i16* %7)
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %17

32:                                               ; preds = %17
  %33 = load i32*, i32** %4, align 8
  %34 = bitcast i32* %33 to i8*
  store i8* %34, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %47, %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = load i16, i16* %9, align 2
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @mp_sdiv(i32* %39, i16 signext %40, i32* %41, i16* %7)
  %43 = load i16, i16* %7, align 2
  %44 = trunc i16 %43 to i8
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  store i8 %44, i8* %45, align 1
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %35

50:                                               ; preds = %35
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @mp_mfree(i32* %51)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @mp_mfree(i32* %53)
  ret void
}

declare dso_local i32* @mp_itom(i32) #1

declare dso_local i32 @mp_madd(i32*, i32*, i32*) #1

declare dso_local i32 @mp_sdiv(i32*, i16 signext, i32*, i16*) #1

declare dso_local i32 @mp_mfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
