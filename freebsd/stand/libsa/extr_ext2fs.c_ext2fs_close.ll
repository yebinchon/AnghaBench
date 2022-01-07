; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_ext2fs_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_ext2fs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i8* }
%struct.file = type { %struct.file*, %struct.file*, %struct.file*, %struct.file** }

@EXT2_NIADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*)* @ext2fs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2fs_close(%struct.open_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.open_file*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %3, align 8
  %6 = load %struct.open_file*, %struct.open_file** %3, align 8
  %7 = getelementptr inbounds %struct.open_file, %struct.open_file* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.file*
  store %struct.file* %9, %struct.file** %4, align 8
  %10 = load %struct.open_file*, %struct.open_file** %3, align 8
  %11 = getelementptr inbounds %struct.open_file, %struct.open_file* %10, i32 0, i32 0
  store i8* null, i8** %11, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = icmp eq %struct.file* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EXT2_NIADDR, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 3
  %23 = load %struct.file**, %struct.file*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.file*, %struct.file** %23, i64 %25
  %27 = load %struct.file*, %struct.file** %26, align 8
  %28 = icmp ne %struct.file* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 3
  %32 = load %struct.file**, %struct.file*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.file*, %struct.file** %32, i64 %34
  %36 = load %struct.file*, %struct.file** %35, align 8
  %37 = call i32 @free(%struct.file* %36)
  br label %38

38:                                               ; preds = %29, %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 2
  %45 = load %struct.file*, %struct.file** %44, align 8
  %46 = icmp ne %struct.file* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.file*, %struct.file** %4, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 2
  %50 = load %struct.file*, %struct.file** %49, align 8
  %51 = call i32 @free(%struct.file* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.file*, %struct.file** %4, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 1
  %55 = load %struct.file*, %struct.file** %54, align 8
  %56 = icmp ne %struct.file* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.file*, %struct.file** %4, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 1
  %60 = load %struct.file*, %struct.file** %59, align 8
  %61 = call i32 @free(%struct.file* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.file*, %struct.file** %4, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  %65 = load %struct.file*, %struct.file** %64, align 8
  %66 = call i32 @free(%struct.file* %65)
  %67 = load %struct.file*, %struct.file** %4, align 8
  %68 = call i32 @free(%struct.file* %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @free(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
