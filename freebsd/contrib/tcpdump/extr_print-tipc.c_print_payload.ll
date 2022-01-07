; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-tipc.c_print_payload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-tipc.c_print_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.payload_tipc_pkthdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [93 x i8] c"TIPC v%u.0 %u.%u.%u:%u > %u, headerlength %u bytes, MessageSize %u bytes, %s, messageType %s\00", align 1
@tipcuser_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@tipcmtype_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"TIPC v%u.0 %u.%u.%u:%u > %u.%u.%u:%u, headerlength %u bytes, MessageSize %u bytes, %s, messageType %s\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"\0A\09Previous Node %u.%u.%u, Broadcast Ack %u, Link Ack %u, Link Sequence %u\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.payload_tipc_pkthdr*)* @print_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_payload(%struct.TYPE_4__* %0, %struct.payload_tipc_pkthdr* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.payload_tipc_pkthdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.payload_tipc_pkthdr* %1, %struct.payload_tipc_pkthdr** %4, align 8
  %20 = load %struct.payload_tipc_pkthdr*, %struct.payload_tipc_pkthdr** %4, align 8
  %21 = getelementptr inbounds %struct.payload_tipc_pkthdr, %struct.payload_tipc_pkthdr* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ND_TCHECK(i32 %22)
  %24 = load %struct.payload_tipc_pkthdr*, %struct.payload_tipc_pkthdr** %4, align 8
  %25 = getelementptr inbounds %struct.payload_tipc_pkthdr, %struct.payload_tipc_pkthdr* %24, i32 0, i32 7
  %26 = call i8* @EXTRACT_32BITS(i32* %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @TIPC_USER(i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @TIPC_HSIZE(i8* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @TIPC_MSIZE(i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.payload_tipc_pkthdr*, %struct.payload_tipc_pkthdr** %4, align 8
  %34 = getelementptr inbounds %struct.payload_tipc_pkthdr, %struct.payload_tipc_pkthdr* %33, i32 0, i32 6
  %35 = call i8* @EXTRACT_32BITS(i32* %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @TIPC_MTYPE(i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.payload_tipc_pkthdr*, %struct.payload_tipc_pkthdr** %4, align 8
  %39 = getelementptr inbounds %struct.payload_tipc_pkthdr, %struct.payload_tipc_pkthdr* %38, i32 0, i32 5
  %40 = call i8* @EXTRACT_32BITS(i32* %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = load %struct.payload_tipc_pkthdr*, %struct.payload_tipc_pkthdr** %4, align 8
  %43 = getelementptr inbounds %struct.payload_tipc_pkthdr, %struct.payload_tipc_pkthdr* %42, i32 0, i32 4
  %44 = call i8* @EXTRACT_32BITS(i32* %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load %struct.payload_tipc_pkthdr*, %struct.payload_tipc_pkthdr** %4, align 8
  %47 = getelementptr inbounds %struct.payload_tipc_pkthdr, %struct.payload_tipc_pkthdr* %46, i32 0, i32 3
  %48 = call i8* @EXTRACT_32BITS(i32* %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sle i32 %50, 6
  br i1 %51, label %52, label %76

52:                                               ; preds = %2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @TIPC_VER(i8* %54)
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @TIPC_ZONE(i32 %56)
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @TIPC_CLUSTER(i32 %58)
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @TIPC_NODE(i32 %60)
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 %64, 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @tipcuser_values, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @tok2str(i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @tipcmtype_values, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @tok2str(i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to %struct.TYPE_4__*
  %75 = call i32 @ND_PRINT(%struct.TYPE_4__* %74)
  br label %146

76:                                               ; preds = %2
  %77 = load %struct.payload_tipc_pkthdr*, %struct.payload_tipc_pkthdr** %4, align 8
  %78 = getelementptr inbounds %struct.payload_tipc_pkthdr, %struct.payload_tipc_pkthdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ND_TCHECK(i32 %79)
  %81 = load %struct.payload_tipc_pkthdr*, %struct.payload_tipc_pkthdr** %4, align 8
  %82 = getelementptr inbounds %struct.payload_tipc_pkthdr, %struct.payload_tipc_pkthdr* %81, i32 0, i32 2
  %83 = call i8* @EXTRACT_32BITS(i32* %82)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %18, align 4
  %85 = load %struct.payload_tipc_pkthdr*, %struct.payload_tipc_pkthdr** %4, align 8
  %86 = getelementptr inbounds %struct.payload_tipc_pkthdr, %struct.payload_tipc_pkthdr* %85, i32 0, i32 1
  %87 = call i8* @EXTRACT_32BITS(i32* %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %19, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @TIPC_VER(i8* %90)
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @TIPC_ZONE(i32 %92)
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @TIPC_CLUSTER(i32 %94)
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @TIPC_NODE(i32 %96)
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @TIPC_ZONE(i32 %99)
  %101 = load i32, i32* %19, align 4
  %102 = call i32 @TIPC_CLUSTER(i32 %101)
  %103 = load i32, i32* %19, align 4
  %104 = call i32 @TIPC_NODE(i32 %103)
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 %106, 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @tipcuser_values, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @tok2str(i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @tipcmtype_values, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @tok2str(i32 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to %struct.TYPE_4__*
  %117 = call i32 @ND_PRINT(%struct.TYPE_4__* %116)
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %76
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @TIPC_BROADCAST_ACK(i8* %123)
  store i32 %124, i32* %12, align 4
  %125 = load %struct.payload_tipc_pkthdr*, %struct.payload_tipc_pkthdr** %4, align 8
  %126 = getelementptr inbounds %struct.payload_tipc_pkthdr, %struct.payload_tipc_pkthdr* %125, i32 0, i32 0
  %127 = call i8* @EXTRACT_32BITS(i32* %126)
  store i8* %127, i8** %7, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @TIPC_LINK_ACK(i8* %128)
  store i32 %129, i32* %13, align 4
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @TIPC_LINK_SEQ(i8* %130)
  store i32 %131, i32* %14, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @TIPC_ZONE(i32 %133)
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @TIPC_CLUSTER(i32 %135)
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @TIPC_NODE(i32 %137)
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to %struct.TYPE_4__*
  %144 = call i32 @ND_PRINT(%struct.TYPE_4__* %143)
  br label %145

145:                                              ; preds = %122, %76
  br label %146

146:                                              ; preds = %145, %52
  br label %153

147:                                              ; No predecessors!
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %149 = load i32, i32* @tstr, align 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to %struct.TYPE_4__*
  %152 = call i32 @ND_PRINT(%struct.TYPE_4__* %151)
  br label %153

153:                                              ; preds = %147, %146
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i8* @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @TIPC_USER(i8*) #1

declare dso_local i32 @TIPC_HSIZE(i8*) #1

declare dso_local i32 @TIPC_MSIZE(i8*) #1

declare dso_local i32 @TIPC_MTYPE(i8*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

declare dso_local i32 @TIPC_VER(i8*) #1

declare dso_local i32 @TIPC_ZONE(i32) #1

declare dso_local i32 @TIPC_CLUSTER(i32) #1

declare dso_local i32 @TIPC_NODE(i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @TIPC_BROADCAST_ACK(i8*) #1

declare dso_local i32 @TIPC_LINK_ACK(i8*) #1

declare dso_local i32 @TIPC_LINK_SEQ(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
