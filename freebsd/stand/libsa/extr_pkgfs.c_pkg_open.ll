; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkg_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64, %struct.tarfile* }
%struct.tarfile = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@package = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@F_READ = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.open_file*)* @pkg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkg_open(i8* %0, %struct.open_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca %struct.tarfile*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.open_file* %1, %struct.open_file** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.open_file*, %struct.open_file** %5, align 8
  %11 = icmp eq %struct.open_file* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %70

14:                                               ; preds = %9
  %15 = load i32*, i32** @package, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %3, align 4
  br label %70

19:                                               ; preds = %14
  %20 = load %struct.open_file*, %struct.open_file** %5, align 8
  %21 = getelementptr inbounds %struct.open_file, %struct.open_file* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @F_READ, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @EPERM, align 4
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %33, %27
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  br label %28

36:                                               ; preds = %28
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.open_file*, %struct.open_file** %5, align 8
  %43 = getelementptr inbounds %struct.open_file, %struct.open_file* %42, i32 0, i32 1
  store %struct.tarfile* null, %struct.tarfile** %43, align 8
  store i32 0, i32* %3, align 4
  br label %70

44:                                               ; preds = %36
  %45 = load i32*, i32** @package, align 8
  %46 = call %struct.tarfile* @scan_tarfile(i32* %45, %struct.tarfile* null)
  store %struct.tarfile* %46, %struct.tarfile** %6, align 8
  br label %47

47:                                               ; preds = %64, %44
  %48 = load %struct.tarfile*, %struct.tarfile** %6, align 8
  %49 = icmp ne %struct.tarfile* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.tarfile*, %struct.tarfile** %6, align 8
  %53 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @strcmp(i8* %51, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.tarfile*, %struct.tarfile** %6, align 8
  %60 = load %struct.open_file*, %struct.open_file** %5, align 8
  %61 = getelementptr inbounds %struct.open_file, %struct.open_file* %60, i32 0, i32 1
  store %struct.tarfile* %59, %struct.tarfile** %61, align 8
  %62 = load %struct.tarfile*, %struct.tarfile** %6, align 8
  %63 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  store i32 0, i32* %3, align 4
  br label %70

64:                                               ; preds = %50
  %65 = load i32*, i32** @package, align 8
  %66 = load %struct.tarfile*, %struct.tarfile** %6, align 8
  %67 = call %struct.tarfile* @scan_tarfile(i32* %65, %struct.tarfile* %66)
  store %struct.tarfile* %67, %struct.tarfile** %6, align 8
  br label %47

68:                                               ; preds = %47
  %69 = load i32, i32* @errno, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %58, %41, %25, %17, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.tarfile* @scan_tarfile(i32*, %struct.tarfile*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
