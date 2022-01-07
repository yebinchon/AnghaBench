; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/virstor/extr_geom_virstor.c_virstor_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/virstor/extr_geom_virstor.c_virstor_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_virstor_metadata = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Too few arguments.\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"arg%u\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@G_VIRSTOR_MAGIC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Can't read metadata from %s: %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Not fully done (error reading metadata).\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Metadata on %s:\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @virstor_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virstor_dump(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca %struct.g_virstor_metadata, align 4
  %4 = alloca [512 x i32], align 16
  %5 = alloca i8*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %10 = call i32 @assert(i32 1)
  %11 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %12 = call i32 @gctl_get_int(%struct.gctl_req* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %17 = call i32 @gctl_error(%struct.gctl_req* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %54

18:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %51, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @snprintf(i8* %24, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %29 = call i8* @gctl_get_ascii(%struct.gctl_req* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast [512 x i32]* %4 to i32*
  %32 = load i32, i32* @G_VIRSTOR_MAGIC, align 4
  %33 = call i32 @g_metadata_read(i8* %30, i32* %31, i32 2048, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %23
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @strerror(i32 %39)
  %41 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %38, i8* %40)
  %42 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %43 = call i32 @gctl_error(%struct.gctl_req* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %51

44:                                               ; preds = %23
  %45 = bitcast [512 x i32]* %4 to i32*
  %46 = call i32 @virstor_metadata_decode(i32* %45, %struct.g_virstor_metadata* %3)
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  %49 = call i32 @virstor_metadata_dump(%struct.g_virstor_metadata* %3)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %51

51:                                               ; preds = %44, %36
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %19

54:                                               ; preds = %15, %19
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*, i8*) #1

declare dso_local i32 @g_metadata_read(i8*, i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @virstor_metadata_decode(i32*, %struct.g_virstor_metadata*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @virstor_metadata_dump(%struct.g_virstor_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
