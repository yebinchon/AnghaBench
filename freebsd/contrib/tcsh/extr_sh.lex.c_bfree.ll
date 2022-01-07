; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_bfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_bfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cantell = common dso_local global i64 0, align 8
@whyles = common dso_local global i64 0, align 8
@fseekp = common dso_local global i32 0, align 4
@BUFSIZE = common dso_local global i32 0, align 4
@fbuf = common dso_local global i32* null, align 8
@feobp = common dso_local global i32 0, align 4
@fblocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfree() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @cantell, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %52

6:                                                ; preds = %0
  %7 = load i64, i64* @whyles, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %52

10:                                               ; preds = %6
  %11 = load i32, i32* @fseekp, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* @BUFSIZE, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %29, %17
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32*, i32** @fbuf, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xfree(i32 %27)
  br label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %18

32:                                               ; preds = %18
  %33 = load i32*, i32** @fbuf, align 8
  %34 = load i32*, i32** @fbuf, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @blkcpy(i32* %33, i32* %37)
  %39 = load i32, i32* @BUFSIZE, align 4
  %40 = load i32, i32* %1, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* @fseekp, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* @fseekp, align 4
  %44 = load i32, i32* @BUFSIZE, align 4
  %45 = load i32, i32* %1, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* @feobp, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* @feobp, align 4
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @fblocks, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* @fblocks, align 4
  br label %52

52:                                               ; preds = %5, %9, %32, %10
  ret void
}

declare dso_local i32 @xfree(i32) #1

declare dso_local i32 @blkcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
