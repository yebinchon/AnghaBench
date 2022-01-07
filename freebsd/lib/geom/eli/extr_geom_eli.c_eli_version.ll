; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_eli_metadata = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"kern.geom.eli.version\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to obtain GELI kernel version\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"kernel: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"userland: %u\0A\00", align 1
@G_ELI_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@G_ELI_MAGIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"%s: Unable to read metadata: %s.\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Not fully done.\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @eli_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eli_version(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca %struct.g_eli_metadata, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %11 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %12 = call i32 @gctl_get_int(%struct.gctl_req* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  store i32 4, i32* %10, align 4
  %16 = call i32 @sysctlbyname(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %10, i32* null, i32 0)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i32, i32* @G_ELI_VERSION, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  br label %57

26:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %54, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @gctl_get_ascii(%struct.gctl_req* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = bitcast %struct.g_eli_metadata* %3 to i8*
  %37 = load i32, i32* @G_ELI_MAGIC, align 4
  %38 = call i32 @g_metadata_read(i8* %35, i8* %36, i32 4, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %42, i32 %44)
  %46 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %47 = call i32 @gctl_error(%struct.gctl_req* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %54

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %3, i32 0, i32 0
  %50 = call i32 @le32dec(i32* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %27

57:                                               ; preds = %23, %27
  ret void
}

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @g_metadata_read(i8*, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local i32 @le32dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
