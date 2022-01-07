; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_recpdoptlv_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_recpdoptlv_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.forces_tlv = type { i32, i32 }

@TLV_HDRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"%s%s, length %d (data encapsulated %d Bytes)\00", align 1
@ForCES_TLV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"\0A\09\09Messy PATHDATA TLV header, type (0x%x)\0A\09\09excess of %d Bytes \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64, i64, i32)* @recpdoptlv_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recpdoptlv_print(%struct.TYPE_5__* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.forces_tlv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = bitcast i32* %18 to %struct.forces_tlv*
  store %struct.forces_tlv* %19, %struct.forces_tlv** %12, align 8
  br label %20

20:                                               ; preds = %79, %5
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %83

23:                                               ; preds = %20
  %24 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %25 = bitcast %struct.forces_tlv* %24 to i64*
  %26 = load i64, i64* %25, align 4
  %27 = call i32 @ND_TCHECK(i64 %26)
  %28 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @tlv_valid(%struct.forces_tlv* %28, i64 %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %83

34:                                               ; preds = %23
  %35 = load i32, i32* %11, align 4
  %36 = call i8* @indent_pr(i32 %35, i32 0)
  store i8* %36, i8** %17, align 8
  %37 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %38 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %37, i32 0, i32 1
  %39 = call i64 @EXTRACT_16BITS(i32* %38)
  store i64 %39, i64* %15, align 8
  %40 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %41 = call i64 @TLV_DATA(%struct.forces_tlv* %40)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %16, align 8
  %43 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %44 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %43, i32 0, i32 0
  %45 = call i64 @EXTRACT_16BITS(i32* %44)
  %46 = load i64, i64* @TLV_HDRL, align 8
  %47 = sub nsw i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 3
  br i1 %52, label %53, label %69

53:                                               ; preds = %34
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = load i32, i32* @ForCES_TLV, align 4
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @tok2str(i32 %56, i32* null, i64 %57)
  %59 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %60 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %59, i32 0, i32 0
  %61 = call i64 @EXTRACT_16BITS(i32* %60)
  %62 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %63 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %62, i32 0, i32 0
  %64 = call i64 @EXTRACT_16BITS(i32* %63)
  %65 = load i64, i64* @TLV_HDRL, align 8
  %66 = sub nsw i64 %64, %65
  %67 = inttoptr i64 %66 to %struct.TYPE_5__*
  %68 = call i32 @ND_PRINT(%struct.TYPE_5__* %67)
  br label %69

69:                                               ; preds = %53, %34
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @pdata_print(%struct.TYPE_5__* %70, i32* %71, i32 %72, i64 %73, i32 %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 -1, i32* %6, align 4
  br label %105

79:                                               ; preds = %69
  %80 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call %struct.forces_tlv* @GO_NXT_TLV(%struct.forces_tlv* %80, i64 %81)
  store %struct.forces_tlv* %82, %struct.forces_tlv** %12, align 8
  br label %20

83:                                               ; preds = %33, %20
  %84 = load i64, i64* %9, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %88 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %89 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %88, i32 0, i32 1
  %90 = call i64 @EXTRACT_16BITS(i32* %89)
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %93 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %92, i32 0, i32 0
  %94 = call i64 @EXTRACT_16BITS(i32* %93)
  %95 = sub nsw i64 %91, %94
  %96 = inttoptr i64 %95 to %struct.TYPE_5__*
  %97 = call i32 @ND_PRINT(%struct.TYPE_5__* %96)
  store i32 -1, i32* %6, align 4
  br label %105

98:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %105

99:                                               ; No predecessors!
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %101 = load i32, i32* @tstr, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to %struct.TYPE_5__*
  %104 = call i32 @ND_PRINT(%struct.TYPE_5__* %103)
  store i32 -1, i32* %6, align 4
  br label %105

105:                                              ; preds = %99, %98, %86, %78
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i64 @tlv_valid(%struct.forces_tlv*, i64) #1

declare dso_local i8* @indent_pr(i32, i32) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i64 @TLV_DATA(%struct.forces_tlv*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i32*, i64) #1

declare dso_local i32 @pdata_print(%struct.TYPE_5__*, i32*, i32, i64, i32) #1

declare dso_local %struct.forces_tlv* @GO_NXT_TLV(%struct.forces_tlv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
