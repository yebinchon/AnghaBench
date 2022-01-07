; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/mirror/extr_geom_mirror.c_mirror_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/mirror/extr_geom_mirror.c_mirror_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_mirror_metadata = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Too few arguments.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@G_MIRROR_MAGIC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Cannot read metadata from %s: %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Not fully done.\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"MD5 hash mismatch for provider %s, skipping.\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Provider %s is not the mirror %s component.\0A\00", align 1
@G_MIRROR_DISK_FLAG_INACTIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Cannot write metadata from %s: %s.\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"Provider %s activated.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @mirror_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mirror_activate(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca %struct.g_mirror_metadata, align 4
  %4 = alloca %struct.g_mirror_metadata, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %10 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %11 = call i32 @gctl_get_int(%struct.gctl_req* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %16 = call i32 @gctl_error(%struct.gctl_req* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %96

17:                                               ; preds = %1
  %18 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %19 = call i8* (%struct.gctl_req*, i8*, ...) @gctl_get_ascii(%struct.gctl_req* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %19, i8** %5, align 8
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %93, %17
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %96

24:                                               ; preds = %20
  %25 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i8* (%struct.gctl_req*, i8*, ...) @gctl_get_ascii(%struct.gctl_req* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast %struct.g_mirror_metadata* %4 to i32*
  %30 = load i32, i32* @G_MIRROR_MAGIC, align 4
  %31 = call i32 @g_metadata_read(i8* %28, i32* %29, i32 8, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @strerror(i32 %37)
  %39 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %36, i8* %38)
  %40 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %41 = call i32 @gctl_error(%struct.gctl_req* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %93

42:                                               ; preds = %24
  %43 = bitcast %struct.g_mirror_metadata* %4 to i32*
  %44 = call i64 @mirror_metadata_decode(i32* %43, %struct.g_mirror_metadata* %3)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %48)
  %50 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %51 = call i32 @gctl_error(%struct.gctl_req* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %93

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %3, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @strcmp(i32 %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %60, i8* %61)
  %63 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %64 = call i32 @gctl_error(%struct.gctl_req* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %93

65:                                               ; preds = %52
  %66 = load i32, i32* @G_MIRROR_DISK_FLAG_INACTIVE, align 4
  %67 = xor i32 %66, -1
  %68 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %3, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = bitcast %struct.g_mirror_metadata* %4 to i32*
  %72 = call i32 @mirror_metadata_encode(%struct.g_mirror_metadata* %3, i32* %71)
  %73 = load i8*, i8** %6, align 8
  %74 = bitcast %struct.g_mirror_metadata* %4 to i32*
  %75 = call i32 @g_metadata_store(i8* %73, i32* %74, i32 8)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %65
  %79 = load i32, i32* @stderr, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i8* @strerror(i32 %81)
  %83 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %80, i8* %82)
  %84 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %85 = call i32 @gctl_error(%struct.gctl_req* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %93

86:                                               ; preds = %65
  %87 = load i64, i64* @verbose, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %78, %58, %46, %34
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %20

96:                                               ; preds = %14, %20
  ret void
}

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @g_metadata_read(i8*, i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @mirror_metadata_decode(i32*, %struct.g_mirror_metadata*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @mirror_metadata_encode(%struct.g_mirror_metadata*, i32*) #1

declare dso_local i32 @g_metadata_store(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
