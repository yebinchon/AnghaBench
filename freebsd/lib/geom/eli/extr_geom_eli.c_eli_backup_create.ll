; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_backup_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_backup_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Cannot get informations about %s: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot allocate memory.\00", align 1
@G_ELI_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to read metadata from %s: %s.\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Unable to open %s: %s.\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Unable to write to %s: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, i8*, i8*)* @eli_backup_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eli_backup_create(%struct.gctl_req* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %10, align 4
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @g_get_sectorsize(i8* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %20)
  br label %82

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = call i8* @malloc(i64 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %29 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %82

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* @G_ELI_MAGIC, align 4
  %35 = call i32 @g_metadata_read(i8* %31, i8* %32, i64 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 %42)
  br label %82

44:                                               ; preds = %30
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @O_WRONLY, align 4
  %47 = load i32, i32* @O_TRUNC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @O_CREAT, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @open(i8* %45, i32 %50, i32 384)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %56, i32 %58)
  br label %82

60:                                               ; preds = %44
  %61 = load i32, i32* %10, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @write(i32 %61, i8* %62, i64 %63)
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 @strerror(i32 %70)
  %72 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %69, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @close(i32 %73)
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @unlink(i8* %75)
  br label %82

77:                                               ; preds = %60
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @fsync(i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @close(i32 %80)
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %77, %67, %54, %38, %27, %16
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @explicit_bzero(i8* %86, i64 %87)
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @free(i8* %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load i32, i32* %11, align 4
  ret i32 %92
}

declare dso_local i64 @g_get_sectorsize(i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @g_metadata_read(i8*, i8*, i64, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @explicit_bzero(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
