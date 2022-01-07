; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_bzipfs.c_bzf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_bzipfs.c_bzf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.bz_file = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i8* }

@.str = private unnamed_addr constant [22 x i8] c"bzf_read: fill error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"bzf_read: unexpected EOF\0A\00", align 1
@BZ_STREAM_END = common dso_local global i32 0, align 4
@BZ_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"bzf_read: BZ2_bzDecompress returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i8*, i64, i64*)* @bzf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bzf_read(%struct.open_file* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.bz_file*, align 8
  %11 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.open_file*, %struct.open_file** %6, align 8
  %13 = getelementptr inbounds %struct.open_file, %struct.open_file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.bz_file*
  store %struct.bz_file* %15, %struct.bz_file** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.bz_file*, %struct.bz_file** %10, align 8
  %18 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i8* %16, i8** %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.bz_file*, %struct.bz_file** %10, align 8
  %22 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  br label %24

24:                                               ; preds = %85, %4
  %25 = load %struct.bz_file*, %struct.bz_file** %10, align 8
  %26 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.bz_file*, %struct.bz_file** %10, align 8
  %32 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %30, %24
  %36 = phi i1 [ false, %24 ], [ %34, %30 ]
  br i1 %36, label %37, label %86

37:                                               ; preds = %35
  %38 = load %struct.bz_file*, %struct.bz_file** %10, align 8
  %39 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.bz_file*, %struct.bz_file** %10, align 8
  %45 = call i32 @bzf_fill(%struct.bz_file* %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  store i32 %49, i32* %5, align 4
  br label %96

50:                                               ; preds = %43, %37
  %51 = load %struct.bz_file*, %struct.bz_file** %10, align 8
  %52 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.bz_file*, %struct.bz_file** %10, align 8
  %59 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @EIO, align 4
  store i32 %65, i32* %5, align 4
  br label %96

66:                                               ; preds = %56
  br label %86

67:                                               ; preds = %50
  %68 = load %struct.bz_file*, %struct.bz_file** %10, align 8
  %69 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %68, i32 0, i32 1
  %70 = call i32 @BZ2_bzDecompress(%struct.TYPE_2__* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @BZ_STREAM_END, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.bz_file*, %struct.bz_file** %10, align 8
  %76 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %86

77:                                               ; preds = %67
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @BZ_OK, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EIO, align 4
  store i32 %84, i32* %5, align 4
  br label %96

85:                                               ; preds = %77
  br label %24

86:                                               ; preds = %74, %66, %35
  %87 = load i64*, i64** %9, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.bz_file*, %struct.bz_file** %10, align 8
  %91 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %9, align 8
  store i64 %93, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %86
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %81, %64, %47
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @bzf_fill(%struct.bz_file*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @BZ2_bzDecompress(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
