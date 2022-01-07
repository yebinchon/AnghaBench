; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_gzipfs.c_zf_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_gzipfs.c_zf_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.z_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i32, i32)* @zf_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zf_seek(%struct.open_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.open_file*, %struct.open_file** %5, align 8
  %12 = getelementptr inbounds %struct.open_file, %struct.open_file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.z_file*
  store %struct.z_file* %14, %struct.z_file** %8, align 8
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
  %20 = load %struct.z_file*, %struct.z_file** %8, align 8
  %21 = getelementptr inbounds %struct.z_file, %struct.z_file* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %19, %23
  store i32 %24, i32* %9, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i64, i64* @EINVAL, align 8
  store i64 %26, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %67

27:                                               ; preds = %18, %16
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.z_file*, %struct.z_file** %8, align 8
  %30 = getelementptr inbounds %struct.z_file, %struct.z_file* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.open_file*, %struct.open_file** %5, align 8
  %36 = call i64 @zf_rewind(%struct.open_file* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %67

39:                                               ; preds = %34, %27
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.z_file*, %struct.z_file** %8, align 8
  %43 = getelementptr inbounds %struct.z_file, %struct.z_file* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %41, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load %struct.open_file*, %struct.open_file** %5, align 8
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.z_file*, %struct.z_file** %8, align 8
  %52 = getelementptr inbounds %struct.z_file, %struct.z_file* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %50, %54
  %56 = call i32 @min(i32 16, i32 %55)
  %57 = call i64 @zf_read(%struct.open_file* %48, i8* %49, i32 %56, i32* null)
  store i64 %57, i64* @errno, align 8
  %58 = load i64, i64* @errno, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %67

61:                                               ; preds = %47
  br label %40

62:                                               ; preds = %40
  %63 = load %struct.z_file*, %struct.z_file** %8, align 8
  %64 = getelementptr inbounds %struct.z_file, %struct.z_file* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %60, %38, %25
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @zf_rewind(%struct.open_file*) #1

declare dso_local i64 @zf_read(%struct.open_file*, i8*, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
