; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_labeled_prefix6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_labeled_prefix6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"%s/%d, label:%u %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"(BOGUS: Bottom of Stack NOT set!)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"(bottom)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i8*, i32)* @decode_labeled_prefix6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_labeled_prefix6(i32* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.in6_addr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ND_TCHECK2(i32 %17, i32 4)
  %19 = call i32 @ITEMCHECK(i32 4)
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp sgt i32 24, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %86

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  %28 = sub nsw i32 %27, 24
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 128, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %86

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 4
  store i32 %34, i32* %9, align 4
  %35 = call i32 @memset(%struct.in6_addr* %12, i32 0, i32 8)
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 7
  %38 = sdiv i32 %37, 8
  store i32 %38, i32* %14, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @ND_TCHECK2(i32 %41, i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @memcpy(%struct.in6_addr* %12, i32* %45, i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = srem i32 %48, 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %32
  %52 = load i32, i32* %13, align 4
  %53 = srem i32 %52, 8
  %54 = ashr i32 65280, %53
  %55 = and i32 %54, 255
  %56 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %55
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %51, %32
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i8* @ip6addr_string(i32* %67, %struct.in6_addr* %12)
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = call i32 @EXTRACT_24BITS(i32* %71)
  %73 = ashr i32 %72, 4
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %81 = call i32 @snprintf(i8* %65, i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %68, i32 %69, i32 %73, i8* %80)
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 4, %82
  store i32 %83, i32* %6, align 4
  br label %86

84:                                               ; No predecessors!
  store i32 -2, i32* %6, align 4
  br label %86

85:                                               ; No predecessors!
  store i32 -3, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %84, %64, %31, %25
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ITEMCHECK(i32) #1

declare dso_local i32 @memset(%struct.in6_addr*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i8*) #1

declare dso_local i8* @ip6addr_string(i32*, %struct.in6_addr*) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
