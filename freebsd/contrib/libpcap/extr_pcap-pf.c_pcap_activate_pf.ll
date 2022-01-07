; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-pf.c_pcap_activate_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-pf.c_pcap_activate_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, %struct.TYPE_5__, i8**, %struct.pcap_pf* }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.pcap_pf = type { i32 }
%struct.enfilter = type { i32, i64 }
%struct.endevp = type { i32 }
%struct.timeval = type { i32, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [108 x i8] c"pf open: %s: Permission denied\0Ayour system may not be properly configured; see the packetfilter(4) man page\00", align 1
@PCAP_ERROR_PERM_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"pf open: %s\00", align 1
@PCAP_ERROR = common dso_local global i32 0, align 4
@MAXIMUM_SNAPLEN = common dso_local global i64 0, align 8
@ENTSTAMP = common dso_local global i16 0, align 2
@ENNONEXCL = common dso_local global i16 0, align 2
@ENBATCH = common dso_local global i16 0, align 2
@ENPROMISC = common dso_local global i16 0, align 2
@EIOCMBIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"EIOCMBIS\00", align 1
@EIOCSETW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"EIOCSETW\00", align 1
@EIOCDEVP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"EIOCDEVP\00", align 1
@DLT_EN10MB = common dso_local global i8* null, align 8
@DLT_DOCSIS = common dso_local global i8* null, align 8
@DLT_FDDI = common dso_local global i64 0, align 8
@DLT_SLIP = common dso_local global i64 0, align 8
@DLT_PPP = common dso_local global i64 0, align 8
@DLT_IEEE802 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"unknown data-link type %u\00", align 1
@PCAP_FDDIPAD = common dso_local global i64 0, align 8
@EIOCTRUNCATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"EIOCTRUNCATE\00", align 1
@EIOCSETF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"EIOCSETF\00", align 1
@EIOCSRTIMEOUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"EIOCSRTIMEOUT\00", align 1
@BUFSPACE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@pcap_read_pf = common dso_local global i32 0, align 4
@pcap_inject_pf = common dso_local global i32 0, align 4
@pcap_setfilter_pf = common dso_local global i32 0, align 4
@pcap_getnonblock_fd = common dso_local global i32 0, align 4
@pcap_setnonblock_fd = common dso_local global i32 0, align 4
@pcap_stats_pf = common dso_local global i32 0, align 4
@ENCOPYALL = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @pcap_activate_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_activate_pf(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.pcap_pf*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.enfilter, align 8
  %8 = alloca %struct.endevp, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 20
  %13 = load %struct.pcap_pf*, %struct.pcap_pf** %12, align 8
  store %struct.pcap_pf* %13, %struct.pcap_pf** %4, align 8
  store i32 -1, i32* %6, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 18
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = call i8* @pfopen(i32 %17, i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %41

27:                                               ; preds = %1
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EACCES, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 18
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @O_RDONLY, align 4
  %37 = call i8* @pfopen(i32 %35, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %31, %27, %1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %41
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EACCES, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 16
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 18
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pcap_snprintf(i32 %53, i32 %54, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  store i32 %60, i32* %9, align 4
  br label %73

61:                                               ; preds = %46
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 16
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %66 = load i64, i64* @errno, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 18
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %64, i32 %65, i64 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %61, %50
  br label %380

74:                                               ; preds = %41
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sle i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79, %74
  %86 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.pcap_pf*, %struct.pcap_pf** %4, align 8
  %91 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %90, i32 0, i32 0
  store i32 -1, i32* %91, align 4
  %92 = load i16, i16* @ENTSTAMP, align 2
  %93 = sext i16 %92 to i32
  %94 = load i16, i16* @ENNONEXCL, align 2
  %95 = sext i16 %94 to i32
  %96 = or i32 %93, %95
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %5, align 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 18
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %89
  %104 = load i16, i16* @ENBATCH, align 2
  %105 = sext i16 %104 to i32
  %106 = load i16, i16* %5, align 2
  %107 = sext i16 %106 to i32
  %108 = or i32 %107, %105
  %109 = trunc i32 %108 to i16
  store i16 %109, i16* %5, align 2
  br label %110

110:                                              ; preds = %103, %89
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 18
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i16, i16* @ENPROMISC, align 2
  %118 = sext i16 %117 to i32
  %119 = load i16, i16* %5, align 2
  %120 = sext i16 %119 to i32
  %121 = or i32 %120, %118
  %122 = trunc i32 %121 to i16
  store i16 %122, i16* %5, align 2
  br label %123

123:                                              ; preds = %116, %110
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @EIOCMBIS, align 4
  %128 = ptrtoint i16* %5 to i32
  %129 = call i64 @ioctl(i32 %126, i32 %127, i32 %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %123
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 16
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %136 = load i64, i64* @errno, align 8
  %137 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %134, i32 %135, i64 %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %138, i32* %9, align 4
  br label %380

139:                                              ; preds = %123
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @EIOCSETW, align 4
  %144 = ptrtoint i32* %6 to i32
  %145 = call i64 @ioctl(i32 %142, i32 %143, i32 %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %139
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 16
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %152 = load i64, i64* @errno, align 8
  %153 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %150, i32 %151, i64 %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %154 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %154, i32* %9, align 4
  br label %380

155:                                              ; preds = %139
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @EIOCDEVP, align 4
  %160 = ptrtoint %struct.endevp* %8 to i32
  %161 = call i64 @ioctl(i32 %158, i32 %159, i32 %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %155
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 16
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %168 = load i64, i64* @errno, align 8
  %169 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %166, i32 %167, i64 %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %170, i32* %9, align 4
  br label %380

171:                                              ; preds = %155
  %172 = getelementptr inbounds %struct.endevp, %struct.endevp* %8, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  switch i32 %173, label %226 [
    i32 133, label %174
    i32 132, label %203
    i32 129, label %207
    i32 130, label %211
    i32 131, label %215
    i32 128, label %222
  ]

174:                                              ; preds = %171
  %175 = load i8*, i8** @DLT_EN10MB, align 8
  %176 = ptrtoint i8* %175 to i64
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 3
  store i32 2, i32* %180, align 8
  %181 = call i32* @malloc(i32 16)
  %182 = bitcast i32* %181 to i8**
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 19
  store i8** %182, i8*** %184, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 19
  %187 = load i8**, i8*** %186, align 8
  %188 = icmp ne i8** %187, null
  br i1 %188, label %189, label %202

189:                                              ; preds = %174
  %190 = load i8*, i8** @DLT_EN10MB, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 19
  %193 = load i8**, i8*** %192, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 0
  store i8* %190, i8** %194, align 8
  %195 = load i8*, i8** @DLT_DOCSIS, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 19
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 1
  store i8* %195, i8** %199, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 4
  store i32 2, i32* %201, align 4
  br label %202

202:                                              ; preds = %189, %174
  br label %235

203:                                              ; preds = %171
  %204 = load i64, i64* @DLT_FDDI, align 8
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  store i64 %204, i64* %206, align 8
  br label %235

207:                                              ; preds = %171
  %208 = load i64, i64* @DLT_SLIP, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 2
  store i64 %208, i64* %210, align 8
  br label %235

211:                                              ; preds = %171
  %212 = load i64, i64* @DLT_PPP, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  store i64 %212, i64* %214, align 8
  br label %235

215:                                              ; preds = %171
  %216 = load i8*, i8** @DLT_EN10MB, align 8
  %217 = ptrtoint i8* %216 to i64
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 3
  store i32 2, i32* %221, align 8
  br label %235

222:                                              ; preds = %171
  %223 = load i64, i64* @DLT_IEEE802, align 8
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 2
  store i64 %223, i64* %225, align 8
  br label %235

226:                                              ; preds = %171
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 16
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %231 = getelementptr inbounds %struct.endevp, %struct.endevp* %8, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @pcap_snprintf(i32 %229, i32 %230, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %234, i32* %9, align 4
  br label %380

235:                                              ; preds = %222, %215, %211, %207, %203, %202
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @DLT_FDDI, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %235
  %242 = load i64, i64* @PCAP_FDDIPAD, align 8
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 5
  store i64 %242, i64* %244, align 8
  %245 = load i64, i64* @PCAP_FDDIPAD, align 8
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, %245
  store i64 %249, i64* %247, align 8
  br label %253

250:                                              ; preds = %235
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 5
  store i64 0, i64* %252, align 8
  br label %253

253:                                              ; preds = %250, %241
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @EIOCTRUNCATE, align 4
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = ptrtoint i64* %259 to i32
  %261 = call i64 @ioctl(i32 %256, i32 %257, i32 %260)
  %262 = icmp slt i64 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %253
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 16
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %268 = load i64, i64* @errno, align 8
  %269 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %266, i32 %267, i64 %268, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %270 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %270, i32* %9, align 4
  br label %380

271:                                              ; preds = %253
  %272 = call i32 @memset(%struct.enfilter* %7, i32 0, i32 16)
  %273 = getelementptr inbounds %struct.enfilter, %struct.enfilter* %7, i32 0, i32 0
  store i32 37, i32* %273, align 8
  %274 = getelementptr inbounds %struct.enfilter, %struct.enfilter* %7, i32 0, i32 1
  store i64 0, i64* %274, align 8
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @EIOCSETF, align 4
  %279 = ptrtoint %struct.enfilter* %7 to i32
  %280 = call i64 @ioctl(i32 %277, i32 %278, i32 %279)
  %281 = icmp slt i64 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %271
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 16
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %287 = load i64, i64* @errno, align 8
  %288 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %285, i32 %286, i64 %287, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %289 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %289, i32* %9, align 4
  br label %380

290:                                              ; preds = %271
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 18
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %326

296:                                              ; preds = %290
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 18
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = sdiv i32 %300, 1000
  %302 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %301, i32* %302, align 4
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 18
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = mul nsw i32 %306, 1000
  %308 = srem i32 %307, 1000000
  %309 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 %308, i32* %309, align 4
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @EIOCSRTIMEOUT, align 4
  %314 = ptrtoint %struct.timeval* %10 to i32
  %315 = call i64 @ioctl(i32 %312, i32 %313, i32 %314)
  %316 = icmp slt i64 %315, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %296
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 16
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %322 = load i64, i64* @errno, align 8
  %323 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %320, i32 %321, i64 %322, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %324 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %324, i32* %9, align 4
  br label %380

325:                                              ; preds = %296
  br label %326

326:                                              ; preds = %325, %290
  %327 = load i32, i32* @BUFSPACE, align 4
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 6
  store i32 %327, i32* %329, align 8
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 6
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %332, %335
  %337 = call i32* @malloc(i32 %336)
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 17
  store i32* %337, i32** %339, align 8
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 17
  %342 = load i32*, i32** %341, align 8
  %343 = icmp eq i32* %342, null
  br i1 %343, label %344, label %352

344:                                              ; preds = %326
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 16
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %349 = load i64, i64* @errno, align 8
  %350 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %347, i32 %348, i64 %349, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %351 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %351, i32* %9, align 4
  br label %380

352:                                              ; preds = %326
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 7
  store i32 %355, i32* %357, align 4
  %358 = load i32, i32* @pcap_read_pf, align 4
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 15
  store i32 %358, i32* %360, align 8
  %361 = load i32, i32* @pcap_inject_pf, align 4
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 14
  store i32 %361, i32* %363, align 4
  %364 = load i32, i32* @pcap_setfilter_pf, align 4
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 13
  store i32 %364, i32* %366, align 8
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 12
  store i32* null, i32** %368, align 8
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 11
  store i32* null, i32** %370, align 8
  %371 = load i32, i32* @pcap_getnonblock_fd, align 4
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 10
  store i32 %371, i32* %373, align 8
  %374 = load i32, i32* @pcap_setnonblock_fd, align 4
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 9
  store i32 %374, i32* %376, align 4
  %377 = load i32, i32* @pcap_stats_pf, align 4
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 8
  store i32 %377, i32* %379, align 8
  store i32 0, i32* %2, align 4
  br label %384

380:                                              ; preds = %344, %317, %282, %263, %226, %163, %147, %131, %73
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %382 = call i32 @pcap_cleanup_live_common(%struct.TYPE_6__* %381)
  %383 = load i32, i32* %9, align 4
  store i32 %383, i32* %2, align 4
  br label %384

384:                                              ; preds = %380, %352
  %385 = load i32, i32* %2, align 4
  ret i32 %385
}

declare dso_local i8* @pfopen(i32, i32) #1

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(%struct.enfilter*, i32, i32) #1

declare dso_local i32 @pcap_cleanup_live_common(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
