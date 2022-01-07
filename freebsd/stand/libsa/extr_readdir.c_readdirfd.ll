; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_readdir.c_readdirfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_readdir.c_readdirfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }
%struct.open_file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.open_file*, %struct.dirent*)* }

@readdirfd.dir = internal global %struct.dirent zeroinitializer, align 4
@files = common dso_local global %struct.open_file* null, align 8
@SOPEN_MAX = common dso_local global i32 0, align 4
@F_READ = common dso_local global i32 0, align 4
@EBADF = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@F_RAW = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dirent* @readdirfd(i32 %0) #0 {
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.open_file*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.open_file*, %struct.open_file** @files, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.open_file, %struct.open_file* %5, i64 %7
  store %struct.open_file* %8, %struct.open_file** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SOPEN_MAX, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.open_file*, %struct.open_file** %4, align 8
  %14 = getelementptr inbounds %struct.open_file, %struct.open_file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @F_READ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12, %1
  %20 = load i64, i64* @EBADF, align 8
  store i64 %20, i64* @errno, align 8
  store %struct.dirent* null, %struct.dirent** %2, align 8
  br label %42

21:                                               ; preds = %12
  %22 = load %struct.open_file*, %struct.open_file** %4, align 8
  %23 = getelementptr inbounds %struct.open_file, %struct.open_file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @F_RAW, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @EIO, align 8
  store i64 %29, i64* @errno, align 8
  store %struct.dirent* null, %struct.dirent** %2, align 8
  br label %42

30:                                               ; preds = %21
  %31 = load %struct.open_file*, %struct.open_file** %4, align 8
  %32 = getelementptr inbounds %struct.open_file, %struct.open_file* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64 (%struct.open_file*, %struct.dirent*)*, i64 (%struct.open_file*, %struct.dirent*)** %34, align 8
  %36 = load %struct.open_file*, %struct.open_file** %4, align 8
  %37 = call i64 %35(%struct.open_file* %36, %struct.dirent* @readdirfd.dir)
  store i64 %37, i64* @errno, align 8
  %38 = load i64, i64* @errno, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store %struct.dirent* null, %struct.dirent** %2, align 8
  br label %42

41:                                               ; preds = %30
  store %struct.dirent* @readdirfd.dir, %struct.dirent** %2, align 8
  br label %42

42:                                               ; preds = %41, %40, %28, %19
  %43 = load %struct.dirent*, %struct.dirent** %2, align 8
  ret %struct.dirent* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
