; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_bgp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_bgp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }
%struct.bgp = type { i32, i32 }

@__const.bgp_print.marker = private unnamed_addr constant [16 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@.str = private unnamed_addr constant [6 x i8] c": BGP\00", align 1
@BGP_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" [|BGP]\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\0A[|BGP Bogus header length %u < %u]\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\0A[|BGP %s]\00", align 1
@bgp_msg_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Unknown Message Type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgp_print(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca %struct.bgp, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = bitcast [16 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([16 x i32]* @__const.bgp_print.marker to i8*), i64 64, i1 false)
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = icmp ult i32* %20, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([6 x i8]* @.str to %struct.TYPE_5__*))
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %138

38:                                               ; preds = %30
  %39 = load i32*, i32** %5, align 8
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  store i32* %40, i32** %9, align 8
  br label %41

41:                                               ; preds = %133, %72, %57, %38
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ult i32* %42, %43
  br i1 %44, label %45, label %134

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ND_TTEST2(i32 %48, i32 1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %134

52:                                               ; preds = %45
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 255
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %7, align 8
  br label %41

60:                                               ; preds = %52
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ND_TTEST2(i32 %63, i32 64)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %134

67:                                               ; preds = %60
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %70 = call i64 @memcmp(i32* %68, i32* %69, i32 64)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %7, align 8
  br label %41

75:                                               ; preds = %67
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BGP_SIZE, align 4
  %80 = call i32 @ND_TCHECK2(i32 %78, i32 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* @BGP_SIZE, align 4
  %83 = call i32 @memcpy(%struct.bgp* %11, i32* %81, i32 %82)
  %84 = load i32*, i32** %9, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = icmp ne i32* %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([8 x i8]* @.str.1 to %struct.TYPE_5__*))
  br label %90

90:                                               ; preds = %87, %75
  %91 = getelementptr inbounds %struct.bgp, %struct.bgp* %11, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ntohs(i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @BGP_SIZE, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @BGP_SIZE, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to %struct.TYPE_5__*
  %103 = call i32 @ND_PRINT(%struct.TYPE_5__* %102)
  br label %134

104:                                              ; preds = %90
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i64 @ND_TTEST2(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %104
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @bgp_header_print(%struct.TYPE_5__* %112, i32* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %138

118:                                              ; preds = %111
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %7, align 8
  %123 = load i32*, i32** %7, align 8
  store i32* %123, i32** %9, align 8
  br label %133

124:                                              ; preds = %104
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = load i32, i32* @bgp_msg_values, align 4
  %127 = getelementptr inbounds %struct.bgp, %struct.bgp* %11, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @tok2str(i32 %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to %struct.TYPE_5__*
  %132 = call i32 @ND_PRINT(%struct.TYPE_5__* %131)
  br label %134

133:                                              ; preds = %118
  br label %41

134:                                              ; preds = %124, %97, %66, %51, %41
  br label %138

135:                                              ; No predecessors!
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([8 x i8]* @.str.1 to %struct.TYPE_5__*))
  br label %138

138:                                              ; preds = %135, %134, %117, %37
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #2

declare dso_local i64 @ND_TTEST2(i32, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @ND_TCHECK2(i32, i32) #2

declare dso_local i32 @memcpy(%struct.bgp*, i32*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @bgp_header_print(%struct.TYPE_5__*, i32*, i32) #2

declare dso_local i32 @tok2str(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
