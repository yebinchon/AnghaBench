; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sll.c_sll_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sll.c_sll_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.pcap_pkthdr = type { i32, i32 }
%struct.sll_header = type { i32 }

@SLL_HDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"[|sll]\00", align 1
@ETHERMTU = common dso_local global i32 0, align 4
@ETHERTYPE_8021Q = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"[|vlan]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ethertype %s, \00", align 1
@ethertype_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sll_if_print(%struct.TYPE_8__* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sll_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %16 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %19 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SLL_HDR_LEN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([7 x i8]* @.str to %struct.TYPE_8__*))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %193

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  %30 = bitcast i32* %29 to %struct.sll_header*
  store %struct.sll_header* %30, %struct.sll_header** %10, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = load %struct.sll_header*, %struct.sll_header** %10, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @sll_print(%struct.TYPE_8__* %36, %struct.sll_header* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %28
  %41 = load i32, i32* @SLL_HDR_LEN, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @SLL_HDR_LEN, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @SLL_HDR_LEN, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %7, align 8
  %51 = load i32, i32* @SLL_HDR_LEN, align 4
  store i32 %51, i32* %13, align 4
  %52 = load %struct.sll_header*, %struct.sll_header** %10, align 8
  %53 = getelementptr inbounds %struct.sll_header, %struct.sll_header* %52, i32 0, i32 0
  %54 = call i8* @EXTRACT_16BITS(i32* %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %150, %40
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ETHERMTU, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  switch i32 %61, label %80 [
    i32 128, label %62
    i32 129, label %67
  ]

62:                                               ; preds = %60
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @ipx_print(%struct.TYPE_8__* %63, i32* %64, i32 %65)
  br label %91

67:                                               ; preds = %60
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @llc_print(%struct.TYPE_8__* %68, i32* %69, i32 %70, i32 %71, i32* null, i32* null)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %81

76:                                               ; preds = %67
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %91

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80, %75
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ND_DEFAULTPRINT(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %81
  br label %91

91:                                               ; preds = %90, %76, %62
  br label %191

92:                                               ; preds = %56
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @ETHERTYPE_8021Q, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %159

96:                                               ; preds = %92
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([8 x i8]* @.str.1 to %struct.TYPE_8__*))
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %4, align 4
  br label %193

105:                                              ; preds = %96
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([8 x i8]* @.str.1 to %struct.TYPE_8__*))
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %4, align 4
  br label %193

114:                                              ; preds = %105
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load i32*, i32** %7, align 8
  %121 = call i8* @EXTRACT_16BITS(i32* %120)
  store i8* %121, i8** %14, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 @ieee8021q_tci_string(i8* %123)
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to %struct.TYPE_8__*
  %127 = call i32 @ND_PRINT(%struct.TYPE_8__* %126)
  br label %128

128:                                              ; preds = %119, %114
  %129 = load i32*, i32** %7, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = call i8* @EXTRACT_16BITS(i32* %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @ETHERMTU, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 129, i32* %11, align 4
  br label %137

137:                                              ; preds = %136, %128
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = load i32, i32* @ethertype_values, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @tok2str(i32 %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to %struct.TYPE_8__*
  %149 = call i32 @ND_PRINT(%struct.TYPE_8__* %148)
  br label %150

150:                                              ; preds = %142, %137
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32* %152, i32** %7, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %153, 4
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %8, align 4
  %156 = sub nsw i32 %155, 4
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 4
  store i32 %158, i32* %13, align 4
  br label %56

159:                                              ; preds = %92
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i64 @ethertype_print(%struct.TYPE_8__* %160, i32 %161, i32* %162, i32 %163, i32 %164, i32* null, i32* null)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %159
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = load %struct.sll_header*, %struct.sll_header** %10, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @SLL_HDR_LEN, align 4
  %177 = add nsw i32 %175, %176
  %178 = call i32 @sll_print(%struct.TYPE_8__* %173, %struct.sll_header* %174, i32 %177)
  br label %179

179:                                              ; preds = %172, %167
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %179
  %185 = load i32*, i32** %7, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @ND_DEFAULTPRINT(i32* %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %179
  br label %189

189:                                              ; preds = %188, %159
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190, %91
  %192 = load i32, i32* %13, align 4
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %191, %108, %99, %24
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_8__*) #1

declare dso_local i32 @sll_print(%struct.TYPE_8__*, %struct.sll_header*, i32) #1

declare dso_local i8* @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ipx_print(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @llc_print(%struct.TYPE_8__*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i32) #1

declare dso_local i32 @ieee8021q_tci_string(i8*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i64 @ethertype_print(%struct.TYPE_8__*, i32, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
