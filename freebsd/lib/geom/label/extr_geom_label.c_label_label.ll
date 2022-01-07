; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/label/extr_geom_label.c_label_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/label/extr_geom_label.c_label_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_label_metadata = type { i64, i32*, i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Can't store metadata on %s: %s.\00", align 1
@G_LABEL_MAGIC = common dso_local global i8* null, align 8
@G_LABEL_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Can't get mediasize of %s: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Can't store metadata on %s: %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Not done.\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"Metadata value stored on %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @label_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @label_label(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca %struct.g_label_metadata, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [512 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %9 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %10 = call i32 @bzero(i32* %9, i32 2048)
  %11 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %12 = call i32 @gctl_get_int(%struct.gctl_req* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %17 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %81

18:                                               ; preds = %1
  %19 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %20 = call i8* @gctl_get_ascii(%struct.gctl_req* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @g_metadata_clear(i8* %21, i32* null)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @strerror(i32 %28)
  %30 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %27, i8* %29)
  br label %81

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.g_label_metadata, %struct.g_label_metadata* %3, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i8*, i8** @G_LABEL_MAGIC, align 8
  %35 = call i32 @strlcpy(i32* %33, i8* %34, i32 8)
  %36 = load i32, i32* @G_LABEL_VERSION, align 4
  %37 = getelementptr inbounds %struct.g_label_metadata, %struct.g_label_metadata* %3, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %39 = call i8* @gctl_get_ascii(%struct.gctl_req* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %39, i8** %5, align 8
  %40 = getelementptr inbounds %struct.g_label_metadata, %struct.g_label_metadata* %3, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @bzero(i32* %41, i32 8)
  %43 = getelementptr inbounds %struct.g_label_metadata, %struct.g_label_metadata* %3, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strlcpy(i32* %44, i8* %45, i32 8)
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @g_get_mediasize(i8* %47)
  %49 = getelementptr inbounds %struct.g_label_metadata, %struct.g_label_metadata* %3, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.g_label_metadata, %struct.g_label_metadata* %3, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %31
  %54 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* @errno, align 4
  %57 = call i8* @strerror(i32 %56)
  %58 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %55, i8* %57)
  br label %81

59:                                               ; preds = %31
  %60 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %61 = call i32 @label_metadata_encode(%struct.g_label_metadata* %3, i32* %60)
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %64 = call i32 @g_metadata_store(i8* %62, i32* %63, i32 2048)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load i32, i32* @stderr, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i8* @strerror(i32 %70)
  %72 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %69, i8* %71)
  %73 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %74 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %75

75:                                               ; preds = %67, %59
  %76 = load i64, i64* @verbose, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %15, %25, %53, %78, %75
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*) #1

declare dso_local i32 @g_metadata_clear(i8*, i32*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @strlcpy(i32*, i8*, i32) #1

declare dso_local i64 @g_get_mediasize(i8*) #1

declare dso_local i32 @label_metadata_encode(%struct.g_label_metadata*, i32*) #1

declare dso_local i32 @g_metadata_store(i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
