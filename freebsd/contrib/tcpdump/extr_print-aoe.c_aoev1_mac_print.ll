; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aoe.c_aoev1_mac_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aoe.c_aoev1_mac_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AOEV1_MAC_ARG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"\0A\09MCmd: %s\00", align 1
@aoev1_mcmd_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown (0x%02x)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c", MError: %s\00", align 1
@aoev1_merror_str = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c", Dir Count: %u\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\0A\09 DCmd: %s\00", align 1
@aoev1_dcmd_str = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c", Ethernet Address: %s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @aoev1_mac_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aoev1_mac_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32* %13, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @AOEV1_MAC_ARG_LEN, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %112

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ND_TCHECK2(i32 %20, i32 1)
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ND_TCHECK2(i32 %25, i32 1)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @aoev1_mcmd_str, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tok2str(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @ND_PRINT(i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ND_TCHECK2(i32 %38, i32 1)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @aoev1_merror_str, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @tok2str(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @ND_PRINT(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ND_TCHECK2(i32 %51, i32 1)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32* %56, i32** %5, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @ND_PRINT(i32* %60)
  %62 = load i32, i32* @AOEV1_MAC_ARG_LEN, align 4
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 %63, 8
  %65 = add nsw i32 %62, %64
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %18
  br label %112

69:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %108, %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %111

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ND_TCHECK2(i32 %76, i32 1)
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32* %79, i32** %5, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ND_TCHECK2(i32 %81, i32 1)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @aoev1_dcmd_str, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @tok2str(i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @ND_PRINT(i32* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32* %92, i32** %5, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %96 = call i32 @ND_TCHECK2(i32 %94, i32 %95)
  %97 = load i32*, i32** %4, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @etheraddr_string(i32* %98, i32* %99)
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i32*
  %103 = call i32 @ND_PRINT(i32* %102)
  %104 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %5, align 8
  br label %108

108:                                              ; preds = %74
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %70

111:                                              ; preds = %70
  br label %134

112:                                              ; preds = %68, %17
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @istr, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i32*
  %117 = call i32 @ND_PRINT(i32* %116)
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = ptrtoint i32* %120 to i64
  %123 = ptrtoint i32* %121 to i64
  %124 = sub i64 %122, %123
  %125 = sdiv exact i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i32 @ND_TCHECK2(i32 %119, i32 %126)
  br label %134

128:                                              ; No predecessors!
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* @tstr, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i32*
  %133 = call i32 @ND_PRINT(i32* %132)
  br label %134

134:                                              ; preds = %128, %112, %111
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @etheraddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
