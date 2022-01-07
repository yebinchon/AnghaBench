; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount_udf/extr_mount_udf.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount_udf/extr_mount_udf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@__const.main.fstype = private unnamed_addr constant [4 x i8] c"udf\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"o:vC:\00", align 1
@optarg = common dso_local global i32 0, align 4
@mopts = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"udf_iconv\00", align 1
@UDFMNT_KICONV = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"cs_disk\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"cs_local\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = bitcast [4 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.fstype, i32 0, i32 0), i64 4, i1 false)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %10, align 8
  store %struct.iovec* null, %struct.iovec** %9, align 8
  br label %24

24:                                               ; preds = %52, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %14, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = load i32, i32* %14, align 4
  switch i32 %30, label %50 [
    i32 111, label %31
    i32 118, label %35
    i32 67, label %38
    i32 63, label %49
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @optarg, align 4
  %33 = load i32, i32* @mopts, align 4
  %34 = call i32 @getmntopts(i32 %32, i32 %33, i32* %16, i32* null)
  br label %52

35:                                               ; preds = %29
  %36 = load i32, i32* %18, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %18, align 4
  br label %52

38:                                               ; preds = %29
  %39 = load i32, i32* @optarg, align 4
  %40 = call i32 @set_charset(i8** %10, i8** %11, i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EX_OSERR, align 4
  %44 = call i32 (i32, i8*, ...) @err(i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* @UDFMNT_KICONV, align 4
  %47 = load i32, i32* %17, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %17, align 4
  br label %52

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %29, %49
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %50, %45, %35, %31
  br label %24

53:                                               ; preds = %24
  %54 = load i64, i64* @optind, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  %59 = load i64, i64* @optind, align 8
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 %59
  store i8** %61, i8*** %5, align 8
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %64, %53
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %12, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %13, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i64 @checkpath(i8* %73, i8* %22)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load i32, i32* @EX_USAGE, align 4
  %78 = call i32 (i32, i8*, ...) @err(i32 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %79

79:                                               ; preds = %76, %66
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @rmslashes(i8* %80, i8* %81)
  %83 = load i32, i32* @MNT_RDONLY, align 4
  %84 = load i32, i32* %16, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %16, align 4
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %87 = call i32 (%struct.iovec**, i32*, i8*, ...) @build_iovec(%struct.iovec** %9, i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %86, i64 -1)
  %88 = call i32 (%struct.iovec**, i32*, i8*, ...) @build_iovec(%struct.iovec** %9, i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %22, i64 -1)
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 (%struct.iovec**, i32*, i8*, ...) @build_iovec(%struct.iovec** %9, i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %89, i64 -1)
  %91 = call i32 (%struct.iovec**, i32*, i8*, ...) @build_iovec(%struct.iovec** %9, i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %17, i64 4)
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* @UDFMNT_KICONV, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %79
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 (%struct.iovec**, i32*, i8*, ...) @build_iovec(%struct.iovec** %9, i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %97, i64 -1)
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 (%struct.iovec**, i32*, i8*, ...) @build_iovec(%struct.iovec** %9, i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %99, i64 -1)
  br label %101

101:                                              ; preds = %96, %79
  %102 = load %struct.iovec*, %struct.iovec** %9, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = call i64 @nmount(%struct.iovec* %102, i32 %103, i32 %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %107, %101
  %111 = call i32 @exit(i32 0) #5
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #3

declare dso_local i32 @getmntopts(i32, i32, i32*, i32*) #3

declare dso_local i32 @set_charset(i8**, i8**, i32) #3

declare dso_local i32 @err(i32, i8*, ...) #3

declare dso_local i32 @usage(...) #3

declare dso_local i64 @checkpath(i8*, i8*) #3

declare dso_local i32 @rmslashes(i8*, i8*) #3

declare dso_local i32 @build_iovec(%struct.iovec**, i32*, i8*, ...) #3

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
