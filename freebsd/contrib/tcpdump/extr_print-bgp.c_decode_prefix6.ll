; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_prefix6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_prefix6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_prefix6(i32* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
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
  %18 = call i32 @ND_TCHECK(i32 %17)
  %19 = call i32 @ITEMCHECK(i32 1)
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 128, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %71

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = call i32 @memset(%struct.in6_addr* %12, i32 0, i32 8)
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, 7
  %32 = sdiv i32 %31, 8
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @ND_TCHECK2(i32 %35, i32 %36)
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @ITEMCHECK(i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @memcpy(%struct.in6_addr* %12, i32* %41, i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = srem i32 %44, 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %26
  %48 = load i32, i32* %13, align 4
  %49 = srem i32 %48, 8
  %50 = ashr i32 65280, %49
  %51 = and i32 %50, 255
  %52 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %51
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %47, %26
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i8* @ip6addr_string(i32* %63, %struct.in6_addr* %12)
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @snprintf(i8* %61, i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %64, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 1, %67
  store i32 %68, i32* %6, align 4
  br label %71

69:                                               ; No predecessors!
  store i32 -2, i32* %6, align 4
  br label %71

70:                                               ; No predecessors!
  store i32 -3, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %69, %60, %25
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ITEMCHECK(i32) #1

declare dso_local i32 @memset(%struct.in6_addr*, i32, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @ip6addr_string(i32*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
