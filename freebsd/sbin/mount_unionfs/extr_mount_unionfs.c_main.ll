; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount_unionfs/extr_mount_unionfs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount_unionfs/extr_mount_unionfs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@__const.main.fstype = private unnamed_addr constant [8 x i8] c"unionfs\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"bo:\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\0A  -b is deprecated.  Use \22-o below\22 instead\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"below\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@optind = common dso_local global i64 0, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"%s (%s) and %s (%s) are not distinct paths\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"errmsg\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [255 x i8], align 16
  %13 = alloca [20 x i8], align 16
  %14 = alloca [20 x i8], align 16
  %15 = alloca [8 x i8], align 1
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i32, i32* @MAXPATHLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %25 = bitcast [8 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.main.fstype, i32 0, i32 0), i64 8, i1 false)
  store %struct.iovec* null, %struct.iovec** %6, align 8
  store i32 0, i32* %8, align 4
  %26 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %27 = call i32 @memset(i8* %26, i32 0, i32 255)
  br label %28

28:                                               ; preds = %73, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @getopt(i32 %29, i8** %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %74

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %71 [
    i32 98, label %35
    i32 111, label %38
    i32 63, label %70
  ]

35:                                               ; preds = %33
  %36 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @build_iovec(%struct.iovec** %6, i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* null, i32 0)
  br label %73

38:                                               ; preds = %33
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 61)
  store i8* %40, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load i8*, i8** %16, align 8
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %16, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %46, i8** %17, align 8
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i8*, i8** %17, align 8
  %52 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %53 = call i32 @parse_gid(i8* %51, i8* %52, i32 20)
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  store i8* %54, i8** %17, align 8
  br label %65

55:                                               ; preds = %43
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8*, i8** %17, align 8
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %62 = call i32 @parse_uid(i8* %60, i8* %61, i32 20)
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  store i8* %63, i8** %17, align 8
  br label %64

64:                                               ; preds = %59, %55
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i8*, i8** @optarg, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = call i32 @build_iovec(%struct.iovec** %6, i32* %8, i8* %67, i8* %68, i32 -1)
  br label %73

70:                                               ; preds = %33
  br label %71

71:                                               ; preds = %33, %70
  %72 = call i32 (...) @usage()
  br label %73

73:                                               ; preds = %71, %66, %35
  br label %28

74:                                               ; preds = %28
  %75 = load i64, i64* @optind, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  %80 = load i64, i64* @optind, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 %80
  store i8** %82, i8*** %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 2
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = call i32 (...) @usage()
  br label %87

87:                                               ; preds = %85, %74
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @checkpath(i8* %90, i8* %24)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EX_USAGE, align 4
  %95 = call i32 (i32, i8*, i8*, ...) @err(i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %24)
  br label %96

96:                                               ; preds = %93, %87
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @checkpath(i8* %99, i8* %21)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EX_USAGE, align 4
  %104 = call i32 (i32, i8*, i8*, ...) @err(i32 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %21)
  br label %105

105:                                              ; preds = %102, %96
  %106 = call i64 @subdir(i8* %24, i8* %21)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = call i64 @subdir(i8* %21, i8* %24)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108, %105
  %112 = load i32, i32* @EX_USAGE, align 4
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @errx(i32 %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %115, i8* %24, i8* %118, i8* %21)
  br label %120

120:                                              ; preds = %111, %108
  %121 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %122 = call i32 @build_iovec(%struct.iovec** %6, i32* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %121, i32 -1)
  %123 = call i32 @build_iovec(%struct.iovec** %6, i32* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %21, i32 -1)
  %124 = call i32 @build_iovec(%struct.iovec** %6, i32* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %24, i32 -1)
  %125 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %126 = call i32 @build_iovec(%struct.iovec** %6, i32* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %125, i32 255)
  %127 = load %struct.iovec*, %struct.iovec** %6, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i64 @nmount(%struct.iovec* %127, i32 %128, i32 0)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %120
  %132 = load i32, i32* @EX_OSERR, align 4
  %133 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %134 = call i32 (i32, i8*, i8*, ...) @err(i32 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %21, i8* %133)
  br label %135

135:                                              ; preds = %131, %120
  %136 = call i32 @exit(i32 0) #5
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i8*, i32, i32) #3

declare dso_local i32 @getopt(i32, i8**, i8*) #3

declare dso_local i32 @printf(i8*) #3

declare dso_local i32 @build_iovec(%struct.iovec**, i32*, i8*, i8*, i32) #3

declare dso_local i8* @strchr(i8*, i8 signext) #3

declare dso_local i32 @strcmp(i8*, i8*) #3

declare dso_local i32 @parse_gid(i8*, i8*, i32) #3

declare dso_local i32 @parse_uid(i8*, i8*, i32) #3

declare dso_local i32 @usage(...) #3

declare dso_local i64 @checkpath(i8*, i8*) #3

declare dso_local i32 @err(i32, i8*, i8*, ...) #3

declare dso_local i64 @subdir(i8*, i8*) #3

declare dso_local i32 @errx(i32, i8*, i8*, i8*, i8*, i8*) #3

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
