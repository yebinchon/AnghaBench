; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arp.c_atmarp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arp.c_atmarp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.atmarp_pkthdr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ARP, \00", align 1
@ETHERTYPE_IP = common dso_local global i64 0, align 8
@ETHERTYPE_TRAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"%s, %s (len %u/%u)\00", align 1
@arphrd_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown Hardware (%u)\00", align 1
@ethertype_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Unknown Protocol (0x%04x)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s%s \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@arpop_values = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"Unknown (%u)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"who-has \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" tell \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" is-at \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"who-is \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"at \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"for \00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c", length %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32, i32)* @atmarp_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmarp_print(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atmarp_pkthdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.atmarp_pkthdr*
  store %struct.atmarp_pkthdr* %14, %struct.atmarp_pkthdr** %9, align 8
  %15 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %16 = getelementptr inbounds %struct.atmarp_pkthdr, %struct.atmarp_pkthdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ND_TCHECK(i32 %17)
  %19 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %20 = call i64 @ATMHRD(%struct.atmarp_pkthdr* %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %22 = call i64 @ATMPRO(%struct.atmarp_pkthdr* %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %24 = call i64 @ATMOP(%struct.atmarp_pkthdr* %23)
  store i64 %24, i64* %12, align 8
  %25 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %26 = call i32* @aar_tpa(%struct.atmarp_pkthdr* %25)
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %29 = call i32 @ATMTPROTO_LEN(%struct.atmarp_pkthdr* %28)
  %30 = call i32 @ND_TTEST2(i32 %27, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = load i32, i32* @tstr, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %struct.TYPE_7__*
  %37 = call i32 @ND_PRINT(%struct.TYPE_7__* %36)
  %38 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %39 = bitcast %struct.atmarp_pkthdr* %38 to i32*
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ND_DEFAULTPRINT(i32* %39, i32 %40)
  br label %223

42:                                               ; preds = %4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([6 x i8]* @.str.1 to %struct.TYPE_7__*))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @ETHERTYPE_IP, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @ETHERTYPE_TRAIL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %71, label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %60 = call i32 @ATMSPROTO_LEN(%struct.atmarp_pkthdr* %59)
  %61 = icmp ne i32 %60, 4
  br i1 %61, label %71, label %62

62:                                               ; preds = %58
  %63 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %64 = call i32 @ATMTPROTO_LEN(%struct.atmarp_pkthdr* %63)
  %65 = icmp ne i32 %64, 4
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %66, %62, %58, %54
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = load i32, i32* @arphrd_values, align 4
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @tok2str(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @ethertype_values, align 4
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @tok2str(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %77)
  %79 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %80 = call i32 @ATMSPROTO_LEN(%struct.atmarp_pkthdr* %79)
  %81 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %82 = call i32 @ATMTPROTO_LEN(%struct.atmarp_pkthdr* %81)
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.TYPE_7__*
  %85 = call i32 @ND_PRINT(%struct.TYPE_7__* %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %71
  br label %211

91:                                               ; preds = %71
  br label %92

92:                                               ; preds = %91, %66
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %100 = load i32, i32* @arpop_values, align 4
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @tok2str(i32 %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64 %101)
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to %struct.TYPE_7__*
  %105 = call i32 @ND_PRINT(%struct.TYPE_7__* %104)
  %106 = load i64, i64* %12, align 8
  switch i64 %106, label %205 [
    i64 128, label %107
    i64 129, label %139
    i64 131, label %156
    i64 132, label %181
    i64 130, label %198
  ]

107:                                              ; preds = %92
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([9 x i8]* @.str.9 to %struct.TYPE_7__*))
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @atmarp_tpaddr_print(%struct.TYPE_7__* %110, %struct.atmarp_pkthdr* %111, i64 %112)
  %114 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %115 = call i32 @ATMTHRD_LEN(%struct.atmarp_pkthdr* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %107
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([3 x i8]* @.str.10 to %struct.TYPE_7__*))
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %122 = call i32 @ATMTHA(%struct.atmarp_pkthdr* %121)
  %123 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %124 = call i32 @ATMTHRD_LEN(%struct.atmarp_pkthdr* %123)
  %125 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %126 = call i32 @ATMTSA(%struct.atmarp_pkthdr* %125)
  %127 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %128 = call i32 @ATMTSLN(%struct.atmarp_pkthdr* %127)
  %129 = call i32 @atmarp_addr_print(%struct.TYPE_7__* %120, i32 %122, i32 %124, i32 %126, i32 %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.11 to %struct.TYPE_7__*))
  br label %132

132:                                              ; preds = %117, %107
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %134 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([7 x i8]* @.str.12 to %struct.TYPE_7__*))
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %137 = load i64, i64* %10, align 8
  %138 = call i32 @atmarp_spaddr_print(%struct.TYPE_7__* %135, %struct.atmarp_pkthdr* %136, i64 %137)
  br label %210

139:                                              ; preds = %92
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %141 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %142 = load i64, i64* %10, align 8
  %143 = call i32 @atmarp_spaddr_print(%struct.TYPE_7__* %140, %struct.atmarp_pkthdr* %141, i64 %142)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %145 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.13 to %struct.TYPE_7__*))
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %148 = call i32 @ATMSHA(%struct.atmarp_pkthdr* %147)
  %149 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %150 = call i32 @ATMSHRD_LEN(%struct.atmarp_pkthdr* %149)
  %151 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %152 = call i32 @ATMSSA(%struct.atmarp_pkthdr* %151)
  %153 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %154 = call i32 @ATMSSLN(%struct.atmarp_pkthdr* %153)
  %155 = call i32 @atmarp_addr_print(%struct.TYPE_7__* %146, i32 %148, i32 %150, i32 %152, i32 %154)
  br label %210

156:                                              ; preds = %92
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %158 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.14 to %struct.TYPE_7__*))
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %161 = call i32 @ATMTHA(%struct.atmarp_pkthdr* %160)
  %162 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %163 = call i32 @ATMTHRD_LEN(%struct.atmarp_pkthdr* %162)
  %164 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %165 = call i32 @ATMTSA(%struct.atmarp_pkthdr* %164)
  %166 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %167 = call i32 @ATMTSLN(%struct.atmarp_pkthdr* %166)
  %168 = call i32 @atmarp_addr_print(%struct.TYPE_7__* %159, i32 %161, i32 %163, i32 %165, i32 %167)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %170 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([7 x i8]* @.str.12 to %struct.TYPE_7__*))
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %172 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %173 = call i32 @ATMSHA(%struct.atmarp_pkthdr* %172)
  %174 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %175 = call i32 @ATMSHRD_LEN(%struct.atmarp_pkthdr* %174)
  %176 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %177 = call i32 @ATMSSA(%struct.atmarp_pkthdr* %176)
  %178 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %179 = call i32 @ATMSSLN(%struct.atmarp_pkthdr* %178)
  %180 = call i32 @atmarp_addr_print(%struct.TYPE_7__* %171, i32 %173, i32 %175, i32 %177, i32 %179)
  br label %210

181:                                              ; preds = %92
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %183 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %184 = call i32 @ATMSHA(%struct.atmarp_pkthdr* %183)
  %185 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %186 = call i32 @ATMSHRD_LEN(%struct.atmarp_pkthdr* %185)
  %187 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %188 = call i32 @ATMSSA(%struct.atmarp_pkthdr* %187)
  %189 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %190 = call i32 @ATMSSLN(%struct.atmarp_pkthdr* %189)
  %191 = call i32 @atmarp_addr_print(%struct.TYPE_7__* %182, i32 %184, i32 %186, i32 %188, i32 %190)
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %193 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([4 x i8]* @.str.15 to %struct.TYPE_7__*))
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %195 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %196 = load i64, i64* %10, align 8
  %197 = call i32 @atmarp_spaddr_print(%struct.TYPE_7__* %194, %struct.atmarp_pkthdr* %195, i64 %196)
  br label %210

198:                                              ; preds = %92
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %200 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([5 x i8]* @.str.16 to %struct.TYPE_7__*))
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %202 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %203 = load i64, i64* %10, align 8
  %204 = call i32 @atmarp_spaddr_print(%struct.TYPE_7__* %201, %struct.atmarp_pkthdr* %202, i64 %203)
  br label %210

205:                                              ; preds = %92
  %206 = load %struct.atmarp_pkthdr*, %struct.atmarp_pkthdr** %9, align 8
  %207 = bitcast %struct.atmarp_pkthdr* %206 to i32*
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @ND_DEFAULTPRINT(i32* %207, i32 %208)
  br label %223

210:                                              ; preds = %198, %181, %156, %139, %132
  br label %211

211:                                              ; preds = %210, %90
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to %struct.TYPE_7__*
  %216 = call i32 @ND_PRINT(%struct.TYPE_7__* %215)
  br label %223

217:                                              ; No predecessors!
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %219 = load i32, i32* @tstr, align 4
  %220 = sext i32 %219 to i64
  %221 = inttoptr i64 %220 to %struct.TYPE_7__*
  %222 = call i32 @ND_PRINT(%struct.TYPE_7__* %221)
  br label %223

223:                                              ; preds = %217, %211, %205, %32
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i64 @ATMHRD(%struct.atmarp_pkthdr*) #1

declare dso_local i64 @ATMPRO(%struct.atmarp_pkthdr*) #1

declare dso_local i64 @ATMOP(%struct.atmarp_pkthdr*) #1

declare dso_local i32 @ND_TTEST2(i32, i32) #1

declare dso_local i32* @aar_tpa(%struct.atmarp_pkthdr*) #1

declare dso_local i32 @ATMTPROTO_LEN(%struct.atmarp_pkthdr*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i32) #1

declare dso_local i32 @ATMSPROTO_LEN(%struct.atmarp_pkthdr*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @atmarp_tpaddr_print(%struct.TYPE_7__*, %struct.atmarp_pkthdr*, i64) #1

declare dso_local i32 @ATMTHRD_LEN(%struct.atmarp_pkthdr*) #1

declare dso_local i32 @atmarp_addr_print(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @ATMTHA(%struct.atmarp_pkthdr*) #1

declare dso_local i32 @ATMTSA(%struct.atmarp_pkthdr*) #1

declare dso_local i32 @ATMTSLN(%struct.atmarp_pkthdr*) #1

declare dso_local i32 @atmarp_spaddr_print(%struct.TYPE_7__*, %struct.atmarp_pkthdr*, i64) #1

declare dso_local i32 @ATMSHA(%struct.atmarp_pkthdr*) #1

declare dso_local i32 @ATMSHRD_LEN(%struct.atmarp_pkthdr*) #1

declare dso_local i32 @ATMSSA(%struct.atmarp_pkthdr*) #1

declare dso_local i32 @ATMSSLN(%struct.atmarp_pkthdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
