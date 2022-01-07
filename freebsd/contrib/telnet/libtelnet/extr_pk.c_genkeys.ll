; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/libtelnet/extr_pk.c_genkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/libtelnet/extr_pk.c_genkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROOT = common dso_local global i16 0, align 2
@HEXMODULUS = common dso_local global i32 0, align 4
@KEYSIZE = common dso_local global i32 0, align 4
@BASE = common dso_local global i16 0, align 2
@BASEBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @genkeys(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = call i32* @mp_itom(i16 signext 0)
  store i32* %16, i32** %6, align 8
  %17 = call i32* @mp_itom(i16 signext 0)
  store i32* %17, i32** %7, align 8
  %18 = call i32* @mp_itom(i16 signext -32768)
  store i32* %18, i32** %9, align 8
  %19 = load i16, i16* @PROOT, align 2
  %20 = call i32* @mp_itom(i16 signext %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32, i32* @HEXMODULUS, align 4
  %22 = call i32* @mp_xtom(i32 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32, i32* @KEYSIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 15
  %26 = add i64 %25, 1
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %13, align 8
  %28 = alloca i16, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %29 = bitcast i16* %28 to i8*
  %30 = mul nuw i64 2, %26
  %31 = trunc i64 %30 to i32
  %32 = call i32 @getseed(i8* %29, i32 %31)
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %59, %2
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @KEYSIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 15
  %38 = add i64 %37, 1
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %33
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i16, i16* %28, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = srem i32 %44, 32768
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %12, align 2
  %47 = load i16, i16* %12, align 2
  %48 = call i32* @mp_itom(i16 signext %47)
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @mp_mult(i32* %49, i32* %50, i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @mp_madd(i32* %53, i32* %54, i32* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @mp_mfree(i32* %57)
  br label %59

59:                                               ; preds = %40
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %5, align 8
  br label %33

62:                                               ; preds = %33
  %63 = call i32* @mp_itom(i16 signext 0)
  store i32* %63, i32** %8, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @mp_mdiv(i32* %64, i32* %65, i32* %66, i32* %67)
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @mp_mfree(i32* %69)
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @mp_pow(i32* %71, i32* %72, i32* %73, i32* %74)
  %76 = load i32*, i32** %7, align 8
  %77 = call i8* @mp_mtox(i32* %76)
  store i8* %77, i8** %15, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @adjust(i8* %78, i8* %79)
  %81 = load i32*, i32** %6, align 8
  %82 = call i8* @mp_mtox(i32* %81)
  store i8* %82, i8** %15, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = call i32 @adjust(i8* %83, i8* %84)
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @mp_mfree(i32* %86)
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @mp_mfree(i32* %88)
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @mp_mfree(i32* %90)
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @mp_mfree(i32* %92)
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @mp_mfree(i32* %94)
  %96 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %96)
  ret void
}

declare dso_local i32* @mp_itom(i16 signext) #1

declare dso_local i32* @mp_xtom(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getseed(i8*, i32) #1

declare dso_local i32 @mp_mult(i32*, i32*, i32*) #1

declare dso_local i32 @mp_madd(i32*, i32*, i32*) #1

declare dso_local i32 @mp_mfree(i32*) #1

declare dso_local i32 @mp_mdiv(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mp_pow(i32*, i32*, i32*, i32*) #1

declare dso_local i8* @mp_mtox(i32*) #1

declare dso_local i32 @adjust(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
