; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount_nullfs/extr_mount_nullfs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount_nullfs/extr_mount_nullfs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@__const.main.nullfs = private unnamed_addr constant [7 x i8] c"nullfs\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"o:\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s (%s) and %s are not distinct paths\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"errmsg\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [255 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [7 x i8], align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %23 = bitcast [7 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.nullfs, i32 0, i32 0), i64 7, i1 false)
  store %struct.iovec* null, %struct.iovec** %6, align 8
  store i32 0, i32* %14, align 4
  %24 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %24, align 16
  br label %25

25:                                               ; preds = %51, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %13, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load i32, i32* %13, align 4
  switch i32 %31, label %49 [
    i32 111, label %32
    i32 63, label %48
  ]

32:                                               ; preds = %30
  %33 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** @optarg, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 61)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i8*, i8** %7, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %38, %32
  %45 = load i8*, i8** @optarg, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @build_iovec(%struct.iovec** %6, i32* %14, i8* %45, i8* %46, i32 -1)
  br label %51

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %30, %48
  %50 = call i32 (...) @usage()
  br label %51

51:                                               ; preds = %49, %44
  br label %25

52:                                               ; preds = %25
  %53 = load i64, i64* @optind, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %4, align 4
  %58 = load i64, i64* @optind, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 %58
  store i8** %60, i8*** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 2
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = call i32 (...) @usage()
  br label %65

65:                                               ; preds = %63, %52
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @checkpath(i8* %68, i8* %22)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EX_USAGE, align 4
  %73 = call i32 (i32, i8*, i8*, ...) @err(i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @checkpath(i8* %77, i8* %19)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @EX_USAGE, align 4
  %82 = call i32 (i32, i8*, i8*, ...) @err(i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %83

83:                                               ; preds = %80, %74
  %84 = call i64 @subdir(i8* %22, i8* %19)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = call i64 @subdir(i8* %19, i8* %22)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86, %83
  %90 = load i32, i32* @EX_USAGE, align 4
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @errx(i32 %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %93, i8* %22, i8* %96)
  br label %98

98:                                               ; preds = %89, %86
  %99 = getelementptr inbounds [7 x i8], [7 x i8]* %15, i64 0, i64 0
  %100 = call i32 @build_iovec(%struct.iovec** %6, i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %99, i32 -1)
  %101 = call i32 @build_iovec(%struct.iovec** %6, i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %19, i32 -1)
  %102 = call i32 @build_iovec(%struct.iovec** %6, i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %22, i32 -1)
  %103 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %104 = call i32 @build_iovec(%struct.iovec** %6, i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %103, i32 255)
  %105 = load %struct.iovec*, %struct.iovec** %6, align 8
  %106 = load i32, i32* %14, align 4
  %107 = call i64 @nmount(%struct.iovec* %105, i32 %106, i32 0)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %98
  %110 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %111 = load i8, i8* %110, align 16
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %116 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %19, i8* %115)
  br label %119

117:                                              ; preds = %109
  %118 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %119

119:                                              ; preds = %117, %114
  br label %120

120:                                              ; preds = %119, %98
  %121 = call i32 @exit(i32 0) #5
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #3

declare dso_local i8* @strdup(i8*) #3

declare dso_local i8* @strchr(i8*, i8 signext) #3

declare dso_local i32 @free(i8*) #3

declare dso_local i32 @build_iovec(%struct.iovec**, i32*, i8*, i8*, i32) #3

declare dso_local i32 @usage(...) #3

declare dso_local i64 @checkpath(i8*, i8*) #3

declare dso_local i32 @err(i32, i8*, i8*, ...) #3

declare dso_local i64 @subdir(i8*, i8*) #3

declare dso_local i32 @errx(i32, i8*, i8*, i8*, i8*) #3

declare dso_local i64 @nmount(%struct.iovec*, i32, i32) #3

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
