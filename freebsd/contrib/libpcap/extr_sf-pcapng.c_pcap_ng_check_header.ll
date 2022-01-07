; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcapng.c_pcap_ng_check_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcapng.c_pcap_ng_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_10__*, i32, i32, i8*, i64, i64, %struct.TYPE_9__, i8*, i8*, %struct.pcap_ng_sf* }
%struct.TYPE_9__ = type { i32 }
%struct.pcap_ng_sf = type { i32, i64, %struct.TYPE_10__* }
%struct.block_header = type { i64, i64 }
%struct.section_header_block = type { i8*, i8*, i64 }
%struct.block_cursor = type { i32 }
%struct.interface_description_block = type { i64, i8* }

@BT_SHB = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error reading dump file\00", align 1
@BYTE_ORDER_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"Section Header Block in pcapng dump file has a length of %u < %lu\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unknown time stamp resolution %u\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@MAXIMUM_SNAPLEN = common dso_local global i64 0, align 8
@PCAP_NG_VERSION_MAJOR = common dso_local global i8* null, align 8
@PCAP_NG_VERSION_MINOR = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"unsupported pcapng savefile version %u.%u\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"the capture file has no Interface Description Blocks\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"the capture file has a packet block before any Interface Description Blocks\00", align 1
@pcap_ng_next_packet = common dso_local global i32 0, align 4
@pcap_ng_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @pcap_ng_check_header(i64 %0, i32* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.block_header*, align 8
  %16 = alloca %struct.section_header_block*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.pcap_ng_sf*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.block_cursor, align 4
  %22 = alloca %struct.interface_description_block*, align 8
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %18, align 4
  %23 = load i32*, i32** %11, align 8
  store i32 0, i32* %23, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @BT_SHB, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %360

28:                                               ; preds = %5
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @fread(i64* %13, i32 1, i32 8, i32* %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ult i64 %31, 8
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @ferror(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @pcap_fmt_errmsg_for_errno(i8* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %42 = load i32*, i32** %11, align 8
  store i32 1, i32* %42, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %360

43:                                               ; preds = %33
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %360

44:                                               ; preds = %28
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @fread(i64* %14, i32 1, i32 8, i32* %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ult i64 %47, 8
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i32*, i32** %8, align 8
  %51 = call i64 @ferror(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @pcap_fmt_errmsg_for_errno(i8* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %58 = load i32*, i32** %11, align 8
  store i32 1, i32* %58, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %360

59:                                               ; preds = %49
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %360

60:                                               ; preds = %44
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* @BYTE_ORDER_MAGIC, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i64, i64* %14, align 8
  %66 = call i64 @SWAPLONG(i64 %65)
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* @BYTE_ORDER_MAGIC, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %360

71:                                               ; preds = %64
  store i32 1, i32* %18, align 4
  %72 = load i64, i64* %13, align 8
  %73 = call i64 @SWAPLONG(i64 %72)
  store i64 %73, i64* %13, align 8
  br label %74

74:                                               ; preds = %71, %60
  %75 = load i64, i64* %13, align 8
  %76 = icmp ult i64 %75, 44
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %80 = load i64, i64* %13, align 8
  %81 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %78, i32 %79, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %80, i64 44)
  %82 = load i32*, i32** %11, align 8
  store i32 1, i32* %82, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %360

83:                                               ; preds = %74
  %84 = load i8*, i8** %10, align 8
  %85 = call %struct.TYPE_10__* @pcap_open_offline_common(i8* %84, i32 24)
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %17, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %87 = icmp eq %struct.TYPE_10__* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32*, i32** %11, align 8
  store i32 1, i32* %89, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %360

90:                                               ; preds = %83
  %91 = load i32, i32* %18, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 12
  %96 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %95, align 8
  store %struct.pcap_ng_sf* %96, %struct.pcap_ng_sf** %19, align 8
  %97 = load i32, i32* %9, align 4
  switch i32 %97, label %104 [
    i32 129, label %98
    i32 128, label %101
  ]

98:                                               ; preds = %90
  %99 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %19, align 8
  %100 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %99, i32 0, i32 0
  store i32 1000000, i32* %100, align 8
  br label %112

101:                                              ; preds = %90
  %102 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %19, align 8
  %103 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %102, i32 0, i32 0
  store i32 1000000000, i32* %103, align 8
  br label %112

104:                                              ; preds = %90
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %105, i32 %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %110 = call i32 @free(%struct.TYPE_10__* %109)
  %111 = load i32*, i32** %11, align 8
  store i32 1, i32* %111, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %360

112:                                              ; preds = %101, %98
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 9
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store i32 2048, i32* %118, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %13, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %112
  %126 = load i64, i64* %13, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %112
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = call %struct.TYPE_10__* @malloc(i64 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %137, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = icmp eq %struct.TYPE_10__* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %130
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %145 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %143, i32 %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %147 = call i32 @free(%struct.TYPE_10__* %146)
  %148 = load i32*, i32** %11, align 8
  store i32 1, i32* %148, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %360

149:                                              ; preds = %130
  %150 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %151 = call i64 @MAX_BLOCKSIZE(i64 %150)
  %152 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %19, align 8
  %153 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = bitcast %struct.TYPE_10__* %156 to %struct.block_header*
  store %struct.block_header* %157, %struct.block_header** %15, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = bitcast %struct.TYPE_10__* %160 to i32*
  %162 = getelementptr inbounds i32, i32* %161, i64 16
  %163 = bitcast i32* %162 to %struct.section_header_block*
  store %struct.section_header_block* %163, %struct.section_header_block** %16, align 8
  %164 = load i64, i64* %7, align 8
  %165 = load %struct.block_header*, %struct.block_header** %15, align 8
  %166 = getelementptr inbounds %struct.block_header, %struct.block_header* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %13, align 8
  %168 = load %struct.block_header*, %struct.block_header** %15, align 8
  %169 = getelementptr inbounds %struct.block_header, %struct.block_header* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %14, align 8
  %171 = load %struct.section_header_block*, %struct.section_header_block** %16, align 8
  %172 = getelementptr inbounds %struct.section_header_block, %struct.section_header_block* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = bitcast %struct.TYPE_10__* %176 to i32*
  %178 = getelementptr inbounds i32, i32* %177, i64 24
  %179 = load i64, i64* %13, align 8
  %180 = sub i64 %179, 24
  %181 = load i8*, i8** %10, align 8
  %182 = call i32 @read_bytes(i32* %173, i32* %178, i64 %180, i32 1, i8* %181)
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %185

184:                                              ; preds = %149
  br label %348

185:                                              ; preds = %149
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %185
  %191 = load %struct.section_header_block*, %struct.section_header_block** %16, align 8
  %192 = getelementptr inbounds %struct.section_header_block, %struct.section_header_block* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = call i8* @SWAPSHORT(i8* %193)
  %195 = load %struct.section_header_block*, %struct.section_header_block** %16, align 8
  %196 = getelementptr inbounds %struct.section_header_block, %struct.section_header_block* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load %struct.section_header_block*, %struct.section_header_block** %16, align 8
  %198 = getelementptr inbounds %struct.section_header_block, %struct.section_header_block* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i8* @SWAPSHORT(i8* %199)
  %201 = load %struct.section_header_block*, %struct.section_header_block** %16, align 8
  %202 = getelementptr inbounds %struct.section_header_block, %struct.section_header_block* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %190, %185
  %204 = load %struct.section_header_block*, %struct.section_header_block** %16, align 8
  %205 = getelementptr inbounds %struct.section_header_block, %struct.section_header_block* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = load i8*, i8** @PCAP_NG_VERSION_MAJOR, align 8
  %208 = icmp eq i8* %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  %210 = load %struct.section_header_block*, %struct.section_header_block** %16, align 8
  %211 = getelementptr inbounds %struct.section_header_block, %struct.section_header_block* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i8*, i8** @PCAP_NG_VERSION_MINOR, align 8
  %214 = icmp eq i8* %212, %213
  br i1 %214, label %225, label %215

215:                                              ; preds = %209, %203
  %216 = load i8*, i8** %10, align 8
  %217 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %218 = load %struct.section_header_block*, %struct.section_header_block** %16, align 8
  %219 = getelementptr inbounds %struct.section_header_block, %struct.section_header_block* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.section_header_block*, %struct.section_header_block** %16, align 8
  %222 = getelementptr inbounds %struct.section_header_block, %struct.section_header_block* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %216, i32 %217, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %220, i8* %223)
  br label %348

225:                                              ; preds = %209
  %226 = load %struct.section_header_block*, %struct.section_header_block** %16, align 8
  %227 = getelementptr inbounds %struct.section_header_block, %struct.section_header_block* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 11
  store i8* %228, i8** %230, align 8
  %231 = load %struct.section_header_block*, %struct.section_header_block** %16, align 8
  %232 = getelementptr inbounds %struct.section_header_block, %struct.section_header_block* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 10
  store i8* %233, i8** %235, align 8
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 9
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 8
  br label %240

240:                                              ; preds = %294, %225
  %241 = load i32*, i32** %8, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %243 = load i8*, i8** %10, align 8
  %244 = call i32 @read_block(i32* %241, %struct.TYPE_10__* %242, %struct.block_cursor* %21, i8* %243)
  store i32 %244, i32* %20, align 4
  %245 = load i32, i32* %20, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %240
  %248 = load i8*, i8** %10, align 8
  %249 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %250 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %248, i32 %249, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %348

251:                                              ; preds = %240
  %252 = load i32, i32* %20, align 4
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  br label %348

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.block_cursor, %struct.block_cursor* %21, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  switch i32 %257, label %293 [
    i32 132, label %258
    i32 133, label %289
    i32 130, label %289
    i32 131, label %289
  ]

258:                                              ; preds = %255
  %259 = load i8*, i8** %10, align 8
  %260 = call %struct.interface_description_block* @get_from_block_data(%struct.block_cursor* %21, i32 16, i8* %259)
  store %struct.interface_description_block* %260, %struct.interface_description_block** %22, align 8
  %261 = load %struct.interface_description_block*, %struct.interface_description_block** %22, align 8
  %262 = icmp eq %struct.interface_description_block* %261, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %258
  br label %348

264:                                              ; preds = %258
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %282

269:                                              ; preds = %264
  %270 = load %struct.interface_description_block*, %struct.interface_description_block** %22, align 8
  %271 = getelementptr inbounds %struct.interface_description_block, %struct.interface_description_block* %270, i32 0, i32 1
  %272 = load i8*, i8** %271, align 8
  %273 = call i8* @SWAPSHORT(i8* %272)
  %274 = load %struct.interface_description_block*, %struct.interface_description_block** %22, align 8
  %275 = getelementptr inbounds %struct.interface_description_block, %struct.interface_description_block* %274, i32 0, i32 1
  store i8* %273, i8** %275, align 8
  %276 = load %struct.interface_description_block*, %struct.interface_description_block** %22, align 8
  %277 = getelementptr inbounds %struct.interface_description_block, %struct.interface_description_block* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = call i64 @SWAPLONG(i64 %278)
  %280 = load %struct.interface_description_block*, %struct.interface_description_block** %22, align 8
  %281 = getelementptr inbounds %struct.interface_description_block, %struct.interface_description_block* %280, i32 0, i32 0
  store i64 %279, i64* %281, align 8
  br label %282

282:                                              ; preds = %269, %264
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %284 = load i8*, i8** %10, align 8
  %285 = call i32 @add_interface(%struct.TYPE_10__* %283, %struct.block_cursor* %21, i8* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %282
  br label %348

288:                                              ; preds = %282
  br label %295

289:                                              ; preds = %255, %255, %255
  %290 = load i8*, i8** %10, align 8
  %291 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %292 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %290, i32 %291, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  br label %348

293:                                              ; preds = %255
  br label %294

294:                                              ; preds = %293
  br label %240

295:                                              ; preds = %288
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 8
  store i64 0, i64* %297, align 8
  %298 = load %struct.interface_description_block*, %struct.interface_description_block** %22, align 8
  %299 = getelementptr inbounds %struct.interface_description_block, %struct.interface_description_block* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 2
  store i64 %300, i64* %302, align 8
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = icmp sle i64 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %295
  %308 = load %struct.interface_description_block*, %struct.interface_description_block** %22, align 8
  %309 = getelementptr inbounds %struct.interface_description_block, %struct.interface_description_block* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = call i64 @max_snaplen_for_dlt(i8* %310)
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 2
  store i64 %311, i64* %313, align 8
  br label %314

314:                                              ; preds = %307, %295
  %315 = load %struct.interface_description_block*, %struct.interface_description_block** %22, align 8
  %316 = getelementptr inbounds %struct.interface_description_block, %struct.interface_description_block* %315, i32 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = call i8* @linktype_to_dlt(i8* %317)
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 6
  store i8* %318, i8** %320, align 8
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 7
  store i64 0, i64* %322, align 8
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 6
  %325 = load i8*, i8** %324, align 8
  %326 = call i64 @max_snaplen_for_dlt(i8* %325)
  %327 = call i64 @MAX_BLOCKSIZE(i64 %326)
  %328 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %19, align 8
  %329 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = icmp sgt i64 %327, %330
  br i1 %331, label %332, label %340

332:                                              ; preds = %314
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 6
  %335 = load i8*, i8** %334, align 8
  %336 = call i64 @max_snaplen_for_dlt(i8* %335)
  %337 = call i64 @MAX_BLOCKSIZE(i64 %336)
  %338 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %19, align 8
  %339 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %338, i32 0, i32 1
  store i64 %337, i64* %339, align 8
  br label %340

340:                                              ; preds = %332, %314
  %341 = load i32, i32* @pcap_ng_next_packet, align 4
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 5
  store i32 %341, i32* %343, align 4
  %344 = load i32, i32* @pcap_ng_cleanup, align 4
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 4
  store i32 %344, i32* %346, align 8
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %347, %struct.TYPE_10__** %6, align 8
  br label %360

348:                                              ; preds = %289, %287, %263, %254, %247, %215, %184
  %349 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %19, align 8
  %350 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %349, i32 0, i32 2
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %350, align 8
  %352 = call i32 @free(%struct.TYPE_10__* %351)
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 3
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %354, align 8
  %356 = call i32 @free(%struct.TYPE_10__* %355)
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %358 = call i32 @free(%struct.TYPE_10__* %357)
  %359 = load i32*, i32** %11, align 8
  store i32 1, i32* %359, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %360

360:                                              ; preds = %348, %340, %142, %104, %88, %77, %70, %59, %53, %43, %37, %27
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %361
}

declare dso_local i64 @fread(i64*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*) #1

declare dso_local i64 @SWAPLONG(i64) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @pcap_open_offline_common(i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @malloc(i64) #1

declare dso_local i64 @MAX_BLOCKSIZE(i64) #1

declare dso_local i32 @read_bytes(i32*, i32*, i64, i32, i8*) #1

declare dso_local i8* @SWAPSHORT(i8*) #1

declare dso_local i32 @read_block(i32*, %struct.TYPE_10__*, %struct.block_cursor*, i8*) #1

declare dso_local %struct.interface_description_block* @get_from_block_data(%struct.block_cursor*, i32, i8*) #1

declare dso_local i32 @add_interface(%struct.TYPE_10__*, %struct.block_cursor*, i8*) #1

declare dso_local i64 @max_snaplen_for_dlt(i8*) #1

declare dso_local i8* @linktype_to_dlt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
