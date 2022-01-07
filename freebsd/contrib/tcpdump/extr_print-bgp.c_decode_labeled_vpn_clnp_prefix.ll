; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_labeled_vpn_clnp_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_labeled_vpn_clnp_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"RD: %s, %s/%d, label:%u %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"(BOGUS: Bottom of Stack NOT set!)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"(bottom)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32)* @decode_labeled_vpn_clnp_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_labeled_vpn_clnp_prefix(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [19 x i32], align 16
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
  br label %92

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %23, 88
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 152, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %92

28:                                               ; preds = %22
  %29 = bitcast [19 x i32]* %10 to i32**
  %30 = call i32 @memset(i32** %29, i32 0, i32 76)
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 12
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 7
  %36 = sdiv i32 %35, 8
  %37 = call i32 @ND_TCHECK2(i32 %33, i32 %36)
  %38 = bitcast [19 x i32]* %10 to i32**
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 12
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 7
  %43 = sdiv i32 %42, 8
  %44 = call i32 @memcpy(i32** %38, i32* %40, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = srem i32 %45, 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %28
  %49 = load i32, i32* %11, align 4
  %50 = srem i32 %49, 8
  %51 = ashr i32 65280, %50
  %52 = and i32 %51, 255
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 7
  %55 = sdiv i32 %54, 8
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %52
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %48, %28
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = call i8* @bgp_vpn_rd_print(i32* %64, i32* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 0
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 7
  %72 = sdiv i32 %71, 8
  %73 = call i8* @isonsap_string(i32* %68, i32* %69, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = call i32 @EXTRACT_24BITS(i32* %76)
  %78 = ashr i32 %77, 4
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %86 = call i32 @snprintf(i8* %62, i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %73, i32 %74, i32 %78, i8* %85)
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 7
  %89 = sdiv i32 %88, 8
  %90 = add nsw i32 12, %89
  store i32 %90, i32* %5, align 4
  br label %92

91:                                               ; No predecessors!
  store i32 -2, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %61, %27, %21
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @memcpy(i32**, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32, i32, i8*) #1

declare dso_local i8* @bgp_vpn_rd_print(i32*, i32*) #1

declare dso_local i8* @isonsap_string(i32*, i32*, i32) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
