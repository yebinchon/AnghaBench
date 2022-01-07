; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snit.c_pcap_activate_snit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snit.c_pcap_activate_snit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i8**, i32, i32*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.strioctl = type { i32, i8*, i32, i32 }
%struct.ifreq = type { i8* }

@CHUNKSIZE = common dso_local global i32 0, align 4
@pcap_activate_snit.dev = internal constant [9 x i8] c"/dev/nit\00", align 1
@PCAP_ERROR_RFMON_NOTSUP = common dso_local global i32 0, align 4
@MAXIMUM_SNAPLEN = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@PCAP_ERROR_PERM_DENIED = common dso_local global i32 0, align 4
@PCAP_ERROR = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@I_SRDOPT = common dso_local global i32 0, align 4
@RMSGD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"I_SRDOPT\00", align 1
@I_PUSH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"nbuf\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"push nbuf\00", align 1
@NIOCSCHUNK = common dso_local global i32 0, align 4
@INFTIM = common dso_local global i32 0, align 4
@I_STR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"NIOCSCHUNK\00", align 1
@NIOCBIND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"NIOCBIND: %s\00", align 1
@NIOCSSNAP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"NIOCSSNAP\00", align 1
@I_FLUSH = common dso_local global i32 0, align 4
@FLUSHR = common dso_local global i64 0, align 8
@DLT_EN10MB = common dso_local global i8* null, align 8
@BUFSPACE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@DLT_DOCSIS = common dso_local global i8* null, align 8
@pcap_read_snit = common dso_local global i32 0, align 4
@pcap_inject_snit = common dso_local global i32 0, align 4
@install_bpf_program = common dso_local global i32 0, align 4
@pcap_getnonblock_fd = common dso_local global i32 0, align 4
@pcap_setnonblock_fd = common dso_local global i32 0, align 4
@pcap_stats_snit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @pcap_activate_snit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_activate_snit(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.strioctl, align 8
  %5 = alloca %struct.ifreq, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %9 = load i32, i32* @CHUNKSIZE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @PCAP_ERROR_RFMON_NOTSUP, align 4
  store i32 %16, i32* %2, align 4
  br label %265

17:                                               ; preds = %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MAXIMUM_SNAPLEN, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %17
  %29 = load i32, i32* @MAXIMUM_SNAPLEN, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 96
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 96, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* @O_RDWR, align 4
  %42 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @pcap_activate_snit.dev, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EACCES, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* @O_RDONLY, align 4
  %53 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @pcap_activate_snit.dev, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %47, %40
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @EACCES, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  store i32 %64, i32* %8, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 14
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %72 = load i64, i64* @errno, align 8
  %73 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %70, i32 %71, i64 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @pcap_activate_snit.dev, i64 0, i64 0))
  br label %261

74:                                               ; preds = %56
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @I_SRDOPT, align 4
  %77 = load i64, i64* @RMSGD, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = call i64 @ioctl(i32 %75, i32 %76, i8* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 14
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %86 = load i64, i64* @errno, align 8
  %87 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %84, i32 %85, i64 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %88, i32* %8, align 4
  br label %261

89:                                               ; preds = %74
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @I_PUSH, align 4
  %92 = call i64 @ioctl(i32 %90, i32 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 14
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %99 = load i64, i64* @errno, align 8
  %100 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %97, i32 %98, i64 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %101, i32* %8, align 4
  br label %261

102:                                              ; preds = %89
  %103 = load i32, i32* @NIOCSCHUNK, align 4
  %104 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %4, i32 0, i32 2
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* @INFTIM, align 4
  %106 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %4, i32 0, i32 3
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %4, i32 0, i32 0
  store i32 4, i32* %107, align 8
  %108 = bitcast i32* %6 to i8*
  %109 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %4, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @I_STR, align 4
  %112 = bitcast %struct.strioctl* %4 to i8*
  %113 = call i64 @ioctl(i32 %110, i32 %111, i8* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %102
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 14
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %120 = load i64, i64* @errno, align 8
  %121 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %118, i32 %119, i64 %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %122, i32* %8, align 4
  br label %261

123:                                              ; preds = %102
  %124 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 17
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @strncpy(i8* %125, i32 %129, i32 8)
  %131 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 7
  store i8 0, i8* %133, align 1
  %134 = load i32, i32* @NIOCBIND, align 4
  %135 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %4, i32 0, i32 2
  store i32 %134, i32* %135, align 8
  %136 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %4, i32 0, i32 0
  store i32 8, i32* %136, align 8
  %137 = bitcast %struct.ifreq* %5 to i8*
  %138 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %4, i32 0, i32 1
  store i8* %137, i8** %138, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @I_STR, align 4
  %141 = bitcast %struct.strioctl* %4 to i8*
  %142 = call i64 @ioctl(i32 %139, i32 %140, i8* %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %123
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 14
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %149 = load i64, i64* @errno, align 8
  %150 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %147, i32 %148, i64 %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %151)
  %153 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %153, i32* %8, align 4
  br label %261

154:                                              ; preds = %123
  %155 = load i32, i32* @NIOCSSNAP, align 4
  %156 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %4, i32 0, i32 2
  store i32 %155, i32* %156, align 8
  %157 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %4, i32 0, i32 0
  store i32 4, i32* %157, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = bitcast i32* %159 to i8*
  %161 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %4, i32 0, i32 1
  store i8* %160, i8** %161, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @I_STR, align 4
  %164 = bitcast %struct.strioctl* %4 to i8*
  %165 = call i64 @ioctl(i32 %162, i32 %163, i8* %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %154
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 14
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %172 = load i64, i64* @errno, align 8
  %173 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %170, i32 %171, i64 %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %174 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %174, i32* %8, align 4
  br label %261

175:                                              ; preds = %154
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %177 = call i64 @nit_setflags(%struct.TYPE_7__* %176)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %180, i32* %8, align 4
  br label %261

181:                                              ; preds = %175
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @I_FLUSH, align 4
  %184 = load i64, i64* @FLUSHR, align 8
  %185 = inttoptr i64 %184 to i8*
  %186 = call i64 @ioctl(i32 %182, i32 %183, i8* %185)
  %187 = load i8*, i8** @DLT_EN10MB, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 16
  store i8* %187, i8** %189, align 8
  %190 = load i32, i32* @BUFSPACE, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32* @malloc(i32 %195)
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 15
  store i32* %196, i32** %198, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 15
  %201 = load i32*, i32** %200, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %211

203:                                              ; preds = %181
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 14
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %208 = load i64, i64* @errno, align 8
  %209 = call i32 (i32, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %206, i32 %207, i64 %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %210 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %210, i32* %8, align 4
  br label %261

211:                                              ; preds = %181
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  %217 = call i32* @malloc(i32 16)
  %218 = bitcast i32* %217 to i8**
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 13
  store i8** %218, i8*** %220, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 13
  %223 = load i8**, i8*** %222, align 8
  %224 = icmp ne i8** %223, null
  br i1 %224, label %225, label %238

225:                                              ; preds = %211
  %226 = load i8*, i8** @DLT_EN10MB, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 13
  %229 = load i8**, i8*** %228, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 0
  store i8* %226, i8** %230, align 8
  %231 = load i8*, i8** @DLT_DOCSIS, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 13
  %234 = load i8**, i8*** %233, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 1
  store i8* %231, i8** %235, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 4
  store i32 2, i32* %237, align 8
  br label %238

238:                                              ; preds = %225, %211
  %239 = load i32, i32* @pcap_read_snit, align 4
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 12
  store i32 %239, i32* %241, align 8
  %242 = load i32, i32* @pcap_inject_snit, align 4
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 11
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* @install_bpf_program, align 4
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 10
  store i32 %245, i32* %247, align 8
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 9
  store i32* null, i32** %249, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 8
  store i32* null, i32** %251, align 8
  %252 = load i32, i32* @pcap_getnonblock_fd, align 4
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 7
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* @pcap_setnonblock_fd, align 4
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 6
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* @pcap_stats_snit, align 4
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 5
  store i32 %258, i32* %260, align 4
  store i32 0, i32* %2, align 4
  br label %265

261:                                              ; preds = %203, %179, %167, %144, %115, %94, %81, %67
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %263 = call i32 @pcap_cleanup_live_common(%struct.TYPE_7__* %262)
  %264 = load i32, i32* %8, align 4
  store i32 %264, i32* %2, align 4
  br label %265

265:                                              ; preds = %261, %238, %15
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i64 @nit_setflags(%struct.TYPE_7__*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @pcap_cleanup_live_common(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
