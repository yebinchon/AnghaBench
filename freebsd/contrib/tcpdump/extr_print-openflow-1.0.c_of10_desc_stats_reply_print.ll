; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_desc_stats_reply_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_desc_stats_reply_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OF_DESC_STATS_LEN = common dso_local global i64 0, align 8
@DESC_STR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"\0A\09  mfr_desc '\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\0A\09  hw_desc '\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\0A\09  sw_desc '\00", align 1
@SERIAL_NUM_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"\0A\09  serial_num '\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\0A\09  dp_desc '\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i64)* @of10_desc_stats_reply_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_desc_stats_reply_print(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OF_DESC_STATS_LEN, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %115

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DESC_STR_LEN, align 4
  %18 = sext i32 %17 to i64
  %19 = call i32 @ND_TCHECK2(i32 %16, i64 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str to i32*))
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @DESC_STR_LEN, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @fn_print(i32* %22, i32* %23, i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  %31 = load i32, i32* @DESC_STR_LEN, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DESC_STR_LEN, align 4
  %38 = sext i32 %37 to i64
  %39 = call i32 @ND_TCHECK2(i32 %36, i64 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.2 to i32*))
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @DESC_STR_LEN, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @fn_print(i32* %42, i32* %43, i32* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  %51 = load i32, i32* @DESC_STR_LEN, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DESC_STR_LEN, align 4
  %58 = sext i32 %57 to i64
  %59 = call i32 @ND_TCHECK2(i32 %56, i64 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.3 to i32*))
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @DESC_STR_LEN, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @fn_print(i32* %62, i32* %63, i32* %67)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  %71 = load i32, i32* @DESC_STR_LEN, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SERIAL_NUM_LEN, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 @ND_TCHECK2(i32 %76, i64 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @ND_PRINT(i32* bitcast ([17 x i8]* @.str.4 to i32*))
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* @SERIAL_NUM_LEN, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @fn_print(i32* %82, i32* %83, i32* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  %91 = load i32, i32* @SERIAL_NUM_LEN, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %7, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @DESC_STR_LEN, align 4
  %98 = sext i32 %97 to i64
  %99 = call i32 @ND_TCHECK2(i32 %96, i64 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.5 to i32*))
  %102 = load i32*, i32** %6, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* @DESC_STR_LEN, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = call i32 @fn_print(i32* %102, i32* %103, i32* %107)
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* @DESC_STR_LEN, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32* %114, i32** %5, align 8
  br label %135

115:                                              ; preds = %13
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* @istr, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i32*
  %120 = call i32 @ND_PRINT(i32* %119)
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @ND_TCHECK2(i32 %122, i64 %123)
  %125 = load i32*, i32** %7, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %5, align 8
  br label %135

128:                                              ; No predecessors!
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* @tstr, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i32*
  %133 = call i32 @ND_PRINT(i32* %132)
  %134 = load i32*, i32** %8, align 8
  store i32* %134, i32** %5, align 8
  br label %135

135:                                              ; preds = %128, %115, %14
  %136 = load i32*, i32** %5, align 8
  ret i32* %136
}

declare dso_local i32 @ND_TCHECK2(i32, i64) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @fn_print(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
