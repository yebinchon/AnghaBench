; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hastd.c_resource_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hastd.c_resource_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i64, i32, i64, i32, i64, i64, i64, i64, i32, i32 }
%struct.nv = type { i32 }

@HAST_ROLE_PRIMARY = common dso_local global i64 0, align 8
@CONTROL_RELOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"remoteaddr\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sourceaddr\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"replication\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"checksum\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"metaflush\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Unable to allocate header for reload message.\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"Unable to send reload message\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Unable to receive reload reply\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Reload failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hast_resource*)* @resource_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resource_reload(%struct.hast_resource* %0) #0 {
  %2 = alloca %struct.hast_resource*, align 8
  %3 = alloca %struct.nv*, align 8
  %4 = alloca %struct.nv*, align 8
  %5 = alloca i32, align 4
  store %struct.hast_resource* %0, %struct.hast_resource** %2, align 8
  %6 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %7 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HAST_ROLE_PRIMARY, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @PJDLOG_ASSERT(i32 %11)
  %13 = call %struct.nv* (...) @nv_alloc()
  store %struct.nv* %13, %struct.nv** %4, align 8
  %14 = load %struct.nv*, %struct.nv** %4, align 8
  %15 = load i32, i32* @CONTROL_RELOAD, align 4
  %16 = call i32 @nv_add_uint8(%struct.nv* %14, i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.nv*, %struct.nv** %4, align 8
  %18 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %19 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nv_add_string(%struct.nv* %17, i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.nv*, %struct.nv** %4, align 8
  %23 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %24 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @nv_add_string(%struct.nv* %22, i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.nv*, %struct.nv** %4, align 8
  %28 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %29 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @nv_add_int32(%struct.nv* %27, i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.nv*, %struct.nv** %4, align 8
  %34 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %35 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @nv_add_int32(%struct.nv* %33, i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %39 = load %struct.nv*, %struct.nv** %4, align 8
  %40 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %41 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @nv_add_int32(%struct.nv* %39, i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct.nv*, %struct.nv** %4, align 8
  %46 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %47 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @nv_add_int32(%struct.nv* %45, i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %51 = load %struct.nv*, %struct.nv** %4, align 8
  %52 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %53 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @nv_add_string(%struct.nv* %51, i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %56 = load %struct.nv*, %struct.nv** %4, align 8
  %57 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %58 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @nv_add_int32(%struct.nv* %56, i32 %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %62 = load %struct.nv*, %struct.nv** %4, align 8
  %63 = call i64 @nv_error(%struct.nv* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %1
  %66 = load %struct.nv*, %struct.nv** %4, align 8
  %67 = call i32 @nv_free(%struct.nv* %66)
  %68 = call i32 @pjdlog_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %104

69:                                               ; preds = %1
  %70 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %71 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %72 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.nv*, %struct.nv** %4, align 8
  %75 = call i32 @hast_proto_send(%struct.hast_resource* %70, i32 %73, %struct.nv* %74, i32* null, i32 0)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load i32, i32* @LOG_ERR, align 4
  %79 = call i32 @pjdlog_errno(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %80 = load %struct.nv*, %struct.nv** %4, align 8
  %81 = call i32 @nv_free(%struct.nv* %80)
  br label %104

82:                                               ; preds = %69
  %83 = load %struct.nv*, %struct.nv** %4, align 8
  %84 = call i32 @nv_free(%struct.nv* %83)
  %85 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %86 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @hast_proto_recv_hdr(i32 %87, %struct.nv** %3)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @LOG_ERR, align 4
  %92 = call i32 @pjdlog_errno(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %104

93:                                               ; preds = %82
  %94 = load %struct.nv*, %struct.nv** %3, align 8
  %95 = call i32 @nv_get_int16(%struct.nv* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  store i32 %95, i32* %5, align 4
  %96 = load %struct.nv*, %struct.nv** %3, align 8
  %97 = call i32 @nv_free(%struct.nv* %96)
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* @LOG_ERR, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @pjdlog_common(i32 %101, i32 0, i32 %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %104

104:                                              ; preds = %65, %77, %90, %100, %93
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.nv* @nv_alloc(...) #1

declare dso_local i32 @nv_add_uint8(%struct.nv*, i32, i8*) #1

declare dso_local i32 @nv_add_string(%struct.nv*, i32, i8*) #1

declare dso_local i32 @nv_add_int32(%struct.nv*, i32, i8*) #1

declare dso_local i64 @nv_error(%struct.nv*) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

declare dso_local i32 @pjdlog_error(i8*) #1

declare dso_local i32 @hast_proto_send(%struct.hast_resource*, i32, %struct.nv*, i32*, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*) #1

declare dso_local i32 @hast_proto_recv_hdr(i32, %struct.nv**) #1

declare dso_local i32 @nv_get_int16(%struct.nv*, i8*) #1

declare dso_local i32 @pjdlog_common(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
