; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_splitfs.c_splitfs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_splitfs.c_splitfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.split_file = type { i32, i32, i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i8*, i64, i64*)* @splitfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splitfs_read(%struct.open_file* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.split_file*, align 8
  store %struct.open_file* %0, %struct.open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.open_file*, %struct.open_file** %6, align 8
  %14 = getelementptr inbounds %struct.open_file, %struct.open_file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.split_file*
  store %struct.split_file* %16, %struct.split_file** %12, align 8
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %83, %4
  %18 = load %struct.split_file*, %struct.split_file** %12, align 8
  %19 = getelementptr inbounds %struct.split_file, %struct.split_file* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %11, align 8
  %24 = sub i64 %22, %23
  %25 = call i32 @read(i32 %20, i8* %21, i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* @errno, align 4
  store i32 %29, i32* %5, align 4
  br label %96

30:                                               ; preds = %17
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.split_file*, %struct.split_file** %12, align 8
  %33 = getelementptr inbounds %struct.split_file, %struct.split_file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.split_file*, %struct.split_file** %12, align 8
  %38 = getelementptr inbounds %struct.split_file, %struct.split_file* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %11, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8* %48, i8** %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %30
  %53 = load %struct.split_file*, %struct.split_file** %12, align 8
  %54 = getelementptr inbounds %struct.split_file, %struct.split_file* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.split_file*, %struct.split_file** %12, align 8
  %57 = getelementptr inbounds %struct.split_file, %struct.split_file* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp eq i32 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %87

62:                                               ; preds = %52
  %63 = load %struct.split_file*, %struct.split_file** %12, align 8
  %64 = getelementptr inbounds %struct.split_file, %struct.split_file* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @close(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @errno, align 4
  store i32 %69, i32* %5, align 4
  br label %96

70:                                               ; preds = %62
  %71 = load %struct.split_file*, %struct.split_file** %12, align 8
  %72 = getelementptr inbounds %struct.split_file, %struct.split_file* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.split_file*, %struct.split_file** %12, align 8
  %76 = call i32 @split_openfile(%struct.split_file* %75)
  store i32 %76, i32* @errno, align 4
  %77 = load i32, i32* @errno, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @errno, align 4
  store i32 %80, i32* %5, align 4
  br label %96

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %30
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %17, label %87

87:                                               ; preds = %83, %61
  %88 = load i64*, i64** %9, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %11, align 8
  %93 = sub i64 %91, %92
  %94 = load i64*, i64** %9, align 8
  store i64 %93, i64* %94, align 8
  br label %95

95:                                               ; preds = %90, %87
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %79, %68, %28
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @split_openfile(%struct.split_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
