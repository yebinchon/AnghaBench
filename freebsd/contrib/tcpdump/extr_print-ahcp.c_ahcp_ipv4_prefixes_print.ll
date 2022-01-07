; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ahcp.c_ahcp_ipv4_prefixes_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ahcp.c_ahcp_ipv4_prefixes_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s%s/%u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ahcp_ipv4_prefixes_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahcp_ipv4_prefixes_print(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %9

9:                                                ; preds = %19, %3
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ult i32* %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 5
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ugt i32* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %37

19:                                               ; preds = %13
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ND_TCHECK2(i32 %21, i32 5)
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @ipaddr_string(i32* %25, i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @ND_PRINT(i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  store i32* %35, i32** %6, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %9

36:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %59

37:                                               ; preds = %18
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @istr, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @ND_PRINT(i32* %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = ptrtoint i32* %45 to i64
  %48 = ptrtoint i32* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @ND_TCHECK2(i32 %44, i32 %51)
  store i32 0, i32* %4, align 4
  br label %59

53:                                               ; No predecessors!
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @tstr, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @ND_PRINT(i32* %57)
  store i32 -1, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %37, %36
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
