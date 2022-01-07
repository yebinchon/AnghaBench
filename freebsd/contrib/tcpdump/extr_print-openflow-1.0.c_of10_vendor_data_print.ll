; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_vendor_data_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_vendor_data_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c", vendor 0x%08x (%s)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32)* @of10_vendor_data_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_vendor_data_print(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %35

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ND_TCHECK2(i32 %16, i32 4)
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @EXTRACT_32BITS(i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @of_vendor_name(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  %28 = call i32 @ND_PRINT(i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, 4
  %34 = call i32* @of10_data_print(i32* %29, i32* %30, i32* %31, i32 %33)
  store i32* %34, i32** %5, align 8
  br label %56

35:                                               ; preds = %13
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @istr, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  %40 = call i32 @ND_PRINT(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ND_TCHECK2(i32 %42, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %5, align 8
  br label %56

49:                                               ; No predecessors!
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @tstr, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @ND_PRINT(i32* %53)
  %55 = load i32*, i32** %8, align 8
  store i32* %55, i32** %5, align 8
  br label %56

56:                                               ; preds = %49, %35, %14
  %57 = load i32*, i32** %5, align 8
  ret i32* %57
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @of_vendor_name(i32) #1

declare dso_local i32* @of10_data_print(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
