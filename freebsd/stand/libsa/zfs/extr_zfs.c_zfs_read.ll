; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfs.c_zfs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfs.c_zfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64, i64 }
%struct.file = type { i64, i32 }
%struct.stat = type { i64 }
%struct.zfsmount = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i8*, i64, i64*)* @zfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_read(%struct.open_file* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.open_file*, %struct.open_file** %6, align 8
  %16 = getelementptr inbounds %struct.open_file, %struct.open_file* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.zfsmount*
  %19 = getelementptr inbounds %struct.zfsmount, %struct.zfsmount* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load %struct.open_file*, %struct.open_file** %6, align 8
  %22 = getelementptr inbounds %struct.open_file, %struct.open_file* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.file*
  store %struct.file* %24, %struct.file** %11, align 8
  %25 = load %struct.open_file*, %struct.open_file** %6, align 8
  %26 = call i32 @zfs_stat(%struct.open_file* %25, %struct.stat* %12)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %76

31:                                               ; preds = %4
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %13, align 8
  %33 = load %struct.file*, %struct.file** %11, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = add i64 %35, %36
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %37, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.file*, %struct.file** %11, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %41, %31
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.file*, %struct.file** %11, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 1
  %52 = load %struct.file*, %struct.file** %11, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @dnode_read(i32* %49, i32* %51, i64 %54, i8* %55, i64 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %5, align 4
  br label %76

62:                                               ; preds = %48
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.file*, %struct.file** %11, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %13, align 8
  %73 = sub i64 %71, %72
  %74 = load i64*, i64** %9, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %70, %62
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %60, %29
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @zfs_stat(%struct.open_file*, %struct.stat*) #1

declare dso_local i32 @dnode_read(i32*, i32*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
