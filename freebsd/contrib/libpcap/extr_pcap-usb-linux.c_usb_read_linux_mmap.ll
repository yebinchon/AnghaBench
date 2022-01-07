; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-usb-linux.c_usb_read_linux_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-usb-linux.c_usb_read_linux_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_7__, i64, %struct.pcap_usb_linux* }
%struct.TYPE_7__ = type { i32* }
%struct.pcap_usb_linux = type { i32, i32* }
%struct.pcap_pkthdr = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mon_bin_mfetch = type { i64*, i32, i32 }
%struct.TYPE_8__ = type { i8, i64, i32, i32 }

@VEC_SIZE = common dso_local global i32 0, align 4
@MON_IOCX_MFETCH = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Can't mfetch fd %d\00", align 1
@MON_IOCH_MFLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't mflush fd %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32*)* @usb_read_linux_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_read_linux_mmap(%struct.TYPE_9__* %0, i32 %1, i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, %struct.pcap_pkthdr*, i32*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcap_usb_linux*, align 8
  %11 = alloca %struct.mon_bin_mfetch, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pcap_pkthdr, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 5
  %26 = load %struct.pcap_usb_linux*, %struct.pcap_usb_linux** %25, align 8
  store %struct.pcap_usb_linux* %26, %struct.pcap_usb_linux** %10, align 8
  %27 = load i32, i32* @VEC_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %12, align 8
  %30 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %33, 24
  store i64 %34, i64* %19, align 8
  br label %35

35:                                               ; preds = %193, %4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %17, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* %22, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @VEC_SIZE, align 4
  store i32 %42, i32* %22, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* @VEC_SIZE, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @VEC_SIZE, align 4
  store i32 %48, i32* %22, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %struct.mon_bin_mfetch, %struct.mon_bin_mfetch* %11, i32 0, i32 0
  store i64* %30, i64** %50, align 8
  %51 = load i32, i32* %22, align 4
  %52 = getelementptr inbounds %struct.mon_bin_mfetch, %struct.mon_bin_mfetch* %11, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %16, align 4
  %54 = getelementptr inbounds %struct.mon_bin_mfetch, %struct.mon_bin_mfetch* %11, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %76, %49
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MON_IOCX_MFETCH, align 4
  %60 = call i32 (i32, i32, ...) @ioctl(i32 %58, i32 %59, %struct.mon_bin_mfetch* %11)
  store i32 %60, i32* %21, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  store i32 -2, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %214

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %21, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @EINTR, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  br i1 %77, label %55, label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %21, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i64, i64* @errno, align 8
  %83 = load i64, i64* @EAGAIN, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %214

86:                                               ; preds = %81
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %91 = load i64, i64* @errno, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @pcap_fmt_errmsg_for_errno(i32 %89, i32 %90, i64 %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %94)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %214

96:                                               ; preds = %78
  %97 = getelementptr inbounds %struct.mon_bin_mfetch, %struct.mon_bin_mfetch* %11, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %16, align 4
  store i32 0, i32* %20, align 4
  br label %99

99:                                               ; preds = %181, %96
  %100 = load i32, i32* %20, align 4
  %101 = getelementptr inbounds %struct.mon_bin_mfetch, %struct.mon_bin_mfetch* %11, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %184

104:                                              ; preds = %99
  %105 = load %struct.pcap_usb_linux*, %struct.pcap_usb_linux** %10, align 8
  %106 = getelementptr inbounds %struct.pcap_usb_linux, %struct.pcap_usb_linux* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %30, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = bitcast i32* %112 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %113, %struct.TYPE_8__** %15, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i8, i8* %115, align 8
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 64
  br i1 %118, label %119, label %120

119:                                              ; preds = %104
  br label %181

120:                                              ; preds = %104
  %121 = load i64, i64* %19, align 8
  store i64 %121, i64* %18, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %18, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %18, align 8
  br label %131

131:                                              ; preds = %127, %120
  %132 = load i64, i64* %18, align 8
  %133 = add i64 %132, 4
  %134 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 1
  store i64 %133, i64* %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 4
  %139 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %168, label %155

155:                                              ; preds = %131
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %161 = bitcast %struct.TYPE_8__* %160 to i32*
  %162 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @bpf_filter(i32* %159, i32* %161, i64 %163, i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %155, %131
  %169 = load %struct.pcap_usb_linux*, %struct.pcap_usb_linux** %10, align 8
  %170 = getelementptr inbounds %struct.pcap_usb_linux, %struct.pcap_usb_linux* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 8
  %173 = load i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %176 = bitcast %struct.TYPE_8__* %175 to i32*
  %177 = call i32 %173(i32* %174, %struct.pcap_pkthdr* %14, i32* %176)
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %17, align 4
  br label %180

180:                                              ; preds = %168, %155
  br label %181

181:                                              ; preds = %180, %119
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %20, align 4
  br label %99

184:                                              ; preds = %99
  %185 = load i32, i32* %7, align 4
  %186 = call i64 @PACKET_COUNT_IS_UNLIMITED(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188, %184
  br label %194

193:                                              ; preds = %188
  br label %35

194:                                              ; preds = %192
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @MON_IOCH_MFLUSH, align 4
  %199 = load i32, i32* %16, align 4
  %200 = call i32 (i32, i32, ...) @ioctl(i32 %197, i32 %198, i32 %199)
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %212

202:                                              ; preds = %194
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %207 = load i64, i64* @errno, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @pcap_fmt_errmsg_for_errno(i32 %205, i32 %206, i64 %207, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %210)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %214

212:                                              ; preds = %194
  %213 = load i32, i32* %17, align 4
  store i32 %213, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %214

214:                                              ; preds = %212, %202, %86, %85, %65
  %215 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ioctl(i32, i32, ...) #2

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i64, i8*, i32) #2

declare dso_local i64 @bpf_filter(i32*, i32*, i64, i64) #2

declare dso_local i64 @PACKET_COUNT_IS_UNLIMITED(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
