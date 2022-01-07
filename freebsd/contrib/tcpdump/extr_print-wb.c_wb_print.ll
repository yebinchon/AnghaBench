; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-wb.c_wb_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-wb.c_wb_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_hdr = type { i32, i64 }
%struct.pkt_id = type { i32 }
%struct.pkt_rreq = type { i32 }
%struct.pkt_rrep = type { i32 }
%struct.pkt_dop = type { i32 }
%struct.pkt_preq = type { i32 }
%struct.pkt_prep = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" wb-kill\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" wb-%d!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wb_print(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pkt_hdr*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.pkt_hdr*
  store %struct.pkt_hdr* %9, %struct.pkt_hdr** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 16
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %15 = bitcast %struct.pkt_hdr* %14 to { i32, i64 }*
  %16 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ND_TTEST(i32 %17, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %13, %3
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @tstr, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  %27 = call i32 @ND_PRINT(i32* %26)
  br label %145

28:                                               ; preds = %13
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %30, 16
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %34 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %42 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %137 [
    i32 132, label %44
    i32 133, label %47
    i32 128, label %62
    i32 129, label %77
    i32 134, label %92
    i32 130, label %107
    i32 131, label %122
  ]

44:                                               ; preds = %40
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.2 to i32*))
  br label %145

47:                                               ; preds = %40
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %50 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %49, i64 1
  %51 = bitcast %struct.pkt_hdr* %50 to %struct.pkt_id*
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @wb_id(i32* %48, %struct.pkt_id* %51, i32 %52)
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %145

56:                                               ; preds = %47
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @tstr, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @ND_PRINT(i32* %60)
  br label %145

62:                                               ; preds = %40
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %65 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %64, i64 1
  %66 = bitcast %struct.pkt_hdr* %65 to %struct.pkt_rreq*
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @wb_rreq(i32* %63, %struct.pkt_rreq* %66, i32 %67)
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %145

71:                                               ; preds = %62
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @tstr, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i32*
  %76 = call i32 @ND_PRINT(i32* %75)
  br label %145

77:                                               ; preds = %40
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %80 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %79, i64 1
  %81 = bitcast %struct.pkt_hdr* %80 to %struct.pkt_rrep*
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @wb_rrep(i32* %78, %struct.pkt_rrep* %81, i32 %82)
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %145

86:                                               ; preds = %77
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* @tstr, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i32*
  %91 = call i32 @ND_PRINT(i32* %90)
  br label %145

92:                                               ; preds = %40
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %95 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %94, i64 1
  %96 = bitcast %struct.pkt_hdr* %95 to %struct.pkt_dop*
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @wb_drawop(i32* %93, %struct.pkt_dop* %96, i32 %97)
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %145

101:                                              ; preds = %92
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* @tstr, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i32*
  %106 = call i32 @ND_PRINT(i32* %105)
  br label %145

107:                                              ; preds = %40
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %110 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %109, i64 1
  %111 = bitcast %struct.pkt_hdr* %110 to %struct.pkt_preq*
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @wb_preq(i32* %108, %struct.pkt_preq* %111, i32 %112)
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %145

116:                                              ; preds = %107
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* @tstr, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i32*
  %121 = call i32 @ND_PRINT(i32* %120)
  br label %145

122:                                              ; preds = %40
  %123 = load i32*, i32** %4, align 8
  %124 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %125 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %124, i64 1
  %126 = bitcast %struct.pkt_hdr* %125 to %struct.pkt_prep*
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @wb_prep(i32* %123, %struct.pkt_prep* %126, i32 %127)
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %145

131:                                              ; preds = %122
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* @tstr, align 4
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i32*
  %136 = call i32 @ND_PRINT(i32* %135)
  br label %145

137:                                              ; preds = %40
  %138 = load i32*, i32** %4, align 8
  %139 = load %struct.pkt_hdr*, %struct.pkt_hdr** %7, align 8
  %140 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i32*
  %144 = call i32 @ND_PRINT(i32* %143)
  br label %145

145:                                              ; preds = %22, %44, %55, %70, %85, %100, %115, %130, %137, %131, %116, %101, %86, %71, %56
  ret void
}

declare dso_local i32 @ND_TTEST(i32, i64) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @wb_id(i32*, %struct.pkt_id*, i32) #1

declare dso_local i32 @wb_rreq(i32*, %struct.pkt_rreq*, i32) #1

declare dso_local i32 @wb_rrep(i32*, %struct.pkt_rrep*, i32) #1

declare dso_local i32 @wb_drawop(i32*, %struct.pkt_dop*, i32) #1

declare dso_local i32 @wb_preq(i32*, %struct.pkt_preq*, i32) #1

declare dso_local i32 @wb_prep(i32*, %struct.pkt_prep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
