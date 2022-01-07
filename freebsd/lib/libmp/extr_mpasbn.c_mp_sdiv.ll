; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c_mp_sdiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c_mp_sdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"sdiv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_sdiv(i32* %0, i16 signext %1, i32* %2, i16* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32* %2, i32** %7, align 8
  store i16* %3, i16** %8, align 8
  %10 = call i32* (...) @BN_CTX_new()
  store i32* %10, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = call i32 @_bnerr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %4
  %16 = load i32*, i32** %5, align 8
  %17 = load i16, i16* %6, align 2
  %18 = load i32*, i32** %7, align 8
  %19 = load i16*, i16** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @_sdiv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %16, i16 signext %17, i32* %18, i16* %19, i32* %20)
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @BN_CTX_free(i32* %22)
  ret void
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @_bnerr(i8*) #1

declare dso_local i32 @_sdiv(i8*, i32*, i16 signext, i32*, i16*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
