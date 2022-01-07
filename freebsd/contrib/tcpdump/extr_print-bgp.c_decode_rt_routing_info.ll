; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_rt_routing_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_rt_routing_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"default route target\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"origin AS: %s, route target %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32)* @decode_rt_routing_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_rt_routing_info(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8], align 1
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ND_TCHECK(i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 0, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %92

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = icmp sgt i32 32, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %92

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = call i32 @ND_TCHECK_32BITS(i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = call i32 @EXTRACT_32BITS(i32* %37)
  %39 = call i32 @as_printf(i32* %34, i8* %35, i32 4, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %40, 32
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 64, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %92

45:                                               ; preds = %30
  %46 = bitcast [8 x i32]* %10 to i32**
  %47 = call i32 @memset(i32** %46, i32 0, i32 32)
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 7
  %53 = sdiv i32 %52, 8
  %54 = call i32 @ND_TCHECK2(i32 %50, i32 %53)
  %55 = bitcast [8 x i32]* %10 to i32**
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 7
  %60 = sdiv i32 %59, 8
  %61 = call i32 @memcpy(i32** %55, i32* %57, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = srem i32 %62, 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %45
  %66 = load i32, i32* %11, align 4
  %67 = srem i32 %66, 8
  %68 = ashr i32 65280, %67
  %69 = and i32 %68, 255
  %70 = bitcast [8 x i32]* %10 to i32*
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 7
  %73 = sdiv i32 %72, 8
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %69
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %65, %45
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %83 = load i32*, i32** %6, align 8
  %84 = bitcast [8 x i32]* %10 to i32*
  %85 = call i8* @bgp_vpn_rd_print(i32* %83, i32* %84)
  %86 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %80, i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %82, i8* %85)
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 7
  %89 = sdiv i32 %88, 8
  %90 = add nsw i32 5, %89
  store i32 %90, i32* %5, align 4
  br label %92

91:                                               ; No predecessors!
  store i32 -2, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %79, %44, %29, %22
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @ND_TCHECK_32BITS(i32*) #1

declare dso_local i32 @as_printf(i32*, i8*, i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @memcpy(i32**, i32*, i32) #1

declare dso_local i8* @bgp_vpn_rd_print(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
