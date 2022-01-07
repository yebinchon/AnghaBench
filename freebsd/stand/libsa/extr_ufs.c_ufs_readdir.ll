; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ufs.c_ufs_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ufs.c_ufs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.dirent = type { i32, i32 }
%struct.file = type { i64 }
%struct.direct = type { i64, i64, i32, i32 }

@di_size = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.dirent*)* @ufs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_readdir(%struct.open_file* %0, %struct.dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.open_file*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.direct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %4, align 8
  store %struct.dirent* %1, %struct.dirent** %5, align 8
  %11 = load %struct.open_file*, %struct.open_file** %4, align 8
  %12 = getelementptr inbounds %struct.open_file, %struct.open_file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.file*
  store %struct.file* %14, %struct.file** %6, align 8
  br label %15

15:                                               ; preds = %46, %2
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = load i32, i32* @di_size, align 4
  %21 = call i64 @DIP(%struct.file* %19, i32 %20)
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %15
  %26 = load %struct.open_file*, %struct.open_file** %4, align 8
  %27 = call i32 @buf_read_file(%struct.open_file* %26, i8** %8, i64* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  br label %60

32:                                               ; preds = %25
  %33 = load i8*, i8** %8, align 8
  %34 = bitcast i8* %33 to %struct.direct*
  store %struct.direct* %34, %struct.direct** %7, align 8
  %35 = load %struct.direct*, %struct.direct** %7, align 8
  %36 = getelementptr inbounds %struct.direct, %struct.direct* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.file*, %struct.file** %6, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.direct*, %struct.direct** %7, align 8
  %43 = getelementptr inbounds %struct.direct, %struct.direct* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %15

47:                                               ; preds = %32
  %48 = load %struct.direct*, %struct.direct** %7, align 8
  %49 = getelementptr inbounds %struct.direct, %struct.direct* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dirent*, %struct.dirent** %5, align 8
  %52 = getelementptr inbounds %struct.dirent, %struct.dirent* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dirent*, %struct.dirent** %5, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.direct*, %struct.direct** %7, align 8
  %57 = getelementptr inbounds %struct.direct, %struct.direct* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @strcpy(i32 %55, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %47, %30, %23
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @DIP(%struct.file*, i32) #1

declare dso_local i32 @buf_read_file(%struct.open_file*, i8**, i64*) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
