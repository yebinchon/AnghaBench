; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_genoptlv_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_genoptlv_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.forces_tlv = type { i32, i32 }

@TLV_HDRL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"genoptlvprint - %s TLV type 0x%x len %d\0A\00", align 1
@ForCES_TLV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s TLV type 0x%x len %d\0A\00", align 1
@ForCES_TLV_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"%s%s, length %d (data length %d Bytes)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\09\09\09Invalid ForCES TLV type=%x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i8*, i8*, i32)* @genoptlv_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genoptlv_print(%struct.TYPE_5__* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.forces_tlv*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = bitcast i32* %18 to %struct.forces_tlv*
  store %struct.forces_tlv* %19, %struct.forces_tlv** %12, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i8* @indent_pr(i32 %20, i32 0)
  store i8* %21, i8** %16, align 8
  %22 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %23 = bitcast %struct.forces_tlv* %22 to i64*
  %24 = load i64, i64* %23, align 4
  %25 = call i32 @ND_TCHECK(i64 %24)
  %26 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %27 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %26, i32 0, i32 1
  %28 = call i8* @EXTRACT_16BITS(i32* %27)
  store i8* %28, i8** %13, align 8
  %29 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %30 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %29, i32 0, i32 0
  %31 = call i8* @EXTRACT_16BITS(i32* %30)
  %32 = load i8*, i8** @TLV_HDRL, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %14, align 4
  %37 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i8* @tlv_valid(%struct.forces_tlv* %37, i8* %38)
  store i8* %39, i8** %15, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = load i32, i32* @ForCES_TLV, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @tok2str(i32 %41, i32* null, i8* %42)
  %44 = load i8*, i8** %13, align 8
  %45 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %46 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %45, i32 0, i32 0
  %47 = call i8* @EXTRACT_16BITS(i32* %46)
  %48 = bitcast i8* %47 to %struct.TYPE_5__*
  %49 = call i32 @ND_PRINT(%struct.TYPE_5__* %48)
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %96, label %52

52:                                               ; preds = %5
  %53 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %54 = call i64 @TLV_DATA(%struct.forces_tlv* %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %17, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @ttlv_valid(i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = load i32, i32* @ForCES_TLV_err, align 4
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @tok2str(i32 %61, i32* null, i8* %62)
  %64 = load i8*, i8** %13, align 8
  %65 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %66 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %65, i32 0, i32 0
  %67 = call i8* @EXTRACT_16BITS(i32* %66)
  %68 = bitcast i8* %67 to %struct.TYPE_5__*
  %69 = call i32 @ND_PRINT(%struct.TYPE_5__* %68)
  store i32 -1, i32* %6, align 4
  br label %107

70:                                               ; preds = %52
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 3
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = load i32, i32* @ForCES_TLV, align 4
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @tok2str(i32 %78, i32* null, i8* %79)
  %81 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %82 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %81, i32 0, i32 0
  %83 = call i8* @EXTRACT_16BITS(i32* %82)
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to %struct.TYPE_5__*
  %87 = call i32 @ND_PRINT(%struct.TYPE_5__* %86)
  br label %88

88:                                               ; preds = %75, %70
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i32 @pdata_print(%struct.TYPE_5__* %89, i32* %90, i32 %91, i8* %92, i32 %94)
  store i32 %95, i32* %6, align 4
  br label %107

96:                                               ; preds = %5
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = bitcast i8* %98 to %struct.TYPE_5__*
  %100 = call i32 @ND_PRINT(%struct.TYPE_5__* %99)
  store i32 -1, i32* %6, align 4
  br label %107

101:                                              ; No predecessors!
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = load i32, i32* @tstr, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to %struct.TYPE_5__*
  %106 = call i32 @ND_PRINT(%struct.TYPE_5__* %105)
  store i32 -1, i32* %6, align 4
  br label %107

107:                                              ; preds = %101, %96, %88, %59
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i8* @indent_pr(i32, i32) #1

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i8* @EXTRACT_16BITS(i32*) #1

declare dso_local i8* @tlv_valid(%struct.forces_tlv*, i8*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i32*, i8*) #1

declare dso_local i64 @TLV_DATA(%struct.forces_tlv*) #1

declare dso_local i32 @ttlv_valid(i8*) #1

declare dso_local i32 @pdata_print(%struct.TYPE_5__*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
