; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip6opts.c_ip6_sopt_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip6opts.c_ip6_sopt_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c", pad1\00", align 1
@IP6OPT_MINLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c", padn: trunc\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c", padn\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c", sopt_type %d: trunc)\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c", sopt_type 0x%02x: len=%d\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"[trunc] \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @ip6_sopt_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_sopt_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %97, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %101

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 129
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  br label %36

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 2
  store i32 %33, i32* %8, align 4
  br label %35

34:                                               ; preds = %21
  br label %102

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %102

43:                                               ; preds = %36
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %64 [
    i32 129, label %49
    i32 128, label %52
  ]

49:                                               ; preds = %43
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str to i32*))
  br label %96

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* @IP6OPT_MINLEN, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.1 to i32*))
  br label %102

61:                                               ; preds = %52
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.2 to i32*))
  br label %96

64:                                               ; preds = %43
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* @IP6OPT_MINLEN, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i32*
  %79 = call i32 @ND_PRINT(i32* %78)
  br label %102

80:                                               ; preds = %64
  %81 = load i32*, i32** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i32*
  %95 = call i32 @ND_PRINT(i32* %94)
  br label %96

96:                                               ; preds = %80, %61, %49
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %7, align 4
  br label %9

101:                                              ; preds = %9
  br label %105

102:                                              ; preds = %70, %58, %42, %34
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.5 to i32*))
  br label %105

105:                                              ; preds = %102, %101
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
