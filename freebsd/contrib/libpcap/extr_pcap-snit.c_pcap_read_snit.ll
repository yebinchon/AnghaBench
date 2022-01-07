; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snit.c_pcap_read_snit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snit.c_pcap_read_snit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, %struct.TYPE_6__, i64, i64, i32, i32, i32, %struct.pcap_snit* }
%struct.TYPE_6__ = type { i32 }
%struct.pcap_snit = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pcap_pkthdr = type { i32, i32, i32 }
%struct.nit_bufhdr = type { i32 }
%struct.nit_iftime = type { i32 }
%struct.nit_iflen = type { i32 }
%struct.nit_ifdrops = type { i32 }

@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"pcap_read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32*)* @pcap_read_snit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_read_snit(%struct.TYPE_7__* %0, i32 %1, i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, %struct.pcap_pkthdr*, i32*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcap_snit*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nit_bufhdr*, align 8
  %17 = alloca %struct.nit_iftime*, align 8
  %18 = alloca %struct.nit_iflen*, align 8
  %19 = alloca %struct.nit_ifdrops*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.pcap_pkthdr, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 9
  %24 = load %struct.pcap_snit*, %struct.pcap_snit** %23, align 8
  store %struct.pcap_snit* %24, %struct.pcap_snit** %10, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @read(i32 %33, i8* %37, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %30
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EWOULDBLOCK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %200

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* @errno, align 8
  %54 = call i32 @pcap_fmt_errmsg_for_errno(i32 %52, i32 4, i64 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %200

55:                                               ; preds = %30
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %13, align 8
  br label %64

60:                                               ; preds = %4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %13, align 8
  br label %64

64:                                               ; preds = %60, %55
  store i32 0, i32* %12, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32* %68, i32** %15, align 8
  br label %69

69:                                               ; preds = %195, %64
  %70 = load i32*, i32** %13, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = icmp ult i32* %70, %71
  br i1 %72, label %73, label %196

73:                                               ; preds = %69
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  store i32 -2, i32* %5, align 4
  br label %200

84:                                               ; preds = %78
  %85 = load i32*, i32** %13, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store i32* %85, i32** %87, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = ptrtoint i32* %88 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %200

98:                                               ; preds = %73
  %99 = load %struct.pcap_snit*, %struct.pcap_snit** %10, align 8
  %100 = getelementptr inbounds %struct.pcap_snit, %struct.pcap_snit* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load i32*, i32** %13, align 8
  store i32* %104, i32** %14, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = bitcast i32* %105 to %struct.nit_bufhdr*
  store %struct.nit_bufhdr* %106, %struct.nit_bufhdr** %16, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  store i32* %108, i32** %14, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = bitcast i32* %109 to %struct.nit_iftime*
  store %struct.nit_iftime* %110, %struct.nit_iftime** %17, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  store i32* %112, i32** %14, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = bitcast i32* %113 to %struct.nit_ifdrops*
  store %struct.nit_ifdrops* %114, %struct.nit_ifdrops** %19, align 8
  %115 = load %struct.nit_ifdrops*, %struct.nit_ifdrops** %19, align 8
  %116 = getelementptr inbounds %struct.nit_ifdrops, %struct.nit_ifdrops* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.pcap_snit*, %struct.pcap_snit** %10, align 8
  %119 = getelementptr inbounds %struct.pcap_snit, %struct.pcap_snit* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 4
  %121 = load i32*, i32** %14, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  store i32* %122, i32** %14, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = bitcast i32* %123 to %struct.nit_iflen*
  store %struct.nit_iflen* %124, %struct.nit_iflen** %18, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  store i32* %126, i32** %14, align 8
  %127 = load %struct.nit_bufhdr*, %struct.nit_bufhdr** %16, align 8
  %128 = getelementptr inbounds %struct.nit_bufhdr, %struct.nit_bufhdr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %13, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %13, align 8
  %133 = load %struct.nit_iflen*, %struct.nit_iflen** %18, align 8
  %134 = getelementptr inbounds %struct.nit_iflen, %struct.nit_iflen* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* %20, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp sgt i32 %136, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %98
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %20, align 4
  br label %145

145:                                              ; preds = %141, %98
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** %14, align 8
  %151 = load %struct.nit_iflen*, %struct.nit_iflen** %18, align 8
  %152 = getelementptr inbounds %struct.nit_iflen, %struct.nit_iflen* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %20, align 4
  %155 = call i64 @bpf_filter(i32 %149, i32* %150, i32 %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %195

157:                                              ; preds = %145
  %158 = load %struct.nit_iftime*, %struct.nit_iftime** %17, align 8
  %159 = getelementptr inbounds %struct.nit_iftime, %struct.nit_iftime* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %21, i32 0, i32 2
  store i32 %160, i32* %161, align 4
  %162 = load %struct.nit_iflen*, %struct.nit_iflen** %18, align 8
  %163 = getelementptr inbounds %struct.nit_iflen, %struct.nit_iflen* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %21, i32 0, i32 0
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* %20, align 4
  %167 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %21, i32 0, i32 1
  store i32 %166, i32* %167, align 4
  %168 = load i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = load i32*, i32** %14, align 8
  %171 = call i32 %168(i32* %169, %struct.pcap_pkthdr* %21, i32* %170)
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp sge i32 %173, %174
  br i1 %175, label %176, label %194

176:                                              ; preds = %157
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @PACKET_COUNT_IS_UNLIMITED(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %194, label %180

180:                                              ; preds = %176
  %181 = load i32*, i32** %15, align 8
  %182 = load i32*, i32** %13, align 8
  %183 = ptrtoint i32* %181 to i64
  %184 = ptrtoint i32* %182 to i64
  %185 = sub i64 %183, %184
  %186 = sdiv exact i64 %185, 4
  %187 = trunc i64 %186 to i32
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load i32*, i32** %13, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  store i32* %190, i32** %192, align 8
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %5, align 4
  br label %200

194:                                              ; preds = %176, %157
  br label %195

195:                                              ; preds = %194, %145
  br label %69

196:                                              ; preds = %69
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  store i32 0, i32* %198, align 8
  %199 = load i32, i32* %12, align 4
  store i32 %199, i32* %5, align 4
  br label %200

200:                                              ; preds = %196, %180, %84, %81, %49, %48
  %201 = load i32, i32* %5, align 4
  ret i32 %201
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i64, i8*) #1

declare dso_local i64 @bpf_filter(i32, i32*, i32, i32) #1

declare dso_local i32 @PACKET_COUNT_IS_UNLIMITED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
