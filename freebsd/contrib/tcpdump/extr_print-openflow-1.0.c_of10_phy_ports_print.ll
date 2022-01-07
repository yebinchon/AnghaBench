; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_phy_ports_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_phy_ports_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@OF_PHY_PORT_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"\0A\09  port_no %s\00", align 1
@ofpp_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@ETHER_ADDR_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c", hw_addr %s\00", align 1
@OFP_MAX_PORT_NAME_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c", name '\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\0A\09   config 0x%08x\00", align 1
@ofppc_bm = common dso_local global i32 0, align 4
@OFPPC_U = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"\0A\09   state 0x%08x\00", align 1
@ofpps_bm = common dso_local global i32 0, align 4
@OFPPS_U = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"\0A\09   curr 0x%08x\00", align 1
@ofppf_bm = common dso_local global i32 0, align 4
@OFPPF_U = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"\0A\09   advertised 0x%08x\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"\0A\09   supported 0x%08x\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"\0A\09   peer 0x%08x\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32*, i32*, i64)* @of10_phy_ports_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_phy_ports_print(%struct.TYPE_7__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %7, align 8
  store i32* %12, i32** %10, align 8
  %13 = load i64, i64* %9, align 8
  store i64 %13, i64* %11, align 8
  br label %14

14:                                               ; preds = %183, %4
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %187

17:                                               ; preds = %14
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @OF_PHY_PORT_LEN, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %189

22:                                               ; preds = %17
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ND_TCHECK2(i32 %24, i64 2)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = load i32, i32* @ofpp_str, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @EXTRACT_16BITS(i32* %28)
  %30 = call i32 @tok2str(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.TYPE_7__*
  %33 = call i32 @ND_PRINT(%struct.TYPE_7__* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %39 = call i32 @ND_TCHECK2(i32 %37, i64 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @etheraddr_string(%struct.TYPE_7__* %41, i32* %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.TYPE_7__*
  %46 = call i32 @ND_PRINT(%struct.TYPE_7__* %45)
  %47 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 %47
  store i32* %49, i32** %7, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @OFP_MAX_PORT_NAME_LEN, align 4
  %53 = sext i32 %52 to i64
  %54 = call i32 @ND_TCHECK2(i32 %51, i64 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([9 x i8]* @.str.3 to %struct.TYPE_7__*))
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @OFP_MAX_PORT_NAME_LEN, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @fn_print(%struct.TYPE_7__* %57, i32* %58, i32* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.4 to %struct.TYPE_7__*))
  %66 = load i32, i32* @OFP_MAX_PORT_NAME_LEN, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %7, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %80

74:                                               ; preds = %22
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ND_TCHECK2(i32 %76, i64 24)
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 24
  store i32* %79, i32** %7, align 8
  br label %183

80:                                               ; preds = %22
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ND_TCHECK2(i32 %82, i64 4)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @EXTRACT_32BITS(i32* %85)
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to %struct.TYPE_7__*
  %89 = call i32 @ND_PRINT(%struct.TYPE_7__* %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = load i32, i32* @ofppc_bm, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @EXTRACT_32BITS(i32* %92)
  %94 = load i32, i32* @OFPPC_U, align 4
  %95 = call i32 @of10_bitmap_print(%struct.TYPE_7__* %90, i32 %91, i32 %93, i32 %94)
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32* %97, i32** %7, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ND_TCHECK2(i32 %99, i64 4)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @EXTRACT_32BITS(i32* %102)
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to %struct.TYPE_7__*
  %106 = call i32 @ND_PRINT(%struct.TYPE_7__* %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = load i32, i32* @ofpps_bm, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @EXTRACT_32BITS(i32* %109)
  %111 = load i32, i32* @OFPPS_U, align 4
  %112 = call i32 @of10_bitmap_print(%struct.TYPE_7__* %107, i32 %108, i32 %110, i32 %111)
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  store i32* %114, i32** %7, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ND_TCHECK2(i32 %116, i64 4)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @EXTRACT_32BITS(i32* %119)
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to %struct.TYPE_7__*
  %123 = call i32 @ND_PRINT(%struct.TYPE_7__* %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %125 = load i32, i32* @ofppf_bm, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @EXTRACT_32BITS(i32* %126)
  %128 = load i32, i32* @OFPPF_U, align 4
  %129 = call i32 @of10_bitmap_print(%struct.TYPE_7__* %124, i32 %125, i32 %127, i32 %128)
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  store i32* %131, i32** %7, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ND_TCHECK2(i32 %133, i64 4)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @EXTRACT_32BITS(i32* %136)
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to %struct.TYPE_7__*
  %140 = call i32 @ND_PRINT(%struct.TYPE_7__* %139)
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %142 = load i32, i32* @ofppf_bm, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @EXTRACT_32BITS(i32* %143)
  %145 = load i32, i32* @OFPPF_U, align 4
  %146 = call i32 @of10_bitmap_print(%struct.TYPE_7__* %141, i32 %142, i32 %144, i32 %145)
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 4
  store i32* %148, i32** %7, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ND_TCHECK2(i32 %150, i64 4)
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @EXTRACT_32BITS(i32* %153)
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to %struct.TYPE_7__*
  %157 = call i32 @ND_PRINT(%struct.TYPE_7__* %156)
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %159 = load i32, i32* @ofppf_bm, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @EXTRACT_32BITS(i32* %160)
  %162 = load i32, i32* @OFPPF_U, align 4
  %163 = call i32 @of10_bitmap_print(%struct.TYPE_7__* %158, i32 %159, i32 %161, i32 %162)
  %164 = load i32*, i32** %7, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 4
  store i32* %165, i32** %7, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ND_TCHECK2(i32 %167, i64 4)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = call i32 @EXTRACT_32BITS(i32* %170)
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to %struct.TYPE_7__*
  %174 = call i32 @ND_PRINT(%struct.TYPE_7__* %173)
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %176 = load i32, i32* @ofppf_bm, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @EXTRACT_32BITS(i32* %177)
  %179 = load i32, i32* @OFPPF_U, align 4
  %180 = call i32 @of10_bitmap_print(%struct.TYPE_7__* %175, i32 %176, i32 %178, i32 %179)
  %181 = load i32*, i32** %7, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 4
  store i32* %182, i32** %7, align 8
  br label %183

183:                                              ; preds = %80, %74
  %184 = load i64, i64* @OF_PHY_PORT_LEN, align 8
  %185 = load i64, i64* %9, align 8
  %186 = sub nsw i64 %185, %184
  store i64 %186, i64* %9, align 8
  br label %14

187:                                              ; preds = %14
  %188 = load i32*, i32** %7, align 8
  store i32* %188, i32** %5, align 8
  br label %209

189:                                              ; preds = %21
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %191 = load i32, i32* @istr, align 4
  %192 = sext i32 %191 to i64
  %193 = inttoptr i64 %192 to %struct.TYPE_7__*
  %194 = call i32 @ND_PRINT(%struct.TYPE_7__* %193)
  %195 = load i32*, i32** %10, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load i64, i64* %11, align 8
  %198 = call i32 @ND_TCHECK2(i32 %196, i64 %197)
  %199 = load i32*, i32** %10, align 8
  %200 = load i64, i64* %11, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %5, align 8
  br label %209

202:                                              ; No predecessors!
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %204 = load i32, i32* @tstr, align 4
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to %struct.TYPE_7__*
  %207 = call i32 @ND_PRINT(%struct.TYPE_7__* %206)
  %208 = load i32*, i32** %8, align 8
  store i32* %208, i32** %5, align 8
  br label %209

209:                                              ; preds = %202, %189, %187
  %210 = load i32*, i32** %5, align 8
  ret i32* %210
}

declare dso_local i32 @ND_TCHECK2(i32, i64) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @etheraddr_string(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @fn_print(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @of10_bitmap_print(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
