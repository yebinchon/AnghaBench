; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_dag_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dag.c_dag_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i64, %struct.TYPE_12__, i8*, %struct.timeval*, %struct.pcap_dag* }
%struct.TYPE_12__ = type { i8*, i32, i64 }
%struct.timeval = type { i32, i32 }
%struct.pcap_dag = type { i32, i32, i32, i32*, %struct.TYPE_11__, i64, i64, %struct.timeval, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"device is NULL\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Can't allocate string for device name\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"dag_parse_name\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"dag_parse_name: tx (even numbered) streams not supported for capture\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"dag_config_init %s\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"dag_config_get_card_fd %s\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"dag_attach_stream\00", align 1
@kNullAttributeUuid = common dso_local global i32 0, align 4
@kComponentStreamFeatures = common dso_local global i32 0, align 4
@kUint32AttributeStreamDropCount = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"dag_get_stream_poll\00", align 1
@MAXIMUM_SNAPLEN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"dag_set_stream_poll\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"dag_start_stream %s\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"ERF_FCS_BITS\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"pcap_activate %s: bad ERF_FCS_BITS value (%d) in environment\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"ERF_DONT_STRIP_FCS\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"new_pcap_dag %s\00", align 1
@dag_read = common dso_local global i32 0, align 4
@dag_inject = common dso_local global i32 0, align 4
@dag_setfilter = common dso_local global i32 0, align 4
@dag_set_datalink = common dso_local global i32 0, align 4
@pcap_getnonblock_fd = common dso_local global i32 0, align 4
@dag_setnonblock = common dso_local global i32 0, align 4
@dag_stats = common dso_local global i32 0, align 4
@dag_platform_cleanup = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"dag_stop_stream: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"dag_detach_stream: %s\0A\00", align 1
@PCAP_ERROR = common dso_local global i32 0, align 4
@MAX_DAG_SNAPLEN = common dso_local global i64 0, align 8
@MIN_DAG_SNAPLEN = common dso_local global i64 0, align 8
@snaplen = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @dag_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dag_activate(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.pcap_dag*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 4
  %12 = alloca %struct.timeval, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 18
  %15 = load %struct.pcap_dag*, %struct.pcap_dag** %14, align 8
  store %struct.pcap_dag* %15, %struct.pcap_dag** %4, align 8
  store i8* null, i8** %8, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 15
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %27 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %25, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %425

28:                                               ; preds = %1
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add nsw i64 %30, 16
  %32 = call i64 @malloc(i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %39, i32 %40, i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %415

43:                                               ; preds = %28
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = add nsw i64 %47, 16
  %49 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %50 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %49, i32 0, i32 0
  %51 = call i64 @dag_parse_name(i8* %44, i8* %45, i64 %48, i32* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 13
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %56, i32 %57, i32 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %415

60:                                               ; preds = %43
  %61 = load i8*, i8** %8, align 8
  store i8* %61, i8** %9, align 8
  %62 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %63 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = srem i32 %64, 2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 13
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %72 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %70, i32 %71, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  br label %415

73:                                               ; preds = %60
  %74 = load i8*, i8** %9, align 8
  %75 = call i32* @dag_config_init(i8* %74)
  %76 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %77 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %76, i32 0, i32 3
  store i32* %75, i32** %77, align 8
  %78 = icmp eq i32* %75, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 13
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %84 = load i32, i32* @errno, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %82, i32 %83, i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  br label %415

87:                                               ; preds = %73
  %88 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %89 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @dag_config_get_card_fd(i32* %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = icmp slt i32 %91, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 13
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %100 = load i32, i32* @errno, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %98, i32 %99, i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  br label %415

103:                                              ; preds = %87
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %108 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @dag_attach_stream64(i32 %106, i32 %109, i32 0, i32 0)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %103
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 13
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %117 = load i32, i32* @errno, align 4
  %118 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %115, i32 %116, i32 %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %408

119:                                              ; preds = %103
  %120 = load i32, i32* @kNullAttributeUuid, align 4
  %121 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %122 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %121, i32 0, i32 8
  store i32 %120, i32* %122, align 8
  %123 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %124 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @dag_config_get_root_component(i32* %125)
  %127 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %128 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %127, i32 0, i32 9
  store i32 %126, i32* %128, align 4
  %129 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %130 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @kComponentStreamFeatures, align 4
  %133 = call i64 @dag_component_get_subcomponent(i32 %131, i32 %132, i32 0)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %119
  %136 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %137 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @kUint32AttributeStreamDropCount, align 4
  %140 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %141 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sdiv i32 %142, 2
  %144 = call i32 @dag_config_get_indexed_attribute_uuid(i32* %138, i32 %139, i32 %143)
  %145 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %146 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %135, %119
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %152 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @dag_get_stream_poll64(i32 %150, i32 %153, i32* %10, %struct.timeval* %11, %struct.timeval* %12)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %147
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 13
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %161 = load i32, i32* @errno, align 4
  %162 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %159, i32 %160, i32 %161, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %393

163:                                              ; preds = %147
  %164 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %165 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %164, i32 0, i32 7
  %166 = bitcast %struct.timeval* %165 to i8*
  %167 = bitcast %struct.timeval* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 4 %167, i64 8, i1 false)
  %168 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %169 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %168, i32 0, i32 7
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 17
  store %struct.timeval* %169, %struct.timeval** %171, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp sle i64 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %163
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %181 = icmp sgt i64 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176, %163
  %183 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %182, %176
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 15
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  store i32 0, i32* %10, align 4
  br label %194

193:                                              ; preds = %186
  store i32 65536, i32* %10, align 4
  br label %194

194:                                              ; preds = %193, %192
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 15
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = sdiv i32 %198, 1000
  %200 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 %199, i32* %200, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 15
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = srem i32 %204, 1000
  %206 = mul nsw i32 %205, 1000
  %207 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i32 %206, i32* %207, align 4
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %212 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = call i64 @dag_set_stream_poll64(i32 %210, i32 %213, i32 %214, %struct.timeval* %11, %struct.timeval* %12)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %194
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 13
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %222 = load i32, i32* @errno, align 4
  %223 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %220, i32 %221, i32 %222, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %393

224:                                              ; preds = %194
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %229 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i64 @dag_start_stream(i32 %227, i32 %230)
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %224
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 13
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %238 = load i32, i32* @errno, align 4
  %239 = load i8*, i8** %9, align 8
  %240 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %236, i32 %237, i32 %238, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %239)
  br label %393

241:                                              ; preds = %224
  %242 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %243 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %242, i32 0, i32 6
  store i64 0, i64* %243, align 8
  %244 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %245 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %244, i32 0, i32 5
  store i64 0, i64* %245, align 8
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = call %struct.TYPE_14__* @dag_info(i32 %248)
  store %struct.TYPE_14__* %249, %struct.TYPE_14__** %7, align 8
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 16896, %252
  br i1 %253, label %259, label %254

254:                                              ; preds = %241
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 16944, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %254, %241
  %260 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %261 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %260, i32 0, i32 1
  store i32 0, i32* %261, align 4
  %262 = call i8* @LT_FCS_DATALINK_EXT(i32 0)
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 16
  store i8* %262, i8** %264, align 8
  br label %307

265:                                              ; preds = %254
  %266 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %267 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %266, i32 0, i32 1
  store i32 32, i32* %267, align 4
  %268 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  store i8* %268, i8** %5, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %293

270:                                              ; preds = %265
  %271 = load i8*, i8** %5, align 8
  %272 = call i32 @atoi(i8* %271)
  store i32 %272, i32* %6, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %270
  %275 = load i32, i32* %6, align 4
  %276 = icmp eq i32 %275, 16
  br i1 %276, label %280, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %6, align 4
  %279 = icmp eq i32 %278, 32
  br i1 %279, label %280, label %284

280:                                              ; preds = %277, %274, %270
  %281 = load i32, i32* %6, align 4
  %282 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %283 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 4
  br label %292

284:                                              ; preds = %277
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 13
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %289 = load i8*, i8** %9, align 8
  %290 = load i32, i32* %6, align 4
  %291 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %287, i32 %288, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i8* %289, i32 %290)
  br label %378

292:                                              ; preds = %280
  br label %293

293:                                              ; preds = %292, %265
  %294 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  store i8* %294, i8** %5, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %306

296:                                              ; preds = %293
  %297 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %298 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = sdiv i32 %299, 16
  %301 = call i8* @LT_FCS_DATALINK_EXT(i32 %300)
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 16
  store i8* %301, i8** %303, align 8
  %304 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %305 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %304, i32 0, i32 1
  store i32 0, i32* %305, align 4
  br label %306

306:                                              ; preds = %296, %293
  br label %307

307:                                              ; preds = %306, %259
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 15
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %313 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %312, i32 0, i32 2
  store i32 %311, i32* %313, align 8
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 1
  store i32 -1, i32* %315, align 8
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %317 = call i64 @dag_get_datalink(%struct.TYPE_13__* %316)
  %318 = icmp slt i64 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %307
  br label %378

320:                                              ; preds = %307
  %321 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 14
  store i64 0, i64* %322, align 8
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %324 = call i64 @new_pcap_dag(%struct.TYPE_13__* %323)
  %325 = icmp slt i64 %324, 0
  br i1 %325, label %326, label %334

326:                                              ; preds = %320
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 13
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %331 = load i32, i32* @errno, align 4
  %332 = load i8*, i8** %9, align 8
  %333 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %329, i32 %330, i32 %331, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* %332)
  br label %378

334:                                              ; preds = %320
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 2
  store i32 -1, i32* %336, align 4
  %337 = load i8*, i8** %8, align 8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %339, label %342

339:                                              ; preds = %334
  %340 = load i8*, i8** %8, align 8
  %341 = call i32 @free(i8* %340)
  br label %342

342:                                              ; preds = %339, %334
  %343 = load i32, i32* @dag_read, align 4
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 12
  store i32 %343, i32* %345, align 8
  %346 = load i32, i32* @dag_inject, align 4
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 11
  store i32 %346, i32* %348, align 4
  %349 = load i32, i32* @dag_setfilter, align 4
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 10
  store i32 %349, i32* %351, align 8
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 9
  store i32* null, i32** %353, align 8
  %354 = load i32, i32* @dag_set_datalink, align 4
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 8
  store i32 %354, i32* %356, align 4
  %357 = load i32, i32* @pcap_getnonblock_fd, align 4
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 7
  store i32 %357, i32* %359, align 8
  %360 = load i32, i32* @dag_setnonblock, align 4
  %361 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 6
  store i32 %360, i32* %362, align 4
  %363 = load i32, i32* @dag_stats, align 4
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 5
  store i32 %363, i32* %365, align 8
  %366 = load i32, i32* @dag_platform_cleanup, align 4
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 4
  store i32 %366, i32* %368, align 4
  %369 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %370 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %369, i32 0, i32 4
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 2
  store i64 0, i64* %371, align 8
  %372 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %373 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %372, i32 0, i32 4
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 1
  store i64 0, i64* %374, align 8
  %375 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %376 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %375, i32 0, i32 4
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 0
  store i64 0, i64* %377, align 8
  store i32 0, i32* %2, align 4
  br label %425

378:                                              ; preds = %326, %319, %284
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %383 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = call i64 @dag_stop_stream(i32 %381, i32 %384)
  %386 = icmp slt i64 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %378
  %388 = load i32, i32* @stderr, align 4
  %389 = load i32, i32* @errno, align 4
  %390 = call i8* @strerror(i32 %389)
  %391 = call i32 @fprintf(i32 %388, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %390)
  br label %392

392:                                              ; preds = %387, %378
  br label %393

393:                                              ; preds = %392, %233, %217, %156
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %398 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = call i64 @dag_detach_stream(i32 %396, i32 %399)
  %401 = icmp slt i64 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %393
  %403 = load i32, i32* @stderr, align 4
  %404 = load i32, i32* @errno, align 4
  %405 = call i8* @strerror(i32 %404)
  %406 = call i32 @fprintf(i32 %403, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %405)
  br label %407

407:                                              ; preds = %402, %393
  br label %408

408:                                              ; preds = %407, %112
  %409 = load %struct.pcap_dag*, %struct.pcap_dag** %4, align 8
  %410 = getelementptr inbounds %struct.pcap_dag, %struct.pcap_dag* %409, i32 0, i32 3
  %411 = load i32*, i32** %410, align 8
  %412 = call i32 @dag_config_dispose(i32* %411)
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %414 = call i32 @delete_pcap_dag(%struct.TYPE_13__* %413)
  br label %415

415:                                              ; preds = %408, %95, %79, %67, %53, %36
  %416 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %417 = call i32 @pcap_cleanup_live_common(%struct.TYPE_13__* %416)
  %418 = load i8*, i8** %8, align 8
  %419 = icmp ne i8* %418, null
  br i1 %419, label %420, label %423

420:                                              ; preds = %415
  %421 = load i8*, i8** %8, align 8
  %422 = call i32 @free(i8* %421)
  br label %423

423:                                              ; preds = %420, %415
  %424 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %424, i32* %2, align 4
  br label %425

425:                                              ; preds = %423, %342, %22
  %426 = load i32, i32* %2, align 4
  ret i32 %426
}

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, ...) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @dag_parse_name(i8*, i8*, i64, i32*) #1

declare dso_local i32* @dag_config_init(i8*) #1

declare dso_local i32 @dag_config_get_card_fd(i32*) #1

declare dso_local i64 @dag_attach_stream64(i32, i32, i32, i32) #1

declare dso_local i32 @dag_config_get_root_component(i32*) #1

declare dso_local i64 @dag_component_get_subcomponent(i32, i32, i32) #1

declare dso_local i32 @dag_config_get_indexed_attribute_uuid(i32*, i32, i32) #1

declare dso_local i64 @dag_get_stream_poll64(i32, i32, i32*, %struct.timeval*, %struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @dag_set_stream_poll64(i32, i32, i32, %struct.timeval*, %struct.timeval*) #1

declare dso_local i64 @dag_start_stream(i32, i32) #1

declare dso_local %struct.TYPE_14__* @dag_info(i32) #1

declare dso_local i8* @LT_FCS_DATALINK_EXT(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @dag_get_datalink(%struct.TYPE_13__*) #1

declare dso_local i64 @new_pcap_dag(%struct.TYPE_13__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @dag_stop_stream(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @dag_detach_stream(i32, i32) #1

declare dso_local i32 @dag_config_dispose(i32*) #1

declare dso_local i32 @delete_pcap_dag(%struct.TYPE_13__*) #1

declare dso_local i32 @pcap_cleanup_live_common(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
