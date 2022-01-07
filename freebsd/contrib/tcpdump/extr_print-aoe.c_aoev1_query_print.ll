; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aoe.c_aoev1_query_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aoe.c_aoev1_query_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@AOEV1_QUERY_ARG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"\0A\09Buffer Count: %u\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c", Firmware Version: %u\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c", Sector Count: %u\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c", AoE: %u, CCmd: %s\00", align 1
@aoev1_ccmd_str = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Unknown (0x02x)\00", align 1
@AOEV1_MAX_CONFSTR_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"\0A\09Config String (length %u): \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32)* @aoev1_query_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aoev1_query_print(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @AOEV1_QUERY_ARG_LEN, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %110

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ND_TCHECK2(i32 %19, i32 2)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @EXTRACT_16BITS(i32* %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_5__*
  %26 = call i32 @ND_PRINT(%struct.TYPE_5__* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ND_TCHECK2(i32 %30, i32 2)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @EXTRACT_16BITS(i32* %33)
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %struct.TYPE_5__*
  %37 = call i32 @ND_PRINT(%struct.TYPE_5__* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ND_TCHECK2(i32 %41, i32 1)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to %struct.TYPE_5__*
  %48 = call i32 @ND_PRINT(%struct.TYPE_5__* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32* %50, i32** %5, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ND_TCHECK2(i32 %52, i32 1)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 240
  %58 = ashr i32 %57, 4
  %59 = load i32, i32* @aoev1_ccmd_str, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 15
  %63 = call i32 @tok2str(i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.TYPE_5__*
  %66 = call i32 @ND_PRINT(%struct.TYPE_5__* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32* %68, i32** %5, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ND_TCHECK2(i32 %70, i32 2)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @EXTRACT_16BITS(i32* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32* %75, i32** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @AOEV1_MAX_CONFSTR_LEN, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %17
  %80 = load i32, i32* @AOEV1_QUERY_ARG_LEN, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79, %17
  br label %110

86:                                               ; preds = %79
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @ND_TCHECK2(i32 %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %86
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to %struct.TYPE_5__*
  %98 = call i32 @ND_PRINT(%struct.TYPE_5__* %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @fn_printn(%struct.TYPE_5__* %99, i32* %100, i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %126

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %86
  br label %132

110:                                              ; preds = %85, %16
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = load i32, i32* @istr, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to %struct.TYPE_5__*
  %115 = call i32 @ND_PRINT(%struct.TYPE_5__* %114)
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = ptrtoint i32* %118 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = call i32 @ND_TCHECK2(i32 %117, i32 %124)
  br label %132

126:                                              ; preds = %107
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = load i32, i32* @tstr, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to %struct.TYPE_5__*
  %131 = call i32 @ND_PRINT(%struct.TYPE_5__* %130)
  br label %132

132:                                              ; preds = %126, %110, %109
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i64 @fn_printn(%struct.TYPE_5__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
