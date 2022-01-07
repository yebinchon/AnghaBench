; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_trash_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_trash_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"kern.geom.eli.overwrites\00", align 1
@G_ELI_OVERWRITES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot obtain provider sector size %s: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Cannot allocate %zd bytes of memory.\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Cannot trash metadata on provider %s: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, i8*, i32, i32)* @eli_trash_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eli_trash_metadata(%struct.gctl_req* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gctl_req*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 4, i32* %12, align 4
  %14 = call i32 @sysctlbyname(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %12, i32* null, i32 0)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @G_ELI_OVERWRITES, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @g_sectorsize(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %30)
  store i32 -1, i32* %5, align 4
  br label %78

32:                                               ; preds = %21
  %33 = load i32, i32* %12, align 4
  %34 = call i8* @malloc(i32 %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store i32 -1, i32* %5, align 4
  br label %78

41:                                               ; preds = %32
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @arc4random_buf(i8* %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @pwrite(i32 %46, i8* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @errno, align 4
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %56, %53
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @g_flush(i32 %60)
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %63, -1
  store i32 %64, i32* %10, align 4
  %65 = icmp ugt i32 %64, 0
  br i1 %65, label %42, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @strerror(i32 %74)
  %76 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %73, i32 %75)
  store i32 -1, i32* %5, align 4
  br label %78

77:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %71, %37, %26
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @sysctlbyname(i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @g_sectorsize(i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @arc4random_buf(i8*, i32) #1

declare dso_local i32 @pwrite(i32, i8*, i32, i32) #1

declare dso_local i32 @g_flush(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
