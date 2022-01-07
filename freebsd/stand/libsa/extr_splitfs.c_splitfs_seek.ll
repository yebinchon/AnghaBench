; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_splitfs.c_splitfs_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_splitfs.c_splitfs_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.split_file = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"splitfs_seek: SEEK_END not supported\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@SEEK_BUF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"splitfs_seek: can't seek past the beginning of the slice\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i32, i32)* @splitfs_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splitfs_seek(%struct.open_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.split_file*, align 8
  %13 = alloca i8*, align 8
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.open_file*, %struct.open_file** %5, align 8
  %15 = getelementptr inbounds %struct.open_file, %struct.open_file* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.split_file*
  store %struct.split_file* %17, %struct.split_file** %12, align 8
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %29 [
    i32 128, label %20
    i32 130, label %26
    i32 129, label %27
  ]

20:                                               ; preds = %3
  %21 = load %struct.split_file*, %struct.split_file** %12, align 8
  %22 = getelementptr inbounds %struct.split_file, %struct.split_file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %11, align 4
  br label %31

26:                                               ; preds = %3
  br label %31

27:                                               ; preds = %3
  %28 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %31

29:                                               ; preds = %3
  %30 = load i64, i64* @EINVAL, align 8
  store i64 %30, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %115

31:                                               ; preds = %27, %26, %20
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %31
  %35 = load i32, i32* @SEEK_BUF, align 4
  %36 = call i8* @malloc(i32 %35)
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @ENOMEM, align 8
  store i64 %40, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %115

41:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %65, %41
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  store i64 0, i64* %9, align 8
  %46 = load %struct.open_file*, %struct.open_file** %5, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @SEEK_BUF, align 4
  %50 = call i64 @min(i32 %48, i32 %49)
  %51 = call i64 @splitfs_read(%struct.open_file* %46, i8* %47, i64 %50, i64* %9)
  store i64 %51, i64* @errno, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @SEEK_BUF, align 4
  %54 = call i64 @min(i32 %52, i32 %53)
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i64, i64* @errno, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %45
  br label %69

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %42

69:                                               ; preds = %63, %42
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i64, i64* @errno, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %115

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %31
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %76
  %80 = load %struct.split_file*, %struct.split_file** %12, align 8
  %81 = getelementptr inbounds %struct.split_file, %struct.split_file* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %82, %83
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = call i32 @panic(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %79
  %89 = load %struct.split_file*, %struct.split_file** %12, align 8
  %90 = getelementptr inbounds %struct.split_file, %struct.split_file* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @lseek(i32 %91, i32 %92, i32 130)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i64, i64* @EINVAL, align 8
  store i64 %97, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %115

98:                                               ; preds = %88
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.split_file*, %struct.split_file** %12, align 8
  %101 = getelementptr inbounds %struct.split_file, %struct.split_file* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  %104 = load %struct.split_file*, %struct.split_file** %12, align 8
  %105 = getelementptr inbounds %struct.split_file, %struct.split_file* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.split_file*, %struct.split_file** %12, align 8
  %110 = getelementptr inbounds %struct.split_file, %struct.split_file* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %98, %76
  %112 = load %struct.split_file*, %struct.split_file** %12, align 8
  %113 = getelementptr inbounds %struct.split_file, %struct.split_file* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %96, %74, %39, %29
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @splitfs_read(%struct.open_file*, i8*, i64, i64*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
