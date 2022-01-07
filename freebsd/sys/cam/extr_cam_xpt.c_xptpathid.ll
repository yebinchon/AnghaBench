; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptpathid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptpathid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAM_XPT_PATH_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"xpt0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"scbus\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.5 = private unnamed_addr constant [172 x i8] c"Ambiguous scbus configuration for %s%d bus %d, cannot wire down.  The kernel config entry for scbus%d should specify a controller bus.\0AScbus will be assigned dynamically.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @xptpathid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptpathid(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @CAM_XPT_PATH_ID, align 4
  store i32 %14, i32* %8, align 4
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @snprintf(i8* %15, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %72

27:                                               ; preds = %22, %3
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %63, %40, %36, %27
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %30 = call i64 @resource_find_match(i32* %9, i8** %13, i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load i8*, i8** %13, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %28

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %28

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @resource_int_value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %11)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %8, align 4
  br label %64

51:                                               ; preds = %45
  br label %63

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %8, align 4
  br label %64

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @printf(i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.5, i64 0, i64 0), i8* %58, i32 %59, i32 %60, i32 %61)
  br label %64

63:                                               ; preds = %51
  br label %28

64:                                               ; preds = %57, %55, %49, %28
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @CAM_XPT_PATH_ID, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 (...) @xptnextfreepathid()
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %25
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @resource_find_match(i32*, i8**, i32*, i8*, i8*) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @xptnextfreepathid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
