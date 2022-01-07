; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_snapshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@BE_ERR_INVALIDNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@BE_ERR_NOPOOL = common dso_local global i32 0, align 4
@BE_ERR_UNKNOWN = common dso_local global i32 0, align 4
@BE_ERR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_snapshot(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* @BE_MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @be_root_concat(%struct.TYPE_7__* %20, i8* %21, i8* %19)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = call i32 @be_exists(%struct.TYPE_7__* %23, i8* %19)
  store i32 %24, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @set_error(%struct.TYPE_7__* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %108

30:                                               ; preds = %5
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %30
  %34 = trunc i64 %17 to i32
  %35 = call i32 @strlcat(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = sext i32 %35 to i64
  %37 = icmp uge i64 %36, %17
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = load i32, i32* @BE_ERR_INVALIDNAME, align 4
  %41 = call i32 @set_error(%struct.TYPE_7__* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %108

42:                                               ; preds = %33
  %43 = load i8*, i8** %9, align 8
  %44 = trunc i64 %17 to i32
  %45 = call i32 @strlcat(i8* %19, i8* %43, i32 %44)
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %46, %17
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = load i32, i32* @BE_ERR_INVALIDNAME, align 4
  %51 = call i32 @set_error(%struct.TYPE_7__* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %108

52:                                               ; preds = %42
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* @BE_MAXPATHLEN, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @snprintf(i8* %56, i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %59)
  br label %61

61:                                               ; preds = %55, %52
  br label %81

62:                                               ; preds = %30
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = trunc i64 %17 to i32
  %65 = call i32 @be_setup_snapshot_name(%struct.TYPE_7__* %63, i8* %19, i32 %64)
  %66 = load i8*, i8** %11, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i8*, i8** %11, align 8
  %70 = call i64 @strrchr(i8* %19, i8 signext 47)
  %71 = add nsw i64 %70, 1
  %72 = trunc i64 %17 to i32
  %73 = call i32 @strlcpy(i8* %69, i64 %71, i32 %72)
  %74 = sext i32 %73 to i64
  %75 = icmp uge i64 %74, %17
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = load i32, i32* @BE_ERR_INVALIDNAME, align 4
  %79 = call i32 @set_error(%struct.TYPE_7__* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %108

80:                                               ; preds = %68, %62
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @zfs_snapshot(i32 %84, i8* %19, i32 %85, i32* null)
  store i32 %86, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %81
  %89 = load i32, i32* %14, align 4
  switch i32 %89, label %94 [
    i32 128, label %90
  ]

90:                                               ; preds = %88
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = load i32, i32* @BE_ERR_INVALIDNAME, align 4
  %93 = call i32 @set_error(%struct.TYPE_7__* %91, i32 %92)
  store i32 %93, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %108

94:                                               ; preds = %88
  %95 = load i32, i32* @errno, align 4
  %96 = load i32, i32* @ENOTSUP, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %100 = load i32, i32* @BE_ERR_NOPOOL, align 4
  %101 = call i32 @set_error(%struct.TYPE_7__* %99, i32 %100)
  store i32 %101, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %108

102:                                              ; preds = %94
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = load i32, i32* @BE_ERR_UNKNOWN, align 4
  %105 = call i32 @set_error(%struct.TYPE_7__* %103, i32 %104)
  store i32 %105, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %108

106:                                              ; preds = %81
  %107 = load i32, i32* @BE_ERR_SUCCESS, align 4
  store i32 %107, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %108

108:                                              ; preds = %106, %102, %98, %90, %76, %48, %38, %26
  %109 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @be_root_concat(%struct.TYPE_7__*, i8*, i8*) #2

declare dso_local i32 @be_exists(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @set_error(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @be_setup_snapshot_name(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i64, i32) #2

declare dso_local i64 @strrchr(i8*, i8 signext) #2

declare dso_local i32 @zfs_snapshot(i32, i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
