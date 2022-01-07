; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_ReBufferDisplay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_ReBufferDisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Display = common dso_local global i32** null, align 8
@Vdisplay = common dso_local global i32** null, align 8
@T_co = common dso_local global i32 0, align 4
@TermH = common dso_local global i32 0, align 4
@INBUFSIZE = common dso_local global i32 0, align 4
@TermV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ReBufferDisplay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReBufferDisplay() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = load i32**, i32*** @Display, align 8
  store i32** %3, i32*** %2, align 8
  store i32** null, i32*** @Display, align 8
  %4 = load i32**, i32*** %2, align 8
  %5 = call i32 @blkfree(i32** %4)
  %6 = load i32**, i32*** @Vdisplay, align 8
  store i32** %6, i32*** %2, align 8
  store i32** null, i32*** @Vdisplay, align 8
  %7 = load i32**, i32*** %2, align 8
  %8 = call i32 @blkfree(i32** %7)
  %9 = load i32, i32* @T_co, align 4
  %10 = call i32 @Val(i32 %9)
  store i32 %10, i32* @TermH, align 4
  %11 = load i32, i32* @INBUFSIZE, align 4
  %12 = mul nsw i32 %11, 4
  %13 = load i32, i32* @TermH, align 4
  %14 = sdiv i32 %12, %13
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @TermV, align 4
  %16 = load i32, i32* @TermV, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call i8* @xmalloc(i32 %20)
  %22 = bitcast i8* %21 to i32**
  store i32** %22, i32*** %2, align 8
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %39, %0
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @TermV, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32, i32* @TermH, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8* @xmalloc(i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load i32**, i32*** %2, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* %34, i32** %38, align 8
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load i32**, i32*** %2, align 8
  %44 = load i32, i32* @TermV, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* null, i32** %46, align 8
  %47 = load i32**, i32*** %2, align 8
  store i32** %47, i32*** @Display, align 8
  %48 = load i32, i32* @TermV, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = mul i64 8, %50
  %52 = trunc i64 %51 to i32
  %53 = call i8* @xmalloc(i32 %52)
  %54 = bitcast i8* %53 to i32**
  store i32** %54, i32*** %2, align 8
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %71, %42
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @TermV, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i32, i32* @TermH, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = trunc i64 %63 to i32
  %65 = call i8* @xmalloc(i32 %64)
  %66 = bitcast i8* %65 to i32*
  %67 = load i32**, i32*** %2, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  store i32* %66, i32** %70, align 8
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %55

74:                                               ; preds = %55
  %75 = load i32**, i32*** %2, align 8
  %76 = load i32, i32* @TermV, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* null, i32** %78, align 8
  %79 = load i32**, i32*** %2, align 8
  store i32** %79, i32*** @Vdisplay, align 8
  ret void
}

declare dso_local i32 @blkfree(i32**) #1

declare dso_local i32 @Val(i32) #1

declare dso_local i8* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
