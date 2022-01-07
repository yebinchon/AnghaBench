; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-wb.c_wb_dops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-wb.c_wb_dops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_dop = type { i32 }
%struct.dophdr = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@DT_MAXTYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" dop-%d!\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@dopstr = common dso_local global i32* null, align 8
@DT_SKIP = common dso_local global i32 0, align 4
@DT_HOLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"[|]\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.pkt_dop*, i64, i64)* @wb_dops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_dops(i32* %0, %struct.pkt_dop* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pkt_dop*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dophdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.pkt_dop* %1, %struct.pkt_dop** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.pkt_dop*, %struct.pkt_dop** %7, align 8
  %14 = bitcast %struct.pkt_dop* %13 to i32*
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = bitcast i32* %15 to %struct.dophdr*
  store %struct.dophdr* %16, %struct.dophdr** %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str to i32*))
  br label %19

19:                                               ; preds = %97, %4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %100

23:                                               ; preds = %19
  %24 = load %struct.dophdr*, %struct.dophdr** %10, align 8
  %25 = bitcast %struct.dophdr* %24 to i64*
  %26 = load i64, i64* %25, align 4
  %27 = call i32 @ND_TTEST(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @tstr, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @ND_PRINT(i32* %33)
  br label %100

35:                                               ; preds = %23
  %36 = load %struct.dophdr*, %struct.dophdr** %10, align 8
  %37 = getelementptr inbounds %struct.dophdr, %struct.dophdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @DT_MAXTYPE, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @ND_PRINT(i32* %46)
  br label %94

48:                                               ; preds = %35
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** @dopstr, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  %57 = call i32 @ND_PRINT(i32* %56)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @DT_SKIP, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @DT_HOLE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %61, %48
  %66 = load %struct.dophdr*, %struct.dophdr** %10, align 8
  %67 = getelementptr inbounds %struct.dophdr, %struct.dophdr* %66, i32 0, i32 1
  %68 = call i64 @EXTRACT_32BITS(i32* %67)
  store i64 %68, i64* %12, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %8, align 8
  %72 = sub nsw i64 %70, %71
  %73 = add nsw i64 %72, 1
  %74 = inttoptr i64 %73 to i32*
  %75 = call i32 @ND_PRINT(i32* %74)
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %65
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79, %65
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.5 to i32*))
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %103

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i64, i64* %12, align 8
  store i64 %92, i64* %8, align 8
  br label %93

93:                                               ; preds = %91, %61
  br label %94

94:                                               ; preds = %93, %42
  %95 = load %struct.dophdr*, %struct.dophdr** %10, align 8
  %96 = call %struct.dophdr* @DOP_NEXT(%struct.dophdr* %95)
  store %struct.dophdr* %96, %struct.dophdr** %10, align 8
  br label %97

97:                                               ; preds = %94
  %98 = load i64, i64* %8, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %8, align 8
  br label %19

100:                                              ; preds = %29, %19
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str.6 to i32*))
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %89
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TTEST(i64) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local %struct.dophdr* @DOP_NEXT(%struct.dophdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
