; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.defns.c_ed_InitVIMaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.defns.c_ed_InitVIMaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VImode = common dso_local global i32 0, align 4
@STRvimode = common dso_local global i32 0, align 4
@NT_NUM_KEYS = common dso_local global i32 0, align 4
@CcViMap = common dso_local global i32* null, align 8
@CcKeyMap = common dso_local global i32* null, align 8
@CcViCmdMap = common dso_local global i32* null, align 8
@CcAltMap = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ed_InitVIMaps() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* @VImode, align 4
  %2 = load i32, i32* @STRvimode, align 4
  %3 = call i32 @setNS(i32 %2)
  %4 = call i32 (...) @update_wordchars()
  %5 = call i32 (...) @ResetXmap()
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %29, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @NT_NUM_KEYS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load i32*, i32** @CcViMap, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @CcKeyMap, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %15, i32* %19, align 4
  %20 = load i32*, i32** @CcViCmdMap, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @CcAltMap, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %10
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %6

32:                                               ; preds = %6
  %33 = call i32 (...) @ed_InitMetaBindings()
  %34 = call i32 (...) @ed_InitNLSMaps()
  %35 = call i32 (...) @ResetArrowKeys()
  %36 = call i32 (...) @BindArrowKeys()
  ret void
}

declare dso_local i32 @setNS(i32) #1

declare dso_local i32 @update_wordchars(...) #1

declare dso_local i32 @ResetXmap(...) #1

declare dso_local i32 @ed_InitMetaBindings(...) #1

declare dso_local i32 @ed_InitNLSMaps(...) #1

declare dso_local i32 @ResetArrowKeys(...) #1

declare dso_local i32 @BindArrowKeys(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
