; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_bzipfs.c_bzf_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_bzipfs.c_bzf_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.bz_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EOFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i32, i32)* @bzf_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bzf_seek(%struct.open_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bz_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.open_file*, %struct.open_file** %5, align 8
  %12 = getelementptr inbounds %struct.open_file, %struct.open_file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bz_file*
  store %struct.bz_file* %14, %struct.bz_file** %8, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %25 [
    i32 128, label %16
    i32 129, label %18
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %9, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.bz_file*, %struct.bz_file** %8, align 8
  %21 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %19, %23
  store i32 %24, i32* %9, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i64, i64* @EINVAL, align 8
  store i64 %26, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %72

27:                                               ; preds = %18, %16
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.bz_file*, %struct.bz_file** %8, align 8
  %30 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.open_file*, %struct.open_file** %5, align 8
  %36 = call i64 @bzf_rewind(%struct.open_file* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @EOFFSET, align 8
  store i64 %39, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %72

40:                                               ; preds = %34, %27
  %41 = load %struct.open_file*, %struct.open_file** %5, align 8
  %42 = getelementptr inbounds %struct.open_file, %struct.open_file* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.bz_file*
  store %struct.bz_file* %44, %struct.bz_file** %8, align 8
  br label %45

45:                                               ; preds = %66, %40
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.bz_file*, %struct.bz_file** %8, align 8
  %48 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %46, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %45
  %53 = load %struct.open_file*, %struct.open_file** %5, align 8
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.bz_file*, %struct.bz_file** %8, align 8
  %57 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %55, %59
  %61 = call i32 @min(i32 16, i32 %60)
  %62 = call i64 @bzf_read(%struct.open_file* %53, i8* %54, i32 %61, i32* null)
  store i64 %62, i64* @errno, align 8
  %63 = load i64, i64* @errno, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %72

66:                                               ; preds = %52
  br label %45

67:                                               ; preds = %45
  %68 = load %struct.bz_file*, %struct.bz_file** %8, align 8
  %69 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %65, %38, %25
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @bzf_rewind(%struct.open_file*) #1

declare dso_local i64 @bzf_read(%struct.open_file*, i8*, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
