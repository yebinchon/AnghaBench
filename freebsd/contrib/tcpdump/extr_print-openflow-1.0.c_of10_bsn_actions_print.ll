; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_bsn_actions_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_bsn_actions_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"\0A\09  subtype %s\00", align 1
@bsn_action_subtype_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown (0x%08x)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c", dest_port %u\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c", vlan_tag none\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c", vlan_tag 802.1Q (%s)\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c", vlan_tag unknown (0x%04x)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c", copy_stage %s\00", align 1
@bsn_mirror_copy_stage_str = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"unknown (%u)\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32)* @of10_bsn_actions_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_bsn_actions_print(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %108

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ND_TCHECK2(i32 %19, i32 4)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @EXTRACT_32BITS(i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @bsn_action_subtype_str, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @tok2str(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @ND_PRINT(i32* %30)
  %32 = load i32, i32* %11, align 4
  switch i32 %32, label %95 [
    i32 129, label %33
  ]

33:                                               ; preds = %17
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 16
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %108

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ND_TCHECK2(i32 %39, i32 4)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @EXTRACT_32BITS(i32* %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @ND_PRINT(i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ND_TCHECK2(i32 %50, i32 4)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @EXTRACT_32BITS(i32* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32* %55, i32** %7, align 8
  %56 = load i32, i32* %12, align 4
  %57 = ashr i32 %56, 16
  switch i32 %57, label %69 [
    i32 0, label %58
    i32 128, label %61
  ]

58:                                               ; preds = %37
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @ND_PRINT(i32* bitcast ([16 x i8]* @.str.3 to i32*))
  br label %76

61:                                               ; preds = %37
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 65535
  %65 = call i32 @ieee8021q_tci_string(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @ND_PRINT(i32* %67)
  br label %76

69:                                               ; preds = %37
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 %71, 16
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i32*
  %75 = call i32 @ND_PRINT(i32* %74)
  br label %76

76:                                               ; preds = %69, %61, %58
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ND_TCHECK2(i32 %78, i32 1)
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* @bsn_mirror_copy_stage_str, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @tok2str(i32 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i32*
  %87 = call i32 @ND_PRINT(i32* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ND_TCHECK2(i32 %91, i32 3)
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32* %94, i32** %7, align 8
  br label %106

95:                                               ; preds = %17
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %98, 4
  %100 = call i32 @ND_TCHECK2(i32 %97, i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %101, 4
  %103 = load i32*, i32** %7, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %7, align 8
  br label %106

106:                                              ; preds = %95, %76
  %107 = load i32*, i32** %7, align 8
  store i32* %107, i32** %5, align 8
  br label %129

108:                                              ; preds = %36, %16
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* @istr, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i32*
  %113 = call i32 @ND_PRINT(i32* %112)
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @ND_TCHECK2(i32 %115, i32 %116)
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32* %121, i32** %5, align 8
  br label %129

122:                                              ; No predecessors!
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* @tstr, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i32*
  %127 = call i32 @ND_PRINT(i32* %126)
  %128 = load i32*, i32** %8, align 8
  store i32* %128, i32** %5, align 8
  br label %129

129:                                              ; preds = %122, %108, %106
  %130 = load i32*, i32** %5, align 8
  ret i32* %130
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ieee8021q_tci_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
