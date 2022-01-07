; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_lseek.c_lseek.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_lseek.c_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.open_file*, i32, i32)* }

@files = common dso_local global %struct.open_file* null, align 8
@SOPEN_MAX = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@F_RAW = common dso_local global i32 0, align 4
@EOFFSET = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lseek(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.open_file*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.open_file*, %struct.open_file** @files, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.open_file, %struct.open_file* %12, i64 %14
  store %struct.open_file* %15, %struct.open_file** %11, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SOPEN_MAX, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.open_file*, %struct.open_file** %11, align 8
  %21 = getelementptr inbounds %struct.open_file, %struct.open_file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %3
  %25 = load i32, i32* @EBADF, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %136

26:                                               ; preds = %19
  %27 = load %struct.open_file*, %struct.open_file** %11, align 8
  %28 = getelementptr inbounds %struct.open_file, %struct.open_file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @F_RAW, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %45 [
    i32 128, label %35
    i32 129, label %39
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.open_file*, %struct.open_file** %11, align 8
  %38 = getelementptr inbounds %struct.open_file, %struct.open_file* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.open_file*, %struct.open_file** %11, align 8
  %42 = getelementptr inbounds %struct.open_file, %struct.open_file* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @EOFFSET, align 4
  store i32 %46, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %136

47:                                               ; preds = %39, %35
  %48 = load %struct.open_file*, %struct.open_file** %11, align 8
  %49 = getelementptr inbounds %struct.open_file, %struct.open_file* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  br label %136

51:                                               ; preds = %26
  %52 = load %struct.open_file*, %struct.open_file** %11, align 8
  %53 = getelementptr inbounds %struct.open_file, %struct.open_file* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %113

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SEEK_END, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %113

60:                                               ; preds = %56
  %61 = load %struct.open_file*, %struct.open_file** %11, align 8
  %62 = getelementptr inbounds %struct.open_file, %struct.open_file* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.open_file*, i32, i32)*, i32 (%struct.open_file*, i32, i32)** %64, align 8
  %66 = load %struct.open_file*, %struct.open_file** %11, align 8
  %67 = call i32 %65(%struct.open_file* %66, i32 0, i32 129)
  store i32 %67, i32* %9, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %136

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.open_file*, %struct.open_file** %11, align 8
  %74 = getelementptr inbounds %struct.open_file, %struct.open_file* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  switch i32 %78, label %85 [
    i32 128, label %79
    i32 129, label %81
  ]

79:                                               ; preds = %70
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %10, align 4
  br label %87

81:                                               ; preds = %70
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %10, align 4
  br label %87

85:                                               ; preds = %70
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %136

87:                                               ; preds = %81, %79
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load %struct.open_file*, %struct.open_file** %11, align 8
  %100 = getelementptr inbounds %struct.open_file, %struct.open_file* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = load %struct.open_file*, %struct.open_file** %11, align 8
  %108 = getelementptr inbounds %struct.open_file, %struct.open_file* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %136

112:                                              ; preds = %91, %87
  br label %113

113:                                              ; preds = %112, %56, %51
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %114, 129
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load %struct.open_file*, %struct.open_file** %11, align 8
  %118 = getelementptr inbounds %struct.open_file, %struct.open_file* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = sub nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %116, %113
  %125 = load %struct.open_file*, %struct.open_file** %11, align 8
  %126 = getelementptr inbounds %struct.open_file, %struct.open_file* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  %127 = load %struct.open_file*, %struct.open_file** %11, align 8
  %128 = getelementptr inbounds %struct.open_file, %struct.open_file* %127, i32 0, i32 3
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32 (%struct.open_file*, i32, i32)*, i32 (%struct.open_file*, i32, i32)** %130, align 8
  %132 = load %struct.open_file*, %struct.open_file** %11, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 %131(%struct.open_file* %132, i32 %133, i32 %134)
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %124, %95, %85, %69, %47, %45, %24
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
