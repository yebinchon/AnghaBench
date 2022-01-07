; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_metadata_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_metadata_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_eli_metadata = type { i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Cannot open %s: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot write metadata to %s: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, i8*, %struct.g_eli_metadata*)* @eli_metadata_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eli_metadata_store(%struct.gctl_req* %0, i8* %1, %struct.g_eli_metadata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_eli_metadata*, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.g_eli_metadata* %2, %struct.g_eli_metadata** %7, align 8
  %11 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %7, align 8
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %13 = call i32 @eli_metadata_encode(%struct.g_eli_metadata* %11, i8* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @g_get_sectorsize(i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @O_WRONLY, align 4
  %20 = load i32, i32* @O_TRUNC, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @open(i8* %18, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @gctl_error(%struct.gctl_req* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %29)
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %32 = call i32 @explicit_bzero(i8* %31, i32 4)
  store i32 -1, i32* %4, align 4
  br label %70

33:                                               ; preds = %17
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %36 = call i32 @write(i32 %34, i8* %35, i32 4)
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 4
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 @gctl_error(%struct.gctl_req* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %43)
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %46 = call i32 @explicit_bzero(i8* %45, i32 4)
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @close(i32 %47)
  store i32 -1, i32* %4, align 4
  br label %70

49:                                               ; preds = %33
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @close(i32 %50)
  br label %67

52:                                               ; preds = %3
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %55 = call i32 @g_metadata_store(i8* %53, i8* %54, i32 4)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @strerror(i32 %61)
  %63 = call i32 @gctl_error(%struct.gctl_req* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %60, i32 %62)
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %65 = call i32 @explicit_bzero(i8* %64, i32 4)
  store i32 -1, i32* %4, align 4
  br label %70

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %49
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %69 = call i32 @explicit_bzero(i8* %68, i32 4)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %58, %39, %25
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @eli_metadata_encode(%struct.g_eli_metadata*, i8*) #1

declare dso_local i64 @g_get_sectorsize(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @explicit_bzero(i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @g_metadata_store(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
