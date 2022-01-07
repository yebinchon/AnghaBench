; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-igrp.c_igrp_entry_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-igrp.c_igrp_entry_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igrprte = type { i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c" *.%d.%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" X%d.%d.%d.0\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" %d.%d.%d.0\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c" d=%d b=%d r=%d l=%d M=%d mtu=%d in %d hops\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.igrprte*, i32, i32)* @igrp_entry_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igrp_entry_print(i32* %0, %struct.igrprte* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.igrprte*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.igrprte* %1, %struct.igrprte** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %18 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %23 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %28 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @ND_PRINT(i32* %33)
  br label %79

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %41 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %46 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %51 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @ND_PRINT(i32* %56)
  br label %78

58:                                               ; preds = %35
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %61 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %66 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %71 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i32*
  %77 = call i32 @ND_PRINT(i32* %76)
  br label %78

78:                                               ; preds = %58, %38
  br label %79

79:                                               ; preds = %78, %15
  %80 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %81 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @EXTRACT_24BITS(i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %85 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @EXTRACT_24BITS(i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp sgt i32 %91, 16777215
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  store i32 16777215, i32* %11, align 4
  br label %94

94:                                               ; preds = %93, %79
  %95 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %96 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @EXTRACT_16BITS(i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 10, %100
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %108

105:                                              ; preds = %94
  %106 = load i32, i32* %10, align 4
  %107 = sdiv i32 10000000, %106
  br label %108

108:                                              ; preds = %105, %104
  %109 = phi i32 [ 0, %104 ], [ %107, %105 ]
  %110 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %111 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %114 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.igrprte*, %struct.igrprte** %6, align 8
  %119 = getelementptr inbounds %struct.igrprte, %struct.igrprte* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i32*
  %123 = call i32 @ND_PRINT(i32* %122)
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_24BITS(i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
