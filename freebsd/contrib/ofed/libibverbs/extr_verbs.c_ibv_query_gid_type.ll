; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ibv_query_gid_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ibv_query_gid_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ports/%d/gid_attrs/types/%d\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@IBV_GID_TYPE_IB_ROCE_V1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s/%s/%d/%s/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"gid_attrs\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@V1_TYPE = common dso_local global i32 0, align 4
@V2_TYPE = common dso_local global i32 0, align 4
@IBV_GID_TYPE_ROCE_V2 = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_query_gid_type(%struct.ibv_context* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca [11 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @snprintf(i8* %14, i32 32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  store i64 0, i64* @errno, align 8
  %18 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %19 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %24 = getelementptr inbounds [11 x i8], [11 x i8]* %11, i64 0, i64 0
  %25 = call i64 @ibv_read_sysfs_file(i32 %22, i8* %23, i8* %24, i32 11)
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %4
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EINVAL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @IBV_GID_TYPE_IB_ROCE_V1, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %5, align 4
  br label %86

34:                                               ; preds = %27
  %35 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %36 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @asprintf(i8** %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %86

44:                                               ; preds = %34
  %45 = load i8*, i8** %12, align 8
  %46 = call i32* @opendir(i8* %45)
  store i32* %46, i32** %13, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32*, i32** %13, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @ENOENT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @IBV_GID_TYPE_IB_ROCE_V1, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %59

58:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %86

59:                                               ; preds = %55
  br label %64

60:                                               ; preds = %44
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @closedir(i32* %61)
  %63 = load i64, i64* @EFAULT, align 8
  store i64 %63, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %86

64:                                               ; preds = %59
  br label %85

65:                                               ; preds = %4
  %66 = getelementptr inbounds [11 x i8], [11 x i8]* %11, i64 0, i64 0
  %67 = load i32, i32* @V1_TYPE, align 4
  %68 = call i32 @strcmp(i8* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @IBV_GID_TYPE_IB_ROCE_V1, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %84

73:                                               ; preds = %65
  %74 = getelementptr inbounds [11 x i8], [11 x i8]* %11, i64 0, i64 0
  %75 = load i32, i32* @V2_TYPE, align 4
  %76 = call i32 @strcmp(i8* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @IBV_GID_TYPE_ROCE_V2, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  br label %83

81:                                               ; preds = %73
  %82 = load i64, i64* @ENOTSUP, align 8
  store i64 %82, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %86

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %70
  br label %85

85:                                               ; preds = %84, %64
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %81, %60, %58, %43, %31
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @ibv_read_sysfs_file(i32, i8*, i8*, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
