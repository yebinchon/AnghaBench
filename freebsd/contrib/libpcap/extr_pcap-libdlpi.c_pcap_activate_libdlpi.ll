; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-libdlpi.c_pcap_activate_libdlpi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-libdlpi.c_pcap_activate_libdlpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, {}*, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.pcap_dlpi* }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.pcap_dlpi = type { i32 }
%struct.TYPE_13__ = type { i32 }

@DLPI_RAW = common dso_local global i32 0, align 4
@DLPI_PASSIVE = common dso_local global i32 0, align 4
@DLPI_SUCCESS = common dso_local global i32 0, align 4
@DLPI_ELINKNAMEINVAL = common dso_local global i32 0, align 4
@DLPI_ENOLINK = common dso_local global i32 0, align 4
@PCAP_ERROR_NO_SUCH_DEVICE = common dso_local global i32 0, align 4
@DL_SYSERR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@PCAP_ERROR_PERM_DENIED = common dso_local global i32 0, align 4
@PCAP_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dlpi_open\00", align 1
@PCAP_ERROR_RFMON_NOTSUP = common dso_local global i32 0, align 4
@DLPI_ANY_SAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"dlpi_bind\00", align 1
@MAXIMUM_SNAPLEN = common dso_local global i64 0, align 8
@DL_PROMISC_PHYS = common dso_local global i32 0, align 4
@PCAP_ERROR_PROMISC_PERM_DENIED = common dso_local global i32 0, align 4
@DL_PROMISC_MULTI = common dso_local global i32 0, align 4
@DL_PROMISC_SAP = common dso_local global i32 0, align 4
@PCAP_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"dlpi_info\00", align 1
@I_FLUSH = common dso_local global i32 0, align 4
@FLUSHR = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"FLUSHR\00", align 1
@pcap_read_libdlpi = common dso_local global i32 0, align 4
@pcap_inject_libdlpi = common dso_local global i32 0, align 4
@install_bpf_program = common dso_local global i32 0, align 4
@pcap_getnonblock_fd = common dso_local global i32 0, align 4
@pcap_setnonblock_fd = common dso_local global i32 0, align 4
@pcap_stats_dlpi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @pcap_activate_libdlpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_activate_libdlpi(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.pcap_dlpi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 14
  %11 = load %struct.pcap_dlpi*, %struct.pcap_dlpi** %10, align 8
  store %struct.pcap_dlpi* %11, %struct.pcap_dlpi** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 13
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DLPI_RAW, align 4
  %17 = load i32, i32* @DLPI_PASSIVE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @dlpi_open(i32 %15, i32* %7, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @DLPI_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DLPI_ELINKNAMEINVAL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DLPI_ENOLINK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @PCAP_ERROR_NO_SUCH_DEVICE, align 4
  store i32 %32, i32* %5, align 4
  br label %50

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @DL_SYSERR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EPERM, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EACCES, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %41, %33
  %48 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %31
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 13
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pcap_libdlpi_err(i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %253

61:                                               ; preds = %1
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.pcap_dlpi*, %struct.pcap_dlpi** %4, align 8
  %64 = getelementptr inbounds %struct.pcap_dlpi, %struct.pcap_dlpi* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 13
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @PCAP_ERROR_RFMON_NOTSUP, align 4
  store i32 %71, i32* %5, align 4
  br label %249

72:                                               ; preds = %61
  %73 = load %struct.pcap_dlpi*, %struct.pcap_dlpi** %4, align 8
  %74 = getelementptr inbounds %struct.pcap_dlpi, %struct.pcap_dlpi* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DLPI_ANY_SAP, align 4
  %77 = call i32 @dlpi_bind(i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @DLPI_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %72
  %81 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %81, i32* %5, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 13
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pcap_libdlpi_err(i32 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89)
  br label %249

91:                                               ; preds = %72
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96, %91
  %103 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %102, %96
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 13
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %106
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = load i32, i32* @DL_PROMISC_PHYS, align 4
  %115 = call i32 @dlpromiscon(%struct.TYPE_12__* %113, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @PCAP_ERROR_PROMISC_PERM_DENIED, align 4
  store i32 %123, i32* %5, align 4
  br label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %122
  br label %249

127:                                              ; preds = %112
  br label %137

128:                                              ; preds = %106
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = load i32, i32* @DL_PROMISC_MULTI, align 4
  %131 = call i32 @dlpromiscon(%struct.TYPE_12__* %129, i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %5, align 4
  br label %249

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %127
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %139 = load i32, i32* @DL_PROMISC_SAP, align 4
  %140 = call i32 @dlpromiscon(%struct.TYPE_12__* %138, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %137
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 13
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* @PCAP_WARNING, align 4
  store i32 %150, i32* %5, align 4
  br label %153

151:                                              ; preds = %143
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %5, align 4
  br label %249

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153, %137
  %155 = load %struct.pcap_dlpi*, %struct.pcap_dlpi** %4, align 8
  %156 = getelementptr inbounds %struct.pcap_dlpi, %struct.pcap_dlpi* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dlpi_info(i32 %157, %struct.TYPE_13__* %8, i32 0)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* @DLPI_SUCCESS, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %154
  %162 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %162, i32* %5, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 13
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 12
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @pcap_libdlpi_err(i32 %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %167, i32 %170)
  br label %249

172:                                              ; preds = %154
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @pcap_process_mactype(%struct.TYPE_12__* %173, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %179, i32* %5, align 4
  br label %249

180:                                              ; preds = %172
  %181 = load %struct.pcap_dlpi*, %struct.pcap_dlpi** %4, align 8
  %182 = getelementptr inbounds %struct.pcap_dlpi, %struct.pcap_dlpi* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @dlpi_fd(i32 %183)
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 10
  store i32 %184, i32* %186, align 4
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i64 @pcap_conf_bufmod(%struct.TYPE_12__* %187, i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %180
  %194 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %194, i32* %5, align 4
  br label %249

195:                                              ; preds = %180
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 10
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @I_FLUSH, align 4
  %200 = load i32, i32* @FLUSHR, align 4
  %201 = call i64 @ioctl(i32 %198, i32 %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %195
  %204 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %204, i32* %5, align 4
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 12
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %209 = load i64, i64* @errno, align 8
  %210 = call i32 @pcap_fmt_errmsg_for_errno(i32 %207, i32 %208, i64 %209, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %249

211:                                              ; preds = %195
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %213 = call i64 @pcap_alloc_databuf(%struct.TYPE_12__* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %216, i32* %5, align 4
  br label %249

217:                                              ; preds = %211
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 10
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 11
  store i32 %220, i32* %222, align 8
  %223 = load i32, i32* @pcap_read_libdlpi, align 4
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 9
  store i32 %223, i32* %225, align 8
  %226 = load i32, i32* @pcap_inject_libdlpi, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 8
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* @install_bpf_program, align 4
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 7
  store i32 %229, i32* %231, align 8
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 6
  store i32* null, i32** %233, align 8
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 5
  store i32* null, i32** %235, align 8
  %236 = load i32, i32* @pcap_getnonblock_fd, align 4
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* @pcap_setnonblock_fd, align 4
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 3
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* @pcap_stats_dlpi, align 4
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = bitcast {}** %246 to i32 (%struct.TYPE_12__*)**
  store i32 (%struct.TYPE_12__*)* @pcap_cleanup_libdlpi, i32 (%struct.TYPE_12__*)** %247, align 8
  %248 = load i32, i32* %5, align 4
  store i32 %248, i32* %2, align 4
  br label %253

249:                                              ; preds = %215, %203, %193, %178, %161, %151, %134, %126, %80, %70
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %251 = call i32 @pcap_cleanup_libdlpi(%struct.TYPE_12__* %250)
  %252 = load i32, i32* %5, align 4
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %249, %217, %50
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i32 @dlpi_open(i32, i32*, i32) #1

declare dso_local i32 @pcap_libdlpi_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dlpi_bind(i32, i32, i32) #1

declare dso_local i32 @dlpromiscon(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dlpi_info(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @pcap_process_mactype(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dlpi_fd(i32) #1

declare dso_local i64 @pcap_conf_bufmod(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i64, i8*) #1

declare dso_local i64 @pcap_alloc_databuf(%struct.TYPE_12__*) #1

declare dso_local i32 @pcap_cleanup_libdlpi(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
