; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_eli_metadata = type { i64 }

@G_ELI_USERKEYLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Provider size mismatch.\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"Resumed %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @eli_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eli_resume(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca %struct.g_eli_metadata, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %10 = load i32, i32* @G_ELI_USERKEYLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %15 = call i32 @gctl_get_int(%struct.gctl_req* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %20 = call i32 @gctl_error(%struct.gctl_req* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %63

21:                                               ; preds = %1
  %22 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %23 = call i8* @gctl_get_ascii(%struct.gctl_req* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %23, i8** %6, align 8
  %24 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @eli_metadata_read(%struct.gctl_req* %24, i8* %25, %struct.g_eli_metadata* %3)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %63

29:                                               ; preds = %21
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @g_get_mediasize(i8* %30)
  store i64 %31, i64* %7, align 8
  %32 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %3, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %38 = call i32 @gctl_error(%struct.gctl_req* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %63

39:                                               ; preds = %29
  %40 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %41 = call i32* @eli_genkey(%struct.gctl_req* %40, %struct.g_eli_metadata* %3, i8* %13, i32 0)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = trunc i64 %11 to i32
  %45 = call i32 @explicit_bzero(i8* %13, i32 %44)
  store i32 1, i32* %9, align 4
  br label %63

46:                                               ; preds = %39
  %47 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %48 = trunc i64 %11 to i32
  %49 = call i32 @gctl_ro_param(%struct.gctl_req* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %48, i8* %13)
  %50 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %51 = call i32* @gctl_issue(%struct.gctl_req* %50)
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i64, i64* @verbose, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %46
  %61 = trunc i64 %11 to i32
  %62 = call i32 @explicit_bzero(i8* %13, i32 %61)
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %43, %36, %28, %18
  %64 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %67 [
    i32 0, label %66
    i32 1, label %66
  ]

66:                                               ; preds = %63, %63
  ret void

67:                                               ; preds = %63
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gctl_get_int(%struct.gctl_req*, i8*) #2

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #2

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*) #2

declare dso_local i32 @eli_metadata_read(%struct.gctl_req*, i8*, %struct.g_eli_metadata*) #2

declare dso_local i64 @g_get_mediasize(i8*) #2

declare dso_local i32* @eli_genkey(%struct.gctl_req*, %struct.g_eli_metadata*, i8*, i32) #2

declare dso_local i32 @explicit_bzero(i8*, i32) #2

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, i8*) #2

declare dso_local i32* @gctl_issue(%struct.gctl_req*) #2

declare dso_local i32 @printf(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
