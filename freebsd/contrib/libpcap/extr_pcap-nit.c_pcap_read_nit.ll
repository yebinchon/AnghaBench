; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-nit.c_pcap_read_nit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-nit.c_pcap_read_nit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, %struct.TYPE_6__, i32, i64, i64, i32, i32, %struct.pcap_nit* }
%struct.TYPE_6__ = type { i32 }
%struct.pcap_nit = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pcap_pkthdr = type { i32, i32, i32 }
%struct.nit_hdr = type { i32, i32, i32, i32, i32 }

@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"pcap_read\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bad nit state %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32*)* @pcap_read_nit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_read_nit(%struct.TYPE_7__* %0, i32 %1, i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, %struct.pcap_pkthdr*, i32*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcap_nit*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nit_hdr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.pcap_pkthdr, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 9
  %21 = load %struct.pcap_nit*, %struct.pcap_nit** %20, align 8
  store %struct.pcap_nit* %21, %struct.pcap_nit** %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @read(i32 %30, i8* %34, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %27
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EWOULDBLOCK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %203

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* @errno, align 8
  %51 = call i32 @pcap_fmt_errmsg_for_errno(i32 %49, i32 4, i64 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %203

52:                                               ; preds = %27
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %13, align 8
  br label %61

57:                                               ; preds = %4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %13, align 8
  br label %61

61:                                               ; preds = %57, %52
  store i32 0, i32* %12, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %15, align 8
  br label %66

66:                                               ; preds = %198, %111, %104, %61
  %67 = load i32*, i32** %13, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = icmp ult i32* %67, %68
  br i1 %69, label %70, label %199

70:                                               ; preds = %66
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  store i32 -2, i32* %5, align 4
  br label %203

81:                                               ; preds = %75
  %82 = load i32*, i32** %15, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = ptrtoint i32* %82 to i64
  %85 = ptrtoint i32* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %5, align 4
  br label %203

95:                                               ; preds = %70
  %96 = load i32*, i32** %13, align 8
  %97 = bitcast i32* %96 to %struct.nit_hdr*
  store %struct.nit_hdr* %97, %struct.nit_hdr** %16, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 20
  store i32* %99, i32** %14, align 8
  %100 = load %struct.nit_hdr*, %struct.nit_hdr** %16, align 8
  %101 = getelementptr inbounds %struct.nit_hdr, %struct.nit_hdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %112 [
    i32 132, label %103
    i32 130, label %104
    i32 131, label %104
    i32 129, label %104
    i32 128, label %111
  ]

103:                                              ; preds = %95
  br label %120

104:                                              ; preds = %95, %95, %95
  %105 = load %struct.nit_hdr*, %struct.nit_hdr** %16, align 8
  %106 = getelementptr inbounds %struct.nit_hdr, %struct.nit_hdr* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.pcap_nit*, %struct.pcap_nit** %10, align 8
  %109 = getelementptr inbounds %struct.pcap_nit, %struct.pcap_nit* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  br label %66

111:                                              ; preds = %95
  br label %66

112:                                              ; preds = %95
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.nit_hdr*, %struct.nit_hdr** %16, align 8
  %117 = getelementptr inbounds %struct.nit_hdr, %struct.nit_hdr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pcap_snprintf(i32 %115, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  store i32 -1, i32* %5, align 4
  br label %203

120:                                              ; preds = %103
  %121 = load %struct.pcap_nit*, %struct.pcap_nit** %10, align 8
  %122 = getelementptr inbounds %struct.pcap_nit, %struct.pcap_nit* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.nit_hdr*, %struct.nit_hdr** %16, align 8
  %127 = getelementptr inbounds %struct.nit_hdr, %struct.nit_hdr* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 20, %129
  %131 = add i64 %130, 4
  %132 = sub i64 %131, 1
  %133 = and i64 %132, -4
  %134 = load i32*, i32** %13, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 %133
  store i32* %135, i32** %13, align 8
  %136 = load %struct.nit_hdr*, %struct.nit_hdr** %16, align 8
  %137 = getelementptr inbounds %struct.nit_hdr, %struct.nit_hdr* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %139, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %120
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %17, align 4
  br label %148

148:                                              ; preds = %144, %120
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = load %struct.nit_hdr*, %struct.nit_hdr** %16, align 8
  %155 = getelementptr inbounds %struct.nit_hdr, %struct.nit_hdr* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %17, align 4
  %158 = call i64 @bpf_filter(i32 %152, i32* %153, i32 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %198

160:                                              ; preds = %148
  %161 = load %struct.nit_hdr*, %struct.nit_hdr** %16, align 8
  %162 = getelementptr inbounds %struct.nit_hdr, %struct.nit_hdr* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %18, i32 0, i32 2
  store i32 %163, i32* %164, align 4
  %165 = load %struct.nit_hdr*, %struct.nit_hdr** %16, align 8
  %166 = getelementptr inbounds %struct.nit_hdr, %struct.nit_hdr* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %18, i32 0, i32 0
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* %17, align 4
  %170 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %18, i32 0, i32 1
  store i32 %169, i32* %170, align 4
  %171 = load i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = load i32*, i32** %14, align 8
  %174 = call i32 %171(i32* %172, %struct.pcap_pkthdr* %18, i32* %173)
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp sge i32 %176, %177
  br i1 %178, label %179, label %197

179:                                              ; preds = %160
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @PACKET_COUNT_IS_UNLIMITED(i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %197, label %183

183:                                              ; preds = %179
  %184 = load i32*, i32** %15, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = ptrtoint i32* %184 to i64
  %187 = ptrtoint i32* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 4
  %190 = trunc i64 %189 to i32
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load i32*, i32** %13, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 2
  store i32* %193, i32** %195, align 8
  %196 = load i32, i32* %12, align 4
  store i32 %196, i32* %5, align 4
  br label %203

197:                                              ; preds = %179, %160
  br label %198

198:                                              ; preds = %197, %148
  br label %66

199:                                              ; preds = %66
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  %202 = load i32, i32* %12, align 4
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %199, %183, %112, %81, %78, %46, %45
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i64, i8*) #1

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @bpf_filter(i32, i32*, i32, i32) #1

declare dso_local i32 @PACKET_COUNT_IS_UNLIMITED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
