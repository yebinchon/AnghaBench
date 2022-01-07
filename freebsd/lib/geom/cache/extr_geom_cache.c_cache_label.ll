; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/cache/extr_geom_cache.c_cache_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/cache/extr_geom_cache.c_cache_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_cache_metadata = type { i64, i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@G_CACHE_MAGIC = common dso_local global i8* null, align 8
@G_CACHE_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Can't get mediasize of %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"Not fully done.\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Can't store metadata on %s: %s.\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"Metadata value stored on %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @cache_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_label(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca %struct.g_cache_metadata, align 8
  %4 = alloca [512 x i32], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %9 = getelementptr inbounds [512 x i32], [512 x i32]* %4, i64 0, i64 0
  %10 = call i32 @bzero(i32* %9, i32 2048)
  %11 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %12 = call i32 @gctl_get_int(%struct.gctl_req* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %17 = call i32 @gctl_error(%struct.gctl_req* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %77

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %3, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** @G_CACHE_MAGIC, align 8
  %22 = call i32 @strlcpy(i32 %20, i8* %21, i32 4)
  %23 = load i32, i32* @G_CACHE_VERSION, align 4
  %24 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %3, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %26 = call i8* @gctl_get_ascii(%struct.gctl_req* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %26, i8** %5, align 8
  %27 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %3, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strlcpy(i32 %28, i8* %29, i32 4)
  %31 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %32 = call i8* @gctl_get_intmax(%struct.gctl_req* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %3, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %36 = call i8* @gctl_get_intmax(%struct.gctl_req* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %3, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %40 = call i8* @gctl_get_ascii(%struct.gctl_req* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @g_get_mediasize(i8* %41)
  %43 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %3, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %3, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %18
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @errno, align 4
  %51 = call i8* @strerror(i32 %50)
  %52 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %49, i8* %51)
  %53 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %54 = call i32 @gctl_error(%struct.gctl_req* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %77

55:                                               ; preds = %18
  %56 = getelementptr inbounds [512 x i32], [512 x i32]* %4, i64 0, i64 0
  %57 = call i32 @cache_metadata_encode(%struct.g_cache_metadata* %3, i32* %56)
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds [512 x i32], [512 x i32]* %4, i64 0, i64 0
  %60 = call i32 @g_metadata_store(i8* %58, i32* %59, i32 2048)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i8* @strerror(i32 %66)
  %68 = call i32 @fprintf(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %65, i8* %67)
  %69 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %70 = call i32 @gctl_error(%struct.gctl_req* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %77

71:                                               ; preds = %55
  %72 = load i64, i64* @verbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %15, %47, %63, %74, %71
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*) #1

declare dso_local i8* @gctl_get_intmax(%struct.gctl_req*, i8*) #1

declare dso_local i64 @g_get_mediasize(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @cache_metadata_encode(%struct.g_cache_metadata*, i32*) #1

declare dso_local i32 @g_metadata_store(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
