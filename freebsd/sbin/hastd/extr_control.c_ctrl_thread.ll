; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_control.c_ctrl_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_control.c_ctrl_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i32, i32, i32, i32 (%struct.nv*)*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32*, i32* }
%struct.nv = type { i32 }

@sigexit_received = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to receive control message\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Control message is missing 'cmd' field.\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"complete\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"degraded\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"extentsize\00", align 1
@HAST_ROLE_PRIMARY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"keepdirty\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"stat_read\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"stat_write\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"stat_delete\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"stat_flush\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"stat_activemap_update\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"stat_read_error\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"stat_write_error\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"stat_delete_error\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"stat_flush_error\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [44 x i8] c"Unable to create answer on control message.\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Unable to send reply to control message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ctrl_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hast_resource*, align 8
  %4 = alloca %struct.nv*, align 8
  %5 = alloca %struct.nv*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.hast_resource*
  store %struct.hast_resource* %8, %struct.hast_resource** %3, align 8
  br label %9

9:                                                ; preds = %186, %172, %32, %1
  %10 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %11 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hast_proto_recv_hdr(i32 %12, %struct.nv** %4)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load i64, i64* @sigexit_received, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @pthread_exit(i32* null)
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = call i32 @pjdlog_errno(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 (...) @getpid()
  %24 = load i32, i32* @SIGTERM, align 4
  %25 = call i32 @kill(i32 %23, i32 %24)
  %26 = call i32 @pthread_exit(i32* null)
  br label %27

27:                                               ; preds = %20, %9
  %28 = load %struct.nv*, %struct.nv** %4, align 8
  %29 = call i32 @nv_get_uint8(%struct.nv* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = call i32 @pjdlog_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.nv*, %struct.nv** %4, align 8
  %35 = call i32 @nv_free(%struct.nv* %34)
  br label %9

36:                                               ; preds = %27
  %37 = call %struct.nv* (...) @nv_alloc()
  store %struct.nv* %37, %struct.nv** %5, align 8
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %162 [
    i32 128, label %39
    i32 129, label %149
  ]

39:                                               ; preds = %36
  %40 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %41 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %40, i32 0, i32 18
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %46 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %45, i32 0, i32 17
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.nv*, %struct.nv** %5, align 8
  %51 = call i32 @nv_add_string(%struct.nv* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %55

52:                                               ; preds = %44, %39
  %53 = load %struct.nv*, %struct.nv** %5, align 8
  %54 = call i32 @nv_add_string(%struct.nv* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.nv*, %struct.nv** %5, align 8
  %57 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %58 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @nv_add_uint32(%struct.nv* %56, i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %61 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %62 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HAST_ROLE_PRIMARY, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %55
  %67 = load %struct.nv*, %struct.nv** %5, align 8
  %68 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %69 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %68, i32 0, i32 16
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @nv_add_uint32(%struct.nv* %67, i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %72 = load %struct.nv*, %struct.nv** %5, align 8
  %73 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %74 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %73, i32 0, i32 15
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @activemap_ndirty(i32 %75)
  %77 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %78 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %76, %79
  %81 = sext i32 %80 to i64
  %82 = call i32 @nv_add_uint64(%struct.nv* %72, i64 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %88

83:                                               ; preds = %55
  %84 = load %struct.nv*, %struct.nv** %5, align 8
  %85 = call i32 @nv_add_uint32(%struct.nv* %84, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %86 = load %struct.nv*, %struct.nv** %5, align 8
  %87 = call i32 @nv_add_uint64(%struct.nv* %86, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %66
  %89 = load %struct.nv*, %struct.nv** %5, align 8
  %90 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %91 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %90, i32 0, i32 14
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @nv_add_uint64(%struct.nv* %89, i64 %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %94 = load %struct.nv*, %struct.nv** %5, align 8
  %95 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %96 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %95, i32 0, i32 13
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @nv_add_uint64(%struct.nv* %94, i64 %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %99 = load %struct.nv*, %struct.nv** %5, align 8
  %100 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %101 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %100, i32 0, i32 12
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @nv_add_uint64(%struct.nv* %99, i64 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %104 = load %struct.nv*, %struct.nv** %5, align 8
  %105 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %106 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %105, i32 0, i32 11
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @nv_add_uint64(%struct.nv* %104, i64 %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %109 = load %struct.nv*, %struct.nv** %5, align 8
  %110 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %111 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %110, i32 0, i32 10
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @nv_add_uint64(%struct.nv* %109, i64 %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %114 = load %struct.nv*, %struct.nv** %5, align 8
  %115 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %116 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %115, i32 0, i32 9
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @nv_add_uint64(%struct.nv* %114, i64 %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %119 = load %struct.nv*, %struct.nv** %5, align 8
  %120 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %121 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %120, i32 0, i32 8
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %124 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = call i32 @nv_add_uint64(%struct.nv* %119, i64 %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %128 = load %struct.nv*, %struct.nv** %5, align 8
  %129 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %130 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @nv_add_uint64(%struct.nv* %128, i64 %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %133 = load %struct.nv*, %struct.nv** %5, align 8
  %134 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %135 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %138 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = call i32 @nv_add_uint64(%struct.nv* %133, i64 %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %142 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %143 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %142, i32 0, i32 3
  %144 = load i32 (%struct.nv*)*, i32 (%struct.nv*)** %143, align 8
  %145 = load %struct.nv*, %struct.nv** %5, align 8
  %146 = call i32 %144(%struct.nv* %145)
  %147 = load %struct.nv*, %struct.nv** %5, align 8
  %148 = call i32 @nv_add_int16(%struct.nv* %147, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %166

149:                                              ; preds = %36
  %150 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %151 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @HAST_ROLE_PRIMARY, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @PJDLOG_ASSERT(i32 %155)
  %157 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %158 = load %struct.nv*, %struct.nv** %4, align 8
  %159 = call i32 @primary_config_reload(%struct.hast_resource* %157, %struct.nv* %158)
  %160 = load %struct.nv*, %struct.nv** %5, align 8
  %161 = call i32 @nv_add_int16(%struct.nv* %160, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %166

162:                                              ; preds = %36
  %163 = load %struct.nv*, %struct.nv** %5, align 8
  %164 = load i32, i32* @EINVAL, align 4
  %165 = call i32 @nv_add_int16(%struct.nv* %163, i32 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %166

166:                                              ; preds = %162, %149, %88
  %167 = load %struct.nv*, %struct.nv** %4, align 8
  %168 = call i32 @nv_free(%struct.nv* %167)
  %169 = load %struct.nv*, %struct.nv** %5, align 8
  %170 = call i64 @nv_error(%struct.nv* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = call i32 @pjdlog_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0))
  %174 = load %struct.nv*, %struct.nv** %5, align 8
  %175 = call i32 @nv_free(%struct.nv* %174)
  br label %9

176:                                              ; preds = %166
  %177 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %178 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.nv*, %struct.nv** %5, align 8
  %181 = call i32 @hast_proto_send(i32* null, i32 %179, %struct.nv* %180, i32* null, i32 0)
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %186

183:                                              ; preds = %176
  %184 = load i32, i32* @LOG_ERR, align 4
  %185 = call i32 @pjdlog_errno(i32 %184, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %176
  %187 = load %struct.nv*, %struct.nv** %5, align 8
  %188 = call i32 @nv_free(%struct.nv* %187)
  br label %9
}

declare dso_local i32 @hast_proto_recv_hdr(i32, %struct.nv**) #1

declare dso_local i32 @pthread_exit(i32*) #1

declare dso_local i32 @pjdlog_errno(i32, i8*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @nv_get_uint8(%struct.nv*, i8*) #1

declare dso_local i32 @pjdlog_error(i8*) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

declare dso_local %struct.nv* @nv_alloc(...) #1

declare dso_local i32 @nv_add_string(%struct.nv*, i8*, i8*) #1

declare dso_local i32 @nv_add_uint32(%struct.nv*, i32, i8*) #1

declare dso_local i32 @nv_add_uint64(%struct.nv*, i64, i8*) #1

declare dso_local i32 @activemap_ndirty(i32) #1

declare dso_local i32 @nv_add_int16(%struct.nv*, i32, i8*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @primary_config_reload(%struct.hast_resource*, %struct.nv*) #1

declare dso_local i64 @nv_error(%struct.nv*) #1

declare dso_local i32 @hast_proto_send(i32*, i32, %struct.nv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
