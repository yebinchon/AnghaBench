; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_eli_metadata = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Cannot get informations about %s: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Provider size mismatch: wrong backup file?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @eli_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eli_restore(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca %struct.g_eli_metadata, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %8 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %9 = call i32 @gctl_get_int(%struct.gctl_req* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %14 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %17 = call i8* @gctl_get_ascii(%struct.gctl_req* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %17, i8** %4, align 8
  %18 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %19 = call i8* @gctl_get_ascii(%struct.gctl_req* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %19, i8** %5, align 8
  %20 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @eli_metadata_read(%struct.gctl_req* %20, i8* %21, %struct.g_eli_metadata* %3)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %56

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @g_get_mediasize(i8* %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %32, i32 %34)
  br label %56

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %3, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %43 = call i32 @gctl_get_int(%struct.gctl_req* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %3, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  br label %51

48:                                               ; preds = %41
  %49 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %50 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %56

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %36
  %53 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @eli_metadata_store(%struct.gctl_req* %53, i8* %54, %struct.g_eli_metadata* %3)
  br label %56

56:                                               ; preds = %52, %48, %30, %24, %12
  ret void
}

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*) #1

declare dso_local i32 @eli_metadata_read(%struct.gctl_req*, i8*, %struct.g_eli_metadata*) #1

declare dso_local i64 @g_get_mediasize(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @eli_metadata_store(%struct.gctl_req*, i8*, %struct.g_eli_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
