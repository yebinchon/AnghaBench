; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xmodem.c_docrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xmodem.c_docrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crctab = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i8*, i32)* @docrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @docrc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i16 0, i16* %5, align 2
  br label %6

6:                                                ; preds = %10, %2
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load i16, i16* %5, align 2
  %12 = zext i16 %11 to i32
  %13 = shl i32 %12, 8
  %14 = load i16*, i16** @crctab, align 8
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = ashr i32 %16, 8
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8
  %20 = load i8, i8* %18, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %17, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %14, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = xor i32 %13, %26
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %5, align 2
  br label %6

29:                                               ; preds = %6
  %30 = load i16, i16* %5, align 2
  ret i16 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
