; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_buf_read_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_buf_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i64, i8*, i64*)* }
%struct.file = type { i64, i64, i64, i8*, i64 }

@ISO_DEFAULT_BLOCK_SIZE = common dso_local global i64 0, align 8
@F_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i8**, i64*)* @buf_read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_read_file(%struct.open_file* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.open_file*, %struct.open_file** %5, align 8
  %14 = getelementptr inbounds %struct.open_file, %struct.open_file* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.file*
  store %struct.file* %16, %struct.file** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.file*, %struct.file** %8, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ISO_DEFAULT_BLOCK_SIZE, align 8
  %21 = udiv i64 %19, %20
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  store i64 %25, i64* %9, align 8
  %26 = load %struct.file*, %struct.file** %8, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ISO_DEFAULT_BLOCK_SIZE, align 8
  %30 = urem i64 %28, %29
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.file*, %struct.file** %8, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %3
  %37 = load %struct.file*, %struct.file** %8, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i64, i64* @ISO_DEFAULT_BLOCK_SIZE, align 8
  %43 = call i8* @malloc(i64 %42)
  %44 = load %struct.file*, %struct.file** %8, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %41, %36
  %47 = call i32 @twiddle(i32 16)
  %48 = load %struct.open_file*, %struct.open_file** %5, align 8
  %49 = getelementptr inbounds %struct.open_file, %struct.open_file* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i32, i32, i32, i64, i8*, i64*)*, i32 (i32, i32, i32, i64, i8*, i64*)** %51, align 8
  %53 = load %struct.open_file*, %struct.open_file** %5, align 8
  %54 = getelementptr inbounds %struct.open_file, %struct.open_file* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @F_READ, align 4
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @cdb2devb(i64 %57)
  %59 = load i64, i64* @ISO_DEFAULT_BLOCK_SIZE, align 8
  %60 = load %struct.file*, %struct.file** %8, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 %52(i32 %55, i32 %56, i32 %58, i64 %59, i8* %62, i64* %12)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %46
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %110

68:                                               ; preds = %46
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @ISO_DEFAULT_BLOCK_SIZE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @EIO, align 4
  store i32 %73, i32* %4, align 4
  br label %110

74:                                               ; preds = %68
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.file*, %struct.file** %8, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %3
  %79 = load %struct.file*, %struct.file** %8, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8**, i8*** %6, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i64, i64* @ISO_DEFAULT_BLOCK_SIZE, align 8
  %86 = load i64, i64* %10, align 8
  %87 = sub i64 %85, %86
  %88 = load i64*, i64** %7, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i64*, i64** %7, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.file*, %struct.file** %8, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.file*, %struct.file** %8, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %93, %96
  %98 = icmp ugt i64 %90, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %78
  %100 = load %struct.file*, %struct.file** %8, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.file*, %struct.file** %8, align 8
  %104 = getelementptr inbounds %struct.file, %struct.file* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %102, %105
  %107 = load i64*, i64** %7, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %99, %78
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %72, %66
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @twiddle(i32) #1

declare dso_local i32 @cdb2devb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
