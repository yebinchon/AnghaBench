; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_labeled_vpn_prefix6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_labeled_vpn_prefix6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"RD: %s, %s/%d, label:%u %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"(BOGUS: Bottom of Stack NOT set!)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"(bottom)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32)* @decode_labeled_vpn_prefix6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_labeled_vpn_prefix6(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_addr, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ND_TCHECK(i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sgt i32 88, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %88

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %23, 88
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 128, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %88

28:                                               ; preds = %22
  %29 = call i32 @memset(%struct.in6_addr* %10, i32 0, i32 8)
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 12
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 7
  %35 = sdiv i32 %34, 8
  %36 = call i32 @ND_TCHECK2(i32 %32, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 12
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 7
  %41 = sdiv i32 %40, 8
  %42 = call i32 @memcpy(%struct.in6_addr* %10, i32* %38, i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = srem i32 %43, 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %28
  %47 = load i32, i32* %11, align 4
  %48 = srem i32 %47, 8
  %49 = ashr i32 65280, %48
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 7
  %55 = sdiv i32 %54, 8
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %50
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %46, %28
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = call i8* @bgp_vpn_rd_print(i32* %64, i32* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = call i8* @ip6addr_string(i32* %68, %struct.in6_addr* %10)
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = call i32 @EXTRACT_24BITS(i32* %72)
  %74 = ashr i32 %73, 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %82 = call i32 @snprintf(i8* %62, i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %69, i32 %70, i32 %74, i8* %81)
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 7
  %85 = sdiv i32 %84, 8
  %86 = add nsw i32 12, %85
  store i32 %86, i32* %5, align 4
  br label %88

87:                                               ; No predecessors!
  store i32 -2, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %61, %27, %21
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @memset(%struct.in6_addr*, i32, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32, i32, i8*) #1

declare dso_local i8* @bgp_vpn_rd_print(i32*, i32*) #1

declare dso_local i8* @ip6addr_string(i32*, %struct.in6_addr*) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
