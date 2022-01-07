; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_metadata.c_metadata_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_metadata.c_metadata_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32 }
%struct.ebuf = type { i32 }
%struct.nv = type { i32 }

@METADATA_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unable to allocate %zu bytes for metadata.\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"datasize\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"extentsize\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"keepdirty\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"resuid\00", align 1
@HAST_ROLE_PRIMARY = common dso_local global i64 0, align 8
@HAST_ROLE_INIT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"localcnt\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"remotecnt\00", align 1
@HAST_ROLE_SECONDARY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"prevrole\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Unable to create metadata.\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"Unable to write metadata\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metadata_write(%struct.hast_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hast_resource*, align 8
  %4 = alloca %struct.ebuf*, align 8
  %5 = alloca %struct.nv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hast_resource* %0, %struct.hast_resource** %3, align 8
  %11 = load i64, i64* @METADATA_SIZE, align 8
  %12 = call i8* @calloc(i32 1, i64 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* @METADATA_SIZE, align 8
  %17 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %16)
  store i32 -1, i32* %2, align 4
  br label %156

18:                                               ; preds = %1
  store i32 -1, i32* %10, align 4
  %19 = call %struct.nv* (...) @nv_alloc()
  store %struct.nv* %19, %struct.nv** %5, align 8
  %20 = load %struct.nv*, %struct.nv** %5, align 8
  %21 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %22 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %21, i32 0, i32 12
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @nv_add_string(%struct.nv* %20, i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.nv*, %struct.nv** %5, align 8
  %26 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %27 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %26, i32 0, i32 11
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @nv_add_uint64(%struct.nv* %25, i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.nv*, %struct.nv** %5, align 8
  %32 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %33 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %32, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @nv_add_uint32(%struct.nv* %31, i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.nv*, %struct.nv** %5, align 8
  %38 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %39 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @nv_add_uint32(%struct.nv* %37, i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %43 = load %struct.nv*, %struct.nv** %5, align 8
  %44 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %45 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @nv_add_uint64(%struct.nv* %43, i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %49 = load %struct.nv*, %struct.nv** %5, align 8
  %50 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %51 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nv_add_uint64(%struct.nv* %49, i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %54 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %55 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HAST_ROLE_PRIMARY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %18
  %60 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %61 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HAST_ROLE_INIT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59, %18
  %66 = load %struct.nv*, %struct.nv** %5, align 8
  %67 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %68 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @nv_add_uint64(%struct.nv* %66, i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %71 = load %struct.nv*, %struct.nv** %5, align 8
  %72 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %73 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nv_add_uint64(%struct.nv* %71, i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %94

76:                                               ; preds = %59
  %77 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %78 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @HAST_ROLE_SECONDARY, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @PJDLOG_ASSERT(i32 %82)
  %84 = load %struct.nv*, %struct.nv** %5, align 8
  %85 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %86 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @nv_add_uint64(%struct.nv* %84, i32 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %89 = load %struct.nv*, %struct.nv** %5, align 8
  %90 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %91 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @nv_add_uint64(%struct.nv* %89, i32 %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %76, %65
  %95 = load %struct.nv*, %struct.nv** %5, align 8
  %96 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %97 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @role2str(i64 %98)
  %100 = call i32 @nv_add_string(%struct.nv* %95, i32 %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %101 = load %struct.nv*, %struct.nv** %5, align 8
  %102 = call i64 @nv_error(%struct.nv* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %150

106:                                              ; preds = %94
  %107 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %108 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %111 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.nv*, %struct.nv** %5, align 8
  %113 = call %struct.ebuf* @nv_hton(%struct.nv* %112)
  store %struct.ebuf* %113, %struct.ebuf** %4, align 8
  %114 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %115 = icmp ne %struct.ebuf* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @PJDLOG_ASSERT(i32 %116)
  %118 = load %struct.ebuf*, %struct.ebuf** %4, align 8
  %119 = call i8* @ebuf_data(%struct.ebuf* %118, i64* %8)
  store i8* %119, i8** %7, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = icmp ne i8* %120, null
  %122 = zext i1 %121 to i32
  %123 = call i32 @PJDLOG_ASSERT(i32 %122)
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* @METADATA_SIZE, align 8
  %126 = icmp ult i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @PJDLOG_ASSERT(i32 %127)
  %129 = load i8*, i8** %7, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @bcopy(i8* %129, i8* %130, i64 %131)
  %133 = load %struct.hast_resource*, %struct.hast_resource** %3, align 8
  %134 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = load i64, i64* @METADATA_SIZE, align 8
  %138 = call i32 @pwrite(i32 %135, i8* %136, i64 %137, i32 0)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %146, label %141

141:                                              ; preds = %106
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* @METADATA_SIZE, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %141, %106
  %147 = load i32, i32* @LOG_ERR, align 4
  %148 = call i32 @pjdlog_errno(i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %150

149:                                              ; preds = %141
  store i32 0, i32* %10, align 4
  br label %150

150:                                              ; preds = %149, %146, %104
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 @free(i8* %151)
  %153 = load %struct.nv*, %struct.nv** %5, align 8
  %154 = call i32 @nv_free(%struct.nv* %153)
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %150, %15
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @pjdlog_error(i8*, ...) #1

declare dso_local %struct.nv* @nv_alloc(...) #1

declare dso_local i32 @nv_add_string(%struct.nv*, i32, i8*) #1

declare dso_local i32 @nv_add_uint64(%struct.nv*, i32, i8*) #1

declare dso_local i32 @nv_add_uint32(%struct.nv*, i32, i8*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @role2str(i64) #1

declare dso_local i64 @nv_error(%struct.nv*) #1

declare dso_local %struct.ebuf* @nv_hton(%struct.nv*) #1

declare dso_local i8* @ebuf_data(%struct.ebuf*, i64*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @pwrite(i32, i8*, i64, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
