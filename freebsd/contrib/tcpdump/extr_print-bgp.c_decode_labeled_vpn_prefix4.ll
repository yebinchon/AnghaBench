; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_labeled_vpn_prefix4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_labeled_vpn_prefix4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"RD: %s, %s/%d, label:%u %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"(BOGUS: Bottom of Stack NOT set!)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"(bottom)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32)* @decode_labeled_vpn_prefix4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_labeled_vpn_prefix4(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in_addr, align 4
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
  br label %87

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %23, 88
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 32, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %87

28:                                               ; preds = %22
  %29 = call i32 @memset(%struct.in_addr* %10, i32 0, i32 4)
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
  %42 = call i32 @memcpy(%struct.in_addr* %10, i32* %38, i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = srem i32 %43, 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %28
  %47 = load i32, i32* %11, align 4
  %48 = srem i32 %47, 8
  %49 = ashr i32 65280, %48
  %50 = and i32 %49, 255
  %51 = bitcast %struct.in_addr* %10 to i32*
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 7
  %54 = sdiv i32 %53, 8
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %50
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %46, %28
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = call i8* @bgp_vpn_rd_print(i32* %63, i32* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i8* @ipaddr_string(i32* %67, %struct.in_addr* %10)
  %69 = load i32, i32* %11, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = call i32 @EXTRACT_24BITS(i32* %71)
  %73 = ashr i32 %72, 4
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %81 = call i32 @snprintf(i8* %61, i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %66, i8* %68, i32 %69, i32 %73, i8* %80)
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 7
  %84 = sdiv i32 %83, 8
  %85 = add nsw i32 12, %84
  store i32 %85, i32* %5, align 4
  br label %87

86:                                               ; No predecessors!
  store i32 -2, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %60, %27, %21
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @memset(%struct.in_addr*, i32, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @memcpy(%struct.in_addr*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32, i32, i8*) #1

declare dso_local i8* @bgp_vpn_rd_print(i32*, i32*) #1

declare dso_local i8* @ipaddr_string(i32*, %struct.in_addr*) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
