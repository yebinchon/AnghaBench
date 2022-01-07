; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_main.c_chkdoreload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_main.c_chkdoreload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i8*, i8* }
%struct.iovec = type { i32 }

@MNT_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"errmsg\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"mount reload of '%s' failed: %s %s\0A\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.statfs*)* @chkdoreload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chkdoreload(%struct.statfs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.statfs*, align 8
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [255 x i8], align 16
  store %struct.statfs* %0, %struct.statfs** %3, align 8
  %7 = load %struct.statfs*, %struct.statfs** %3, align 8
  %8 = icmp eq %struct.statfs* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

10:                                               ; preds = %1
  store %struct.iovec* null, %struct.iovec** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %11, align 16
  %12 = load %struct.statfs*, %struct.statfs** %3, align 8
  %13 = getelementptr inbounds %struct.statfs, %struct.statfs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MNT_RDONLY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %10
  %19 = call i32 @build_iovec(%struct.iovec** %4, i32* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %20 = load %struct.statfs*, %struct.statfs** %3, align 8
  %21 = getelementptr inbounds %struct.statfs, %struct.statfs* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @build_iovec(%struct.iovec** %4, i32* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %22, i32 -1)
  %24 = load %struct.statfs*, %struct.statfs** %3, align 8
  %25 = getelementptr inbounds %struct.statfs, %struct.statfs* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @build_iovec(%struct.iovec** %4, i32* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %26, i32 -1)
  %28 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %29 = call i32 @build_iovec(%struct.iovec** %4, i32* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %28, i32 255)
  %30 = call i32 @build_iovec(%struct.iovec** %4, i32* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* null, i32 0)
  %31 = call i32 @build_iovec(%struct.iovec** %4, i32* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* null, i32 0)
  %32 = call i32 @build_iovec(%struct.iovec** %4, i32* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* null, i32 0)
  %33 = load %struct.iovec*, %struct.iovec** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.statfs*, %struct.statfs** %3, align 8
  %36 = getelementptr inbounds %struct.statfs, %struct.statfs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @nmount(%struct.iovec* %33, i32 %34, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %50

41:                                               ; preds = %18
  %42 = load %struct.statfs*, %struct.statfs** %3, align 8
  %43 = getelementptr inbounds %struct.statfs, %struct.statfs* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %48 = call i32 @pwarn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %44, i32 %46, i8* %47)
  store i32 1, i32* %2, align 4
  br label %50

49:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %41, %40, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @build_iovec(%struct.iovec**, i32*, i8*, i8*, i32) #1

declare dso_local i64 @nmount(%struct.iovec*, i32, i32) #1

declare dso_local i32 @pwarn(i8*, i8*, i32, i8*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
