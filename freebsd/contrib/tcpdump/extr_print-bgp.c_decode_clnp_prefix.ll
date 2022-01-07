; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_clnp_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_decode_clnp_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32)* @decode_clnp_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_clnp_prefix(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
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
  %20 = icmp slt i32 152, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %71

22:                                               ; preds = %4
  %23 = bitcast [19 x i32]* %10 to i32**
  %24 = call i32 @memset(i32** %23, i32 0, i32 76)
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 7
  %30 = sdiv i32 %29, 8
  %31 = call i32 @ND_TCHECK2(i32 %27, i32 %30)
  %32 = bitcast [19 x i32]* %10 to i32**
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 7
  %37 = sdiv i32 %36, 8
  %38 = call i32 @memcpy(i32** %32, i32* %34, i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = srem i32 %39, 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %22
  %43 = load i32, i32* %11, align 4
  %44 = srem i32 %43, 8
  %45 = ashr i32 65280, %44
  %46 = and i32 %45, 255
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 7
  %49 = sdiv i32 %48, 8
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %46
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %42, %22
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds [19 x i32], [19 x i32]* %10, i64 0, i64 0
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 7
  %62 = sdiv i32 %61, 8
  %63 = call i8* @isonsap_string(i32* %58, i32* %59, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @snprintf(i8* %56, i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 7
  %68 = sdiv i32 %67, 8
  %69 = add nsw i32 1, %68
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; No predecessors!
  store i32 -2, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %55, %21
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @memcpy(i32**, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @isonsap_string(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
