; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_metadata_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_metadata_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_eli_metadata = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Cannot open %s: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot read metadata from %s: %s.\00", align 1
@G_ELI_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [89 x i8] c"Provider's %s metadata version %u is too new.\0Ageli: The highest supported version is %u.\00", align 1
@G_ELI_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Inconsistent provider's %s metadata.\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Unexpected error while decoding provider's %s metadata: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, i8*, %struct.g_eli_metadata*)* @eli_metadata_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eli_metadata_read(%struct.gctl_req* %0, i8* %1, %struct.g_eli_metadata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_eli_metadata*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.g_eli_metadata* %2, %struct.g_eli_metadata** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @g_get_sectorsize(i8* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = call i32 @open(i8* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 (%struct.gctl_req*, i8*, i8*, ...) @gctl_error(%struct.gctl_req* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %24)
  store i32 -1, i32* %4, align 4
  br label %83

26:                                               ; preds = %14
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %29 = call i32 @read(i32 %27, i8* %28, i32 8)
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 8
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 (%struct.gctl_req*, i8*, i8*, ...) @gctl_error(%struct.gctl_req* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @close(i32 %38)
  store i32 -1, i32* %4, align 4
  br label %83

40:                                               ; preds = %26
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @close(i32 %41)
  br label %57

43:                                               ; preds = %3
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %46 = load i32, i32* @G_ELI_MAGIC, align 4
  %47 = call i32 @g_metadata_read(i8* %44, i8* %45, i32 8, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @strerror(i32 %53)
  %55 = call i32 (%struct.gctl_req*, i8*, i8*, ...) @gctl_error(%struct.gctl_req* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %54)
  store i32 -1, i32* %4, align 4
  br label %83

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %40
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %59 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %7, align 8
  %60 = call i32 @eli_metadata_decode(i8* %58, %struct.g_eli_metadata* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  switch i32 %61, label %76 [
    i32 0, label %62
    i32 128, label %63
    i32 129, label %72
  ]

62:                                               ; preds = %57
  br label %82

63:                                               ; preds = %57
  %64 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %7, align 8
  %67 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @G_ELI_VERSION, align 4
  %71 = call i32 (%struct.gctl_req*, i8*, i8*, ...) @gctl_error(%struct.gctl_req* %64, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i8* %65, i32 %69, i32 %70)
  store i32 -1, i32* %4, align 4
  br label %83

72:                                               ; preds = %57
  %73 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 (%struct.gctl_req*, i8*, i8*, ...) @gctl_error(%struct.gctl_req* %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  store i32 -1, i32* %4, align 4
  br label %83

76:                                               ; preds = %57
  %77 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @strerror(i32 %79)
  %81 = call i32 (%struct.gctl_req*, i8*, i8*, ...) @gctl_error(%struct.gctl_req* %77, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* %78, i32 %80)
  store i32 -1, i32* %4, align 4
  br label %83

82:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %76, %72, %63, %50, %32, %20
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @g_get_sectorsize(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @g_metadata_read(i8*, i8*, i32, i32) #1

declare dso_local i32 @eli_metadata_decode(i8*, %struct.g_eli_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
