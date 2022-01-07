; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_ext2fs_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_ext2fs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.dirent = type { i8*, i32 }
%struct.file = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ext2dirent = type { i64, i64, i64, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.dirent*)* @ext2fs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2fs_readdir(%struct.open_file* %0, %struct.dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.open_file*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.ext2dirent*, align 8
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

15:                                               ; preds = %47, %2
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %18, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOENT, align 4
  store i32 %25, i32* %3, align 4
  br label %72

26:                                               ; preds = %15
  %27 = load %struct.open_file*, %struct.open_file** %4, align 8
  %28 = call i32 @buf_read_file(%struct.open_file* %27, i8** %8, i64* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %72

33:                                               ; preds = %26
  %34 = load i8*, i8** %8, align 8
  %35 = bitcast i8* %34 to %struct.ext2dirent*
  store %struct.ext2dirent* %35, %struct.ext2dirent** %7, align 8
  %36 = load %struct.ext2dirent*, %struct.ext2dirent** %7, align 8
  %37 = getelementptr inbounds %struct.ext2dirent, %struct.ext2dirent* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load %struct.ext2dirent*, %struct.ext2dirent** %7, align 8
  %44 = getelementptr inbounds %struct.ext2dirent, %struct.ext2dirent* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %15

48:                                               ; preds = %33
  %49 = load %struct.ext2dirent*, %struct.ext2dirent** %7, align 8
  %50 = getelementptr inbounds %struct.ext2dirent, %struct.ext2dirent* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @EXTFTODT(i32 %51)
  %53 = load %struct.dirent*, %struct.dirent** %5, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.dirent*, %struct.dirent** %5, align 8
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.ext2dirent*, %struct.ext2dirent** %7, align 8
  %59 = getelementptr inbounds %struct.ext2dirent, %struct.ext2dirent* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ext2dirent*, %struct.ext2dirent** %7, align 8
  %62 = getelementptr inbounds %struct.ext2dirent, %struct.ext2dirent* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @strncpy(i8* %57, i32 %60, i64 %63)
  %65 = load %struct.dirent*, %struct.dirent** %5, align 8
  %66 = getelementptr inbounds %struct.dirent, %struct.dirent* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.ext2dirent*, %struct.ext2dirent** %7, align 8
  %69 = getelementptr inbounds %struct.ext2dirent, %struct.ext2dirent* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 0, i8* %71, align 1
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %48, %31, %24
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @buf_read_file(%struct.open_file*, i8**, i64*) #1

declare dso_local i32 @EXTFTODT(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
