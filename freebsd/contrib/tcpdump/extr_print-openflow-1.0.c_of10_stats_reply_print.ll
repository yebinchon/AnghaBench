; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_stats_reply_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_stats_reply_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"\0A\09 type %s\00", align 1
@ofpst_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid (0x%04x)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c", flags 0x%04x\00", align 1
@ofpsf_reply_bm = common dso_local global i32 0, align 4
@OFPSF_REPLY_U = common dso_local global i32 0, align 4
@OFPST_DESC = common dso_local global i64 0, align 8
@OFPST_FLOW = common dso_local global i64 0, align 8
@OFPST_AGGREGATE = common dso_local global i64 0, align 8
@OFPST_TABLE = common dso_local global i64 0, align 8
@OFPST_PORT = common dso_local global i64 0, align 8
@OFPST_QUEUE = common dso_local global i64 0, align 8
@OFPST_VENDOR = common dso_local global i64 0, align 8
@OF_STATS_REPLY_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, i32*, i32*, i32)* @of10_stats_reply_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_stats_reply_print(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32* (%struct.TYPE_13__*, i32*, i32*, i32)*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ND_TCHECK2(i32 %15, i32 2)
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @EXTRACT_16BITS(i32* %17)
  store i64 %18, i64* %11, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = load i32, i32* @ofpst_str, align 4
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @tok2str(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_13__*
  %25 = call i32 @ND_PRINT(%struct.TYPE_13__* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ND_TCHECK2(i32 %29, i32 2)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @EXTRACT_16BITS(i32* %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_13__*
  %35 = call i32 @ND_PRINT(%struct.TYPE_13__* %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = load i32, i32* @ofpsf_reply_bm, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @EXTRACT_16BITS(i32* %38)
  %40 = load i32, i32* @OFPSF_REPLY_U, align 4
  %41 = call i32 @of10_bitmap_print(%struct.TYPE_13__* %36, i32 %37, i64 %39, i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32* %43, i32** %7, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %108

48:                                               ; preds = %4
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @OFPST_DESC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %94

53:                                               ; preds = %48
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @OFPST_FLOW, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %92

58:                                               ; preds = %53
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @OFPST_AGGREGATE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %90

63:                                               ; preds = %58
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @OFPST_TABLE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %88

68:                                               ; preds = %63
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @OFPST_PORT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %86

73:                                               ; preds = %68
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @OFPST_QUEUE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %84

78:                                               ; preds = %73
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* @OFPST_VENDOR, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32* (%struct.TYPE_13__*, i32*, i32*, i32)* @of10_vendor_data_print, i32* (%struct.TYPE_13__*, i32*, i32*, i32)* null
  br label %84

84:                                               ; preds = %78, %77
  %85 = phi i32* (%struct.TYPE_13__*, i32*, i32*, i32)* [ @of10_queue_stats_reply_print, %77 ], [ %83, %78 ]
  br label %86

86:                                               ; preds = %84, %72
  %87 = phi i32* (%struct.TYPE_13__*, i32*, i32*, i32)* [ @of10_port_stats_reply_print, %72 ], [ %85, %84 ]
  br label %88

88:                                               ; preds = %86, %67
  %89 = phi i32* (%struct.TYPE_13__*, i32*, i32*, i32)* [ @of10_table_stats_reply_print, %67 ], [ %87, %86 ]
  br label %90

90:                                               ; preds = %88, %62
  %91 = phi i32* (%struct.TYPE_13__*, i32*, i32*, i32)* [ @of10_aggregate_stats_reply_print, %62 ], [ %89, %88 ]
  br label %92

92:                                               ; preds = %90, %57
  %93 = phi i32* (%struct.TYPE_13__*, i32*, i32*, i32)* [ @of10_flow_stats_reply_print, %57 ], [ %91, %90 ]
  br label %94

94:                                               ; preds = %92, %52
  %95 = phi i32* (%struct.TYPE_13__*, i32*, i32*, i32)* [ @of10_desc_stats_reply_print, %52 ], [ %93, %92 ]
  store i32* (%struct.TYPE_13__*, i32*, i32*, i32)* %95, i32* (%struct.TYPE_13__*, i32*, i32*, i32)** %12, align 8
  %96 = load i32* (%struct.TYPE_13__*, i32*, i32*, i32)*, i32* (%struct.TYPE_13__*, i32*, i32*, i32)** %12, align 8
  %97 = icmp ne i32* (%struct.TYPE_13__*, i32*, i32*, i32)* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32* (%struct.TYPE_13__*, i32*, i32*, i32)*, i32* (%struct.TYPE_13__*, i32*, i32*, i32)** %12, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @OF_STATS_REPLY_LEN, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i32* %99(%struct.TYPE_13__* %100, i32* %101, i32* %102, i32 %105)
  store i32* %106, i32** %5, align 8
  br label %124

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %4
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @ND_TCHECK2(i32 %110, i32 %111)
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32* %116, i32** %5, align 8
  br label %124

117:                                              ; No predecessors!
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %119 = load i32, i32* @tstr, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to %struct.TYPE_13__*
  %122 = call i32 @ND_PRINT(%struct.TYPE_13__* %121)
  %123 = load i32*, i32** %8, align 8
  store i32* %123, i32** %5, align 8
  br label %124

124:                                              ; preds = %117, %108, %98
  %125 = load i32*, i32** %5, align 8
  ret i32* %125
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_13__*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @of10_bitmap_print(%struct.TYPE_13__*, i32, i64, i32) #1

declare dso_local i32* @of10_desc_stats_reply_print(%struct.TYPE_13__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_flow_stats_reply_print(%struct.TYPE_13__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_aggregate_stats_reply_print(%struct.TYPE_13__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_table_stats_reply_print(%struct.TYPE_13__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_port_stats_reply_print(%struct.TYPE_13__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_queue_stats_reply_print(%struct.TYPE_13__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_vendor_data_print(%struct.TYPE_13__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
