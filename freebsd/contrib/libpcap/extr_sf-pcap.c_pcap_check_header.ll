; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcap.c_pcap_check_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcap.c_pcap_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, i64, i32, i32, i32*, %struct.TYPE_6__, %struct.pcap_sf*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pcap_sf = type { i32, i8*, i8* }
%struct.pcap_file_header = type { i32, i32, i64, i64, i64, i64, i64 }

@TCPDUMP_MAGIC = common dso_local global i64 0, align 8
@KUZNETZOV_TCPDUMP_MAGIC = common dso_local global i64 0, align 8
@NSEC_TCPDUMP_MAGIC = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error reading dump file\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"truncated dump file; tried to read %lu file header bytes, only got %lu\00", align 1
@PCAP_VERSION_MAJOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"archaic pcap savefile format\00", align 1
@PCAP_VERSION_MINOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"unsupported pcap savefile version %u.%u\00", align 1
@pcap_next_packet = common dso_local global i32 0, align 4
@SCALE_DOWN = common dso_local global i8* null, align 8
@PASS_THROUGH = common dso_local global i8* null, align 8
@SCALE_UP = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"unknown time stamp resolution %u\00", align 1
@SWAPPED = common dso_local global i8* null, align 8
@MAYBE_SWAPPED = common dso_local global i8* null, align 8
@NOT_SWAPPED = common dso_local global i8* null, align 8
@DLT_EN10MB = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@sf_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @pcap_check_header(i64 %0, i32* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pcap_file_header, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.pcap_sf*, align 8
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32*, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @TCPDUMP_MAGIC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %5
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @KUZNETZOV_TCPDUMP_MAGIC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @NSEC_TCPDUMP_MAGIC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @SWAPLONG(i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @TCPDUMP_MAGIC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @KUZNETZOV_TCPDUMP_MAGIC, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @NSEC_TCPDUMP_MAGIC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %322

44:                                               ; preds = %39, %35, %29
  store i32 1, i32* %15, align 4
  br label %45

45:                                               ; preds = %44, %25, %21, %5
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 6
  store i64 %46, i64* %47, align 8
  %48 = bitcast %struct.pcap_file_header* %12 to i8*
  %49 = getelementptr inbounds i8, i8* %48, i64 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i64 @fread(i8* %49, i32 1, i32 40, i32* %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %52, 40
  br i1 %53, label %54, label %70

54:                                               ; preds = %45
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @ferror(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @pcap_fmt_errmsg_for_errno(i8* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %68

63:                                               ; preds = %54
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %66 = load i64, i64* %13, align 8
  %67 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %64, i32 %65, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 48, i64 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32*, i32** %11, align 8
  store i32 1, i32* %69, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %322

70:                                               ; preds = %45
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @SWAPSHORT(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @SWAPSHORT(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @SWAPLONG(i64 %85)
  %87 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 2
  store i64 %86, i64* %87, align 8
  %88 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @SWAPLONG(i64 %89)
  %91 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 3
  store i64 %90, i64* %91, align 8
  %92 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @SWAPLONG(i64 %93)
  %95 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 4
  store i64 %94, i64* %95, align 8
  %96 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @SWAPLONG(i64 %97)
  %99 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 5
  store i64 %98, i64* %99, align 8
  br label %100

100:                                              ; preds = %73, %70
  %101 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @PCAP_VERSION_MAJOR, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %108 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %106, i32 %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32*, i32** %11, align 8
  store i32 1, i32* %109, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %322

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PCAP_VERSION_MAJOR, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @PCAP_VERSION_MINOR, align 4
  %119 = icmp sle i32 %117, %118
  br i1 %119, label %137, label %120

120:                                              ; preds = %115, %110
  %121 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 543
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %124, %120
  %129 = load i8*, i8** %10, align 8
  %130 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %131 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %129, i32 %130, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %132, i32 %134)
  %136 = load i32*, i32** %11, align 8
  store i32 1, i32* %136, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %322

137:                                              ; preds = %124, %115
  %138 = load i8*, i8** %10, align 8
  %139 = call %struct.TYPE_7__* @pcap_open_offline_common(i8* %138, i32 24)
  store %struct.TYPE_7__* %139, %struct.TYPE_7__** %14, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %141 = icmp eq %struct.TYPE_7__* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32*, i32** %11, align 8
  store i32 1, i32* %143, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %322

144:                                              ; preds = %137
  %145 = load i32, i32* %15, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  %160 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 4
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = icmp sle i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %144
  %169 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @max_snaplen_for_dlt(i64 %170)
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 4
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %168, %144
  %175 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @LT_LINKTYPE(i64 %176)
  %178 = call i64 @linktype_to_dlt(i32 %177)
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 5
  store i64 %178, i64* %180, align 8
  %181 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @LT_LINKTYPE_EXT(i64 %182)
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 12
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* @pcap_next_packet, align 4
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 11
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 10
  %191 = load %struct.pcap_sf*, %struct.pcap_sf** %190, align 8
  store %struct.pcap_sf* %191, %struct.pcap_sf** %16, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 9
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load i32, i32* %9, align 4
  switch i32 %196, label %223 [
    i32 129, label %197
    i32 128, label %210
  ]

197:                                              ; preds = %174
  %198 = load i64, i64* %7, align 8
  %199 = load i64, i64* @NSEC_TCPDUMP_MAGIC, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i8*, i8** @SCALE_DOWN, align 8
  %203 = load %struct.pcap_sf*, %struct.pcap_sf** %16, align 8
  %204 = getelementptr inbounds %struct.pcap_sf, %struct.pcap_sf* %203, i32 0, i32 2
  store i8* %202, i8** %204, align 8
  br label %209

205:                                              ; preds = %197
  %206 = load i8*, i8** @PASS_THROUGH, align 8
  %207 = load %struct.pcap_sf*, %struct.pcap_sf** %16, align 8
  %208 = getelementptr inbounds %struct.pcap_sf, %struct.pcap_sf* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  br label %209

209:                                              ; preds = %205, %201
  br label %231

210:                                              ; preds = %174
  %211 = load i64, i64* %7, align 8
  %212 = load i64, i64* @NSEC_TCPDUMP_MAGIC, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = load i8*, i8** @PASS_THROUGH, align 8
  %216 = load %struct.pcap_sf*, %struct.pcap_sf** %16, align 8
  %217 = getelementptr inbounds %struct.pcap_sf, %struct.pcap_sf* %216, i32 0, i32 2
  store i8* %215, i8** %217, align 8
  br label %222

218:                                              ; preds = %210
  %219 = load i8*, i8** @SCALE_UP, align 8
  %220 = load %struct.pcap_sf*, %struct.pcap_sf** %16, align 8
  %221 = getelementptr inbounds %struct.pcap_sf, %struct.pcap_sf* %220, i32 0, i32 2
  store i8* %219, i8** %221, align 8
  br label %222

222:                                              ; preds = %218, %214
  br label %231

223:                                              ; preds = %174
  %224 = load i8*, i8** %10, align 8
  %225 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %226 = load i32, i32* %9, align 4
  %227 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %224, i32 %225, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %226)
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %229 = call i32 @free(%struct.TYPE_7__* %228)
  %230 = load i32*, i32** %11, align 8
  store i32 1, i32* %230, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %322

231:                                              ; preds = %222, %209
  %232 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  switch i32 %233, label %260 [
    i32 2, label %234
    i32 543, label %256
  ]

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %236, 3
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = load i8*, i8** @SWAPPED, align 8
  %240 = load %struct.pcap_sf*, %struct.pcap_sf** %16, align 8
  %241 = getelementptr inbounds %struct.pcap_sf, %struct.pcap_sf* %240, i32 0, i32 1
  store i8* %239, i8** %241, align 8
  br label %255

242:                                              ; preds = %234
  %243 = getelementptr inbounds %struct.pcap_file_header, %struct.pcap_file_header* %12, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 3
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = load i8*, i8** @MAYBE_SWAPPED, align 8
  %248 = load %struct.pcap_sf*, %struct.pcap_sf** %16, align 8
  %249 = getelementptr inbounds %struct.pcap_sf, %struct.pcap_sf* %248, i32 0, i32 1
  store i8* %247, i8** %249, align 8
  br label %254

250:                                              ; preds = %242
  %251 = load i8*, i8** @NOT_SWAPPED, align 8
  %252 = load %struct.pcap_sf*, %struct.pcap_sf** %16, align 8
  %253 = getelementptr inbounds %struct.pcap_sf, %struct.pcap_sf* %252, i32 0, i32 1
  store i8* %251, i8** %253, align 8
  br label %254

254:                                              ; preds = %250, %246
  br label %255

255:                                              ; preds = %254, %238
  br label %264

256:                                              ; preds = %231
  %257 = load i8*, i8** @SWAPPED, align 8
  %258 = load %struct.pcap_sf*, %struct.pcap_sf** %16, align 8
  %259 = getelementptr inbounds %struct.pcap_sf, %struct.pcap_sf* %258, i32 0, i32 1
  store i8* %257, i8** %259, align 8
  br label %264

260:                                              ; preds = %231
  %261 = load i8*, i8** @NOT_SWAPPED, align 8
  %262 = load %struct.pcap_sf*, %struct.pcap_sf** %16, align 8
  %263 = getelementptr inbounds %struct.pcap_sf, %struct.pcap_sf* %262, i32 0, i32 1
  store i8* %261, i8** %263, align 8
  br label %264

264:                                              ; preds = %260, %256, %255
  %265 = load i64, i64* %7, align 8
  %266 = load i64, i64* @KUZNETZOV_TCPDUMP_MAGIC, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %282

268:                                              ; preds = %264
  %269 = load %struct.pcap_sf*, %struct.pcap_sf** %16, align 8
  %270 = getelementptr inbounds %struct.pcap_sf, %struct.pcap_sf* %269, i32 0, i32 0
  store i32 4, i32* %270, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 5
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @DLT_EN10MB, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %268
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 4
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %279, 14
  store i64 %280, i64* %278, align 8
  br label %281

281:                                              ; preds = %276, %268
  br label %285

282:                                              ; preds = %264
  %283 = load %struct.pcap_sf*, %struct.pcap_sf** %16, align 8
  %284 = getelementptr inbounds %struct.pcap_sf, %struct.pcap_sf* %283, i32 0, i32 0
  store i32 4, i32* %284, align 8
  br label %285

285:                                              ; preds = %282, %281
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 4
  %288 = load i64, i64* %287, align 8
  %289 = trunc i64 %288 to i32
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 6
  store i32 %289, i32* %291, align 8
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = icmp sgt i32 %294, 2048
  br i1 %295, label %296, label %299

296:                                              ; preds = %285
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 6
  store i32 2048, i32* %298, align 8
  br label %299

299:                                              ; preds = %296, %285
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 6
  %302 = load i32, i32* %301, align 8
  %303 = call i32* @malloc(i32 %302)
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 8
  store i32* %303, i32** %305, align 8
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 8
  %308 = load i32*, i32** %307, align 8
  %309 = icmp eq i32* %308, null
  br i1 %309, label %310, label %317

310:                                              ; preds = %299
  %311 = load i8*, i8** %10, align 8
  %312 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %313 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %311, i32 %312, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %315 = call i32 @free(%struct.TYPE_7__* %314)
  %316 = load i32*, i32** %11, align 8
  store i32 1, i32* %316, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %322

317:                                              ; preds = %299
  %318 = load i32, i32* @sf_cleanup, align 4
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 7
  store i32 %318, i32* %320, align 4
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %321, %struct.TYPE_7__** %6, align 8
  br label %322

322:                                              ; preds = %317, %310, %223, %142, %128, %105, %68, %43
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %323
}

declare dso_local i64 @SWAPLONG(i64) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @SWAPSHORT(i32) #1

declare dso_local %struct.TYPE_7__* @pcap_open_offline_common(i8*, i32) #1

declare dso_local i64 @max_snaplen_for_dlt(i64) #1

declare dso_local i64 @linktype_to_dlt(i32) #1

declare dso_local i32 @LT_LINKTYPE(i64) #1

declare dso_local i32 @LT_LINKTYPE_EXT(i64) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
