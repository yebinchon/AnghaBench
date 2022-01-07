; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-loopback.c_loopback_message_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-loopback.c_loopback_message_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@fcode_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c" invalid (%u)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c", receipt number %u\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c", data (%u octets)\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c", forwarding address %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @loopback_message_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loopback_message_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %97

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK2(i32 %18, i32 2)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @EXTRACT_LE_16BITS(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @fcode_str, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @tok2str(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @ND_PRINT(i32* %29)
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %90 [
    i32 128, label %32
    i32 129, label %59
  ]

32:                                               ; preds = %16
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %97

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ND_TCHECK2(i32 %38, i32 2)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @EXTRACT_LE_16BITS(i32* %41)
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 @ND_PRINT(i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i32*
  %53 = call i32 @ND_PRINT(i32* %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 4
  %58 = call i32 @ND_TCHECK2(i32 %55, i32 %57)
  br label %96

59:                                               ; preds = %16
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %97

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %67 = call i32 @ND_TCHECK2(i32 %65, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @etheraddr_string(i32* %69, i32* %70)
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i32*
  %74 = call i32 @ND_PRINT(i32* %73)
  %75 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %5, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, 8
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i32*
  %84 = call i32 @ND_PRINT(i32* %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, 8
  %89 = call i32 @ND_TCHECK2(i32 %86, i32 %88)
  br label %96

90:                                               ; preds = %16
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, 2
  %95 = call i32 @ND_TCHECK2(i32 %92, i32 %94)
  br label %96

96:                                               ; preds = %90, %63, %36
  br label %119

97:                                               ; preds = %62, %35, %15
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* @istr, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i32*
  %102 = call i32 @ND_PRINT(i32* %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = ptrtoint i32* %105 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = call i32 @ND_TCHECK2(i32 %104, i32 %111)
  br label %119

113:                                              ; No predecessors!
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* @tstr, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i32*
  %118 = call i32 @ND_PRINT(i32* %117)
  br label %119

119:                                              ; preds = %113, %97, %96
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @etheraddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
