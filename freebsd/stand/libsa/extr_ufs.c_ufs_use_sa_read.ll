; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ufs.c_ufs_use_sa_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ufs.c_ufs_use_sa_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i8*, i64*)* }

@ENOSPC = common dso_local global i32 0, align 4
@F_READ = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i32)* @ufs_use_sa_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_use_sa_read(i8* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.open_file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.open_file*
  store %struct.open_file* %14, %struct.open_file** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i8* @malloc(i32 %15)
  %17 = load i8**, i8*** %8, align 8
  store i8* %16, i8** %17, align 8
  %18 = icmp eq i8* %16, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOSPC, align 4
  store i32 %20, i32* %5, align 4
  br label %50

21:                                               ; preds = %4
  %22 = load %struct.open_file*, %struct.open_file** %10, align 8
  %23 = getelementptr inbounds %struct.open_file, %struct.open_file* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32, i32, i32, i8*, i64*)*, i32 (i32, i32, i32, i32, i8*, i64*)** %25, align 8
  %27 = load %struct.open_file*, %struct.open_file** %10, align 8
  %28 = getelementptr inbounds %struct.open_file, %struct.open_file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @F_READ, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @DEV_BSIZE, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i8**, i8*** %8, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 %26(i32 %29, i32 %30, i32 %33, i32 %34, i8* %36, i64* %11)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %21
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %50

42:                                               ; preds = %21
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @EIO, align 4
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %47, %40, %19
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
