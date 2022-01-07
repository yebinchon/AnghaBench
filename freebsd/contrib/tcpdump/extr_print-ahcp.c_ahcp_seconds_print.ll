; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ahcp.c_ahcp_seconds_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ahcp.c_ahcp_seconds_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c": %us\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ahcp_seconds_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahcp_seconds_print(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 4
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %23

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ND_TCHECK2(i32 %15, i32 4)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @EXTRACT_32BITS(i32* %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @ND_PRINT(i32* %21)
  store i32 0, i32* %4, align 4
  br label %45

23:                                               ; preds = %12
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @istr, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  %28 = call i32 @ND_PRINT(i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = ptrtoint i32* %31 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32 @ND_TCHECK2(i32 %30, i32 %37)
  store i32 0, i32* %4, align 4
  br label %45

39:                                               ; No predecessors!
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @tstr, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i32*
  %44 = call i32 @ND_PRINT(i32* %43)
  store i32 -1, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %23, %13
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
