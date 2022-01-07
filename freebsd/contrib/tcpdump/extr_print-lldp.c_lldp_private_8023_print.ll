; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lldp.c_lldp_private_8023_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lldp.c_lldp_private_8023_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"\0A\09  %s Subtype (%u)\00", align 1
@lldp_8023_subtype_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\0A\09    autonegotiation [%s] (0x%02x)\00", align 1
@lldp_8023_autonegotiation_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"\0A\09    PMD autoneg capability [%s] (0x%04x)\00", align 1
@lldp_pmd_capability_values = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"\0A\09    MAU type %s (0x%04x)\00", align 1
@lldp_mau_types_values = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"\0A\09    MDI power support [%s], power pair %s, power class %s\00", align 1
@lldp_mdi_values = common dso_local global i32 0, align 4
@lldp_mdi_power_pairs_values = common dso_local global i32 0, align 4
@lldp_mdi_power_class_values = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"\0A\09    aggregation status [%s], aggregation port ID %u\00", align 1
@lldp_aggregation_values = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"\0A\09    MTU size %u\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @lldp_private_8023_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lldp_private_8023_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %4, align 4
  br label %130

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @lldp_8023_subtype_values, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @tok2str(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @ND_PRINT(i32* %25)
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %126 [
    i32 130, label %28
    i32 129, label %70
    i32 131, label %95
    i32 128, label %113
  ]

28:                                               ; preds = %15
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 9
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %130

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @lldp_8023_autonegotiation_values, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bittok2str(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 @ND_PRINT(i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @lldp_pmd_capability_values, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = call i32 @EXTRACT_16BITS(i32* %49)
  %51 = call i32 @bittok2str(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = call i32 @EXTRACT_16BITS(i32* %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @ND_PRINT(i32* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @lldp_mau_types_values, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  %62 = call i32 @EXTRACT_16BITS(i32* %61)
  %63 = call i32 @tok2str(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  %66 = call i32 @EXTRACT_16BITS(i32* %65)
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i32*
  %69 = call i32 @ND_PRINT(i32* %68)
  br label %128

70:                                               ; preds = %15
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 7
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %130

75:                                               ; preds = %70
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @lldp_mdi_values, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bittok2str(i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @lldp_mdi_power_pairs_values, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @tok2str(i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @lldp_mdi_power_class_values, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 6
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @tok2str(i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i32*
  %94 = call i32 @ND_PRINT(i32* %93)
  br label %128

95:                                               ; preds = %15
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 9
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %4, align 4
  br label %130

100:                                              ; preds = %95
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* @lldp_aggregation_values, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @bittok2str(i32 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 5
  %109 = call i32 @EXTRACT_32BITS(i32* %108)
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i32*
  %112 = call i32 @ND_PRINT(i32* %111)
  br label %128

113:                                              ; preds = %15
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 6
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %4, align 4
  br label %130

118:                                              ; preds = %113
  %119 = load i32*, i32** %5, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = call i32 @EXTRACT_16BITS(i32* %121)
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i32*
  %125 = call i32 @ND_PRINT(i32* %124)
  br label %128

126:                                              ; preds = %15
  %127 = load i32, i32* @TRUE, align 4
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %126, %118, %100, %75, %33
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %116, %98, %73, %31, %13
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
