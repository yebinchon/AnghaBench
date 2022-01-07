; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf6.c_ospf6_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf6.c_ospf6_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ospf6hdr = type { i32, i64, i64, i64, i64, i64 }

@ospf6_type_values = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown packet type (%u)\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"OSPFv%u, %s, length %d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" [len %d]\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\0A\09Router-ID %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c", Area %s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c", Backbone Area\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c", Instance %u\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ospf6_print(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ospf6hdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.ospf6hdr*
  store %struct.ospf6hdr* %12, %struct.ospf6hdr** %7, align 8
  %13 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %14 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @ND_TCHECK(i64 %15)
  %17 = load i32, i32* @ospf6_type_values, align 4
  %18 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %19 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = call i8* @tok2str(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %20)
  store i8* %21, i8** %9, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %24 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.TYPE_7__*
  %30 = call i32 @ND_PRINT(%struct.TYPE_7__* %29)
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 117
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %140

36:                                               ; preds = %3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %140

42:                                               ; preds = %36
  %43 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %44 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ND_TCHECK(i64 %45)
  %47 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %48 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %47, i32 0, i32 4
  %49 = call i32 @EXTRACT_16BITS(i64* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.TYPE_7__*
  %58 = call i32 @ND_PRINT(%struct.TYPE_7__* %57)
  br label %140

59:                                               ; preds = %42
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %8, align 8
  %64 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %65 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ND_TCHECK(i64 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %71 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %70, i32 0, i32 3
  %72 = call i32 @ipaddr_string(%struct.TYPE_7__* %69, i64* %71)
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to %struct.TYPE_7__*
  %75 = call i32 @ND_PRINT(%struct.TYPE_7__* %74)
  %76 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %77 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @ND_TCHECK(i64 %78)
  %80 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %81 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %80, i32 0, i32 2
  %82 = call i64 @EXTRACT_32BITS(i64* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %59
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %88 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %87, i32 0, i32 2
  %89 = call i32 @ipaddr_string(%struct.TYPE_7__* %86, i64* %88)
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to %struct.TYPE_7__*
  %92 = call i32 @ND_PRINT(%struct.TYPE_7__* %91)
  br label %96

93:                                               ; preds = %59
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([16 x i8]* @.str.5 to %struct.TYPE_7__*))
  br label %96

96:                                               ; preds = %93, %84
  %97 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %98 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @ND_TCHECK(i64 %99)
  %101 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %102 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %96
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %108 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.TYPE_7__*
  %111 = call i32 @ND_PRINT(%struct.TYPE_7__* %110)
  br label %112

112:                                              ; preds = %105, %96
  %113 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %114 = getelementptr inbounds %struct.ospf6hdr, %struct.ospf6hdr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %133 [
    i32 3, label %116
  ]

116:                                              ; preds = %112
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @ospf6_decode_v3(%struct.TYPE_7__* %117, %struct.ospf6hdr* %118, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = load %struct.ospf6hdr*, %struct.ospf6hdr** %7, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 %126, %127
  %129 = call i32 @ospf6_decode_v3_trailer(%struct.TYPE_7__* %123, %struct.ospf6hdr* %124, i32* %125, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122, %116
  br label %134

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %112, %132
  br label %140

134:                                              ; preds = %131
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = load i32, i32* @tstr, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to %struct.TYPE_7__*
  %139 = call i32 @ND_PRINT(%struct.TYPE_7__* %138)
  br label %140

140:                                              ; preds = %134, %133, %53, %41, %35
  ret void
}

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i8* @tok2str(i32, i8*, i64) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @EXTRACT_16BITS(i64*) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_7__*, i64*) #1

declare dso_local i64 @EXTRACT_32BITS(i64*) #1

declare dso_local i32 @ospf6_decode_v3(%struct.TYPE_7__*, %struct.ospf6hdr*, i32*) #1

declare dso_local i32 @ospf6_decode_v3_trailer(%struct.TYPE_7__*, %struct.ospf6hdr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
