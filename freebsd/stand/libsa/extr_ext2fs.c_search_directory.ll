; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_search_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_search_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.file = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ext2dirent = type { i64, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.open_file*, i64*)* @search_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_directory(i8* %0, %struct.open_file* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.open_file*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.ext2dirent*, align 8
  %10 = alloca %struct.ext2dirent*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.open_file* %1, %struct.open_file** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load %struct.open_file*, %struct.open_file** %6, align 8
  %17 = getelementptr inbounds %struct.open_file, %struct.open_file* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.file*
  store %struct.file* %19, %struct.file** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %14, align 4
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %87, %3
  %25 = load %struct.file*, %struct.file** %8, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.file*, %struct.file** %8, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %27, %31
  br i1 %32, label %33, label %93

33:                                               ; preds = %24
  %34 = load %struct.open_file*, %struct.open_file** %6, align 8
  %35 = call i32 @buf_read_file(%struct.open_file* %34, i8** %11, i64* %12)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %4, align 4
  br label %95

40:                                               ; preds = %33
  %41 = load i8*, i8** %11, align 8
  %42 = bitcast i8* %41 to %struct.ext2dirent*
  store %struct.ext2dirent* %42, %struct.ext2dirent** %9, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = bitcast i8* %45 to %struct.ext2dirent*
  store %struct.ext2dirent* %46, %struct.ext2dirent** %10, align 8
  br label %47

47:                                               ; preds = %78, %40
  %48 = load %struct.ext2dirent*, %struct.ext2dirent** %9, align 8
  %49 = load %struct.ext2dirent*, %struct.ext2dirent** %10, align 8
  %50 = icmp ult %struct.ext2dirent* %48, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %47
  %52 = load %struct.ext2dirent*, %struct.ext2dirent** %9, align 8
  %53 = getelementptr inbounds %struct.ext2dirent, %struct.ext2dirent* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %78

57:                                               ; preds = %51
  %58 = load %struct.ext2dirent*, %struct.ext2dirent** %9, align 8
  %59 = getelementptr inbounds %struct.ext2dirent, %struct.ext2dirent* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.ext2dirent*, %struct.ext2dirent** %9, align 8
  %67 = getelementptr inbounds %struct.ext2dirent, %struct.ext2dirent* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @strncmp(i8* %65, i32 %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.ext2dirent*, %struct.ext2dirent** %9, align 8
  %74 = getelementptr inbounds %struct.ext2dirent, %struct.ext2dirent* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %7, align 8
  store i64 %75, i64* %76, align 8
  store i32 0, i32* %4, align 4
  br label %95

77:                                               ; preds = %64, %57
  br label %78

78:                                               ; preds = %77, %56
  %79 = load %struct.ext2dirent*, %struct.ext2dirent** %9, align 8
  %80 = bitcast %struct.ext2dirent* %79 to i8*
  %81 = load %struct.ext2dirent*, %struct.ext2dirent** %9, align 8
  %82 = getelementptr inbounds %struct.ext2dirent, %struct.ext2dirent* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = bitcast i8* %85 to %struct.ext2dirent*
  store %struct.ext2dirent* %86, %struct.ext2dirent** %9, align 8
  br label %47

87:                                               ; preds = %47
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.file*, %struct.file** %8, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, %88
  store i64 %92, i64* %90, align 8
  br label %24

93:                                               ; preds = %24
  %94 = load i32, i32* @ENOENT, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %72, %38
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @buf_read_file(%struct.open_file*, i8**, i64*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
