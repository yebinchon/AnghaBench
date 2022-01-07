; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_itxt.c_set_txt_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_itxt.c_set_txt_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TXT_CNTRLT = common dso_local global i32 0, align 4
@TXT_ESCAPE = common dso_local global i32 0, align 4
@TXT_MAPINPUT = common dso_local global i32 0, align 4
@TXT_RECORD = common dso_local global i32 0, align 4
@TXT_RESOLVE = common dso_local global i32 0, align 4
@VC_ISDOT = common dso_local global i32 0, align 4
@TXT_REPLAY = common dso_local global i32 0, align 4
@O_ALTWERASE = common dso_local global i32 0, align 4
@TXT_ALTWERASE = common dso_local global i32 0, align 4
@O_AUTOINDENT = common dso_local global i32 0, align 4
@TXT_AUTOINDENT = common dso_local global i32 0, align 4
@O_BEAUTIFY = common dso_local global i32 0, align 4
@TXT_BEAUTIFY = common dso_local global i32 0, align 4
@O_SHOWMATCH = common dso_local global i32 0, align 4
@TXT_SHOWMATCH = common dso_local global i32 0, align 4
@SC_SCRIPT = common dso_local global i32 0, align 4
@TXT_CR = common dso_local global i32 0, align 4
@O_TTYWERASE = common dso_local global i32 0, align 4
@TXT_TTYWERASE = common dso_local global i32 0, align 4
@O_WRAPLEN = common dso_local global i32 0, align 4
@O_WRAPMARGIN = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4
@TXT_WRAPMARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @set_txt_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_txt_std(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @TXT_CNTRLT, align 4
  %8 = load i32, i32* @TXT_ESCAPE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @TXT_MAPINPUT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @TXT_RECORD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @TXT_RESOLVE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @LF_SET(i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @VC_ISDOT, align 4
  %19 = call i64 @F_ISSET(i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @TXT_REPLAY, align 4
  %23 = call i32 @LF_SET(i32 %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @O_ALTWERASE, align 4
  %27 = call i64 @O_ISSET(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @TXT_ALTWERASE, align 4
  %31 = call i32 @LF_SET(i32 %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @O_AUTOINDENT, align 4
  %35 = call i64 @O_ISSET(i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @TXT_AUTOINDENT, align 4
  %39 = call i32 @LF_SET(i32 %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @O_BEAUTIFY, align 4
  %43 = call i64 @O_ISSET(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @TXT_BEAUTIFY, align 4
  %47 = call i32 @LF_SET(i32 %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @O_SHOWMATCH, align 4
  %51 = call i64 @O_ISSET(i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @TXT_SHOWMATCH, align 4
  %55 = call i32 @LF_SET(i32 %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @SC_SCRIPT, align 4
  %59 = call i64 @F_ISSET(i32* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @TXT_CR, align 4
  %63 = call i32 @LF_SET(i32 %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @O_TTYWERASE, align 4
  %67 = call i64 @O_ISSET(i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @TXT_TTYWERASE, align 4
  %71 = call i32 @LF_SET(i32 %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @O_WRAPLEN, align 4
  %75 = call i64 @O_ISSET(i32* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @O_WRAPMARGIN, align 4
  %80 = call i64 @O_ISSET(i32* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77, %72
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @MAPPED_KEYS_WAITING(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @VC_C1SET, align 4
  %89 = call i64 @F_ISSET(i32* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86, %82
  %92 = load i32, i32* @TXT_WRAPMARGIN, align 4
  %93 = call i32 @LF_SET(i32 %92)
  br label %94

94:                                               ; preds = %91, %86, %77
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @LF_SET(i32) #1

declare dso_local i64 @F_ISSET(i32*, i32) #1

declare dso_local i64 @O_ISSET(i32*, i32) #1

declare dso_local i32 @MAPPED_KEYS_WAITING(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
