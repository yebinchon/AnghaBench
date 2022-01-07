; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-domain.c_ns_nskip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-domain.c_ns_nskip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INDIR_MASK = common dso_local global i32 0, align 4
@EDNS0_MASK = common dso_local global i32 0, align 4
@EDNS0_ELT_BITLABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @ns_nskip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ns_nskip(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ND_TTEST2(i32 %10, i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %81

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %75, %14
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @INDIR_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @INDIR_MASK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32* %29, i32** %3, align 8
  br label %81

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @INDIR_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @EDNS0_MASK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @INDIR_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* @EDNS0_ELT_BITLABEL, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32* null, i32** %3, align 8
  br label %81

44:                                               ; preds = %36
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ND_TTEST2(i32 %46, i32 1)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32* null, i32** %3, align 8
  br label %81

50:                                               ; preds = %44
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %5, align 8
  %53 = load i32, i32* %51, align 4
  store i32 %53, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 256, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 7
  %59 = sdiv i32 %58, 8
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %5, align 8
  br label %69

64:                                               ; preds = %30
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %5, align 8
  br label %69

69:                                               ; preds = %64, %56
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ND_TTEST2(i32 %71, i32 1)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32* null, i32** %3, align 8
  br label %81

75:                                               ; preds = %69
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %5, align 8
  %78 = load i32, i32* %76, align 4
  store i32 %78, i32* %6, align 4
  br label %18

79:                                               ; preds = %18
  %80 = load i32*, i32** %5, align 8
  store i32* %80, i32** %3, align 8
  br label %81

81:                                               ; preds = %79, %74, %49, %43, %27, %13
  %82 = load i32*, i32** %3, align 8
  ret i32* %82
}

declare dso_local i32 @ND_TTEST2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
