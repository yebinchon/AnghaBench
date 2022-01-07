; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-igrp.c_igrp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-igrp.c_igrp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igrphdr = type { i32, i32, i32, i32, i32, i32 }
%struct.igrprte = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"igrp:\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c" %s V%d edit=%d AS=%d (%d/%d/%d)\00", align 1
@op2str = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"op-#%d\00", align 1
@IGRP_RTE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c" [extra bytes %d]\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" [|igrp]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igrp_print(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.igrphdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.igrphdr, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.igrphdr*
  store %struct.igrphdr* %14, %struct.igrphdr** %7, align 8
  %15 = load %struct.igrphdr*, %struct.igrphdr** %7, align 8
  %16 = getelementptr inbounds %struct.igrphdr, %struct.igrphdr* %15, i64 1
  %17 = bitcast %struct.igrphdr* %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str to i32*))
  %20 = load %struct.igrphdr*, %struct.igrphdr** %7, align 8
  %21 = bitcast %struct.igrphdr* %12 to i8*
  %22 = bitcast %struct.igrphdr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 4 %22, i64 24, i1 false)
  %23 = call i32 @ND_TCHECK(%struct.igrphdr* byval(%struct.igrphdr) align 8 %12)
  %24 = load %struct.igrphdr*, %struct.igrphdr** %7, align 8
  %25 = getelementptr inbounds %struct.igrphdr, %struct.igrphdr* %24, i32 0, i32 5
  %26 = call i64 @EXTRACT_16BITS(i32* %25)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.igrphdr*, %struct.igrphdr** %7, align 8
  %28 = getelementptr inbounds %struct.igrphdr, %struct.igrphdr* %27, i32 0, i32 4
  %29 = call i64 @EXTRACT_16BITS(i32* %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.igrphdr*, %struct.igrphdr** %7, align 8
  %31 = getelementptr inbounds %struct.igrphdr, %struct.igrphdr* %30, i32 0, i32 3
  %32 = call i64 @EXTRACT_16BITS(i32* %31)
  store i64 %32, i64* %11, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @op2str, align 4
  %35 = load %struct.igrphdr*, %struct.igrphdr** %7, align 8
  %36 = getelementptr inbounds %struct.igrphdr, %struct.igrphdr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IGRP_OP(i32 %37)
  %39 = call i32 @tok2str(i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.igrphdr*, %struct.igrphdr** %7, align 8
  %41 = getelementptr inbounds %struct.igrphdr, %struct.igrphdr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IGRP_V(i32 %42)
  %44 = load %struct.igrphdr*, %struct.igrphdr** %7, align 8
  %45 = getelementptr inbounds %struct.igrphdr, %struct.igrphdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.igrphdr*, %struct.igrphdr** %7, align 8
  %48 = getelementptr inbounds %struct.igrphdr, %struct.igrphdr* %47, i32 0, i32 0
  %49 = call i64 @EXTRACT_16BITS(i32* %48)
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @ND_PRINT(i32* %53)
  %55 = load i64, i64* %6, align 8
  %56 = sub i64 %55, 24
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %110, %3
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @IGRP_RTE_SIZE, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %117

61:                                               ; preds = %57
  %62 = load i64, i64* %9, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @IGRP_RTE_SIZE, align 8
  %68 = call i32 @ND_TCHECK2(i32 %66, i64 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = bitcast i32* %70 to %struct.igrprte*
  %72 = call i32 @igrp_entry_print(i32* %69, %struct.igrprte* %71, i32 1, i32 0)
  %73 = load i64, i64* %9, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %9, align 8
  br label %110

75:                                               ; preds = %61
  %76 = load i64, i64* %10, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* @IGRP_RTE_SIZE, align 8
  %82 = call i32 @ND_TCHECK2(i32 %80, i64 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = bitcast i32* %84 to %struct.igrprte*
  %86 = call i32 @igrp_entry_print(i32* %83, %struct.igrprte* %85, i32 0, i32 0)
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %10, align 8
  br label %109

89:                                               ; preds = %75
  %90 = load i64, i64* %11, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* @IGRP_RTE_SIZE, align 8
  %96 = call i32 @ND_TCHECK2(i32 %94, i64 %95)
  %97 = load i32*, i32** %4, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = bitcast i32* %98 to %struct.igrprte*
  %100 = call i32 @igrp_entry_print(i32* %97, %struct.igrprte* %99, i32 0, i32 1)
  %101 = load i64, i64* %11, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* %11, align 8
  br label %108

103:                                              ; preds = %89
  %104 = load i32*, i32** %4, align 8
  %105 = load i64, i64* %6, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = call i32 @ND_PRINT(i32* %106)
  br label %117

108:                                              ; preds = %92
  br label %109

109:                                              ; preds = %108, %78
  br label %110

110:                                              ; preds = %109, %64
  %111 = load i64, i64* @IGRP_RTE_SIZE, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 %111
  store i32* %113, i32** %8, align 8
  %114 = load i64, i64* @IGRP_RTE_SIZE, align 8
  %115 = load i64, i64* %6, align 8
  %116 = sub nsw i64 %115, %114
  store i64 %116, i64* %6, align 8
  br label %57

117:                                              ; preds = %103, %57
  %118 = load i64, i64* %9, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i64, i64* %10, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i64, i64* %11, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %131

127:                                              ; preds = %123, %120, %117
  br label %128

128:                                              ; preds = %127
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.4 to i32*))
  br label %131

131:                                              ; preds = %128, %126
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK(%struct.igrphdr* byval(%struct.igrphdr) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @IGRP_OP(i32) #1

declare dso_local i32 @IGRP_V(i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i64) #1

declare dso_local i32 @igrp_entry_print(i32*, %struct.igrprte*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
