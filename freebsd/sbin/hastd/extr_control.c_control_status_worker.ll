; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_control.c_control_status_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_control.c_control_status_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i32 }
%struct.nv = type { i32 }

@CONTROL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to prepare control header\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to send control header\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to receive control header\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Field 'status' is missing.\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"status%u\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"dirty%u\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"extentsize\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"extentsize%u\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"keepdirty\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"keepdirty%u\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"stat_read\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"stat_read%u\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"stat_write\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"stat_write%u\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"stat_delete\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"stat_delete%u\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"stat_flush\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"stat_flush%u\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"stat_activemap_update\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"stat_activemap_update%u\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"stat_read_error\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"stat_read_error%u\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"stat_write_error\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"stat_write_error%u\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"stat_delete_error\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"stat_delete_error%u\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"stat_flush_error\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"stat_flush_error%u\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"idle_queue_size\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"idle_queue_size%u\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"local_queue_size\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"local_queue_size%u\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"send_queue_size\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"send_queue_size%u\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"recv_queue_size\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"recv_queue_size%u\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"done_queue_size\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"done_queue_size%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hast_resource*, %struct.nv*, i32)* @control_status_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @control_status_worker(%struct.hast_resource* %0, %struct.nv* %1, i32 %2) #0 {
  %4 = alloca %struct.hast_resource*, align 8
  %5 = alloca %struct.nv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv*, align 8
  %8 = alloca %struct.nv*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.hast_resource* %0, %struct.hast_resource** %4, align 8
  store %struct.nv* %1, %struct.nv** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.nv* null, %struct.nv** %7, align 8
  %11 = call %struct.nv* (...) @nv_alloc()
  store %struct.nv* %11, %struct.nv** %8, align 8
  %12 = load %struct.nv*, %struct.nv** %8, align 8
  %13 = load i32, i32* @CONTROL_STATUS, align 4
  %14 = call i32 @nv_add_uint8(%struct.nv* %12, i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.nv*, %struct.nv** %8, align 8
  %16 = call i32 @nv_error(%struct.nv* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @LOG_ERR, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @pjdlog_common(i32 %20, i32 0, i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %149

23:                                               ; preds = %3
  %24 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %25 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %26 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nv*, %struct.nv** %8, align 8
  %29 = call i32 @hast_proto_send(%struct.hast_resource* %24, i32 %27, %struct.nv* %28, i32* null, i32 0)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @errno, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = call i32 @pjdlog_errno(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %149

35:                                               ; preds = %23
  %36 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %37 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @hast_proto_recv_hdr(i32 %38, %struct.nv** %7)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = call i32 @pjdlog_errno(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %149

45:                                               ; preds = %35
  %46 = load %struct.nv*, %struct.nv** %7, align 8
  %47 = call i32 @nv_get_int16(%struct.nv* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %149

51:                                               ; preds = %45
  %52 = load %struct.nv*, %struct.nv** %7, align 8
  %53 = call i8* @nv_get_string(%struct.nv* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %53, i8** %9, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @ENOENT, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @LOG_ERR, align 4
  %58 = call i32 @pjdlog_errno(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %149

59:                                               ; preds = %51
  %60 = load %struct.nv*, %struct.nv** %5, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @nv_add_string(%struct.nv* %60, i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  %64 = load %struct.nv*, %struct.nv** %5, align 8
  %65 = load %struct.nv*, %struct.nv** %7, align 8
  %66 = call i32 @nv_get_uint64(%struct.nv* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @nv_add_uint64(%struct.nv* %64, i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %67)
  %69 = load %struct.nv*, %struct.nv** %5, align 8
  %70 = load %struct.nv*, %struct.nv** %7, align 8
  %71 = call i32 @nv_get_uint32(%struct.nv* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @nv_add_uint32(%struct.nv* %69, i32 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %72)
  %74 = load %struct.nv*, %struct.nv** %5, align 8
  %75 = load %struct.nv*, %struct.nv** %7, align 8
  %76 = call i32 @nv_get_uint32(%struct.nv* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @nv_add_uint32(%struct.nv* %74, i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %77)
  %79 = load %struct.nv*, %struct.nv** %5, align 8
  %80 = load %struct.nv*, %struct.nv** %7, align 8
  %81 = call i32 @nv_get_uint64(%struct.nv* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @nv_add_uint64(%struct.nv* %79, i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %82)
  %84 = load %struct.nv*, %struct.nv** %5, align 8
  %85 = load %struct.nv*, %struct.nv** %7, align 8
  %86 = call i32 @nv_get_uint64(%struct.nv* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @nv_add_uint64(%struct.nv* %84, i32 %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 %87)
  %89 = load %struct.nv*, %struct.nv** %5, align 8
  %90 = load %struct.nv*, %struct.nv** %7, align 8
  %91 = call i32 @nv_get_uint64(%struct.nv* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @nv_add_uint64(%struct.nv* %89, i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 %92)
  %94 = load %struct.nv*, %struct.nv** %5, align 8
  %95 = load %struct.nv*, %struct.nv** %7, align 8
  %96 = call i32 @nv_get_uint64(%struct.nv* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @nv_add_uint64(%struct.nv* %94, i32 %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 %97)
  %99 = load %struct.nv*, %struct.nv** %5, align 8
  %100 = load %struct.nv*, %struct.nv** %7, align 8
  %101 = call i32 @nv_get_uint64(%struct.nv* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @nv_add_uint64(%struct.nv* %99, i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 %102)
  %104 = load %struct.nv*, %struct.nv** %5, align 8
  %105 = load %struct.nv*, %struct.nv** %7, align 8
  %106 = call i32 @nv_get_uint64(%struct.nv* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @nv_add_uint64(%struct.nv* %104, i32 %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 %107)
  %109 = load %struct.nv*, %struct.nv** %5, align 8
  %110 = load %struct.nv*, %struct.nv** %7, align 8
  %111 = call i32 @nv_get_uint64(%struct.nv* %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @nv_add_uint64(%struct.nv* %109, i32 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i32 %112)
  %114 = load %struct.nv*, %struct.nv** %5, align 8
  %115 = load %struct.nv*, %struct.nv** %7, align 8
  %116 = call i32 @nv_get_uint64(%struct.nv* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0))
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @nv_add_uint64(%struct.nv* %114, i32 %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 %117)
  %119 = load %struct.nv*, %struct.nv** %5, align 8
  %120 = load %struct.nv*, %struct.nv** %7, align 8
  %121 = call i32 @nv_get_uint64(%struct.nv* %120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0))
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @nv_add_uint64(%struct.nv* %119, i32 %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 %122)
  %124 = load %struct.nv*, %struct.nv** %5, align 8
  %125 = load %struct.nv*, %struct.nv** %7, align 8
  %126 = call i32 @nv_get_uint64(%struct.nv* %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @nv_add_uint64(%struct.nv* %124, i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 %127)
  %129 = load %struct.nv*, %struct.nv** %5, align 8
  %130 = load %struct.nv*, %struct.nv** %7, align 8
  %131 = call i32 @nv_get_uint64(%struct.nv* %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0))
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @nv_add_uint64(%struct.nv* %129, i32 %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i32 %132)
  %134 = load %struct.nv*, %struct.nv** %5, align 8
  %135 = load %struct.nv*, %struct.nv** %7, align 8
  %136 = call i32 @nv_get_uint64(%struct.nv* %135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0))
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @nv_add_uint64(%struct.nv* %134, i32 %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i32 %137)
  %139 = load %struct.nv*, %struct.nv** %5, align 8
  %140 = load %struct.nv*, %struct.nv** %7, align 8
  %141 = call i32 @nv_get_uint64(%struct.nv* %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0))
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @nv_add_uint64(%struct.nv* %139, i32 %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0), i32 %142)
  %144 = load %struct.nv*, %struct.nv** %5, align 8
  %145 = load %struct.nv*, %struct.nv** %7, align 8
  %146 = call i32 @nv_get_uint64(%struct.nv* %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0))
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @nv_add_uint64(%struct.nv* %144, i32 %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %59, %55, %50, %41, %31, %19
  %150 = load %struct.nv*, %struct.nv** %7, align 8
  %151 = icmp ne %struct.nv* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.nv*, %struct.nv** %7, align 8
  %154 = call i32 @nv_free(%struct.nv* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.nv*, %struct.nv** %8, align 8
  %157 = icmp ne %struct.nv* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.nv*, %struct.nv** %8, align 8
  %160 = call i32 @nv_free(%struct.nv* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load %struct.nv*, %struct.nv** %5, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @nv_add_int16(%struct.nv* %165, i32 %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %168

168:                                              ; preds = %164, %161
  ret void
}

declare dso_local %struct.nv* @nv_alloc(...) #1

declare dso_local i32 @nv_add_uint8(%struct.nv*, i32, i8*) #1

declare dso_local i32 @nv_error(%struct.nv*) #1

declare dso_local i32 @pjdlog_common(i32, i32, i32, i8*) #1

declare dso_local i32 @hast_proto_send(%struct.hast_resource*, i32, %struct.nv*, i32*, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*) #1

declare dso_local i32 @hast_proto_recv_hdr(i32, %struct.nv**) #1

declare dso_local i32 @nv_get_int16(%struct.nv*, i8*) #1

declare dso_local i8* @nv_get_string(%struct.nv*, i8*) #1

declare dso_local i32 @nv_add_string(%struct.nv*, i8*, i8*, i32) #1

declare dso_local i32 @nv_add_uint64(%struct.nv*, i32, i8*, i32) #1

declare dso_local i32 @nv_get_uint64(%struct.nv*, i8*) #1

declare dso_local i32 @nv_add_uint32(%struct.nv*, i32, i8*, i32) #1

declare dso_local i32 @nv_get_uint32(%struct.nv*, i8*) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

declare dso_local i32 @nv_add_int16(%struct.nv*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
