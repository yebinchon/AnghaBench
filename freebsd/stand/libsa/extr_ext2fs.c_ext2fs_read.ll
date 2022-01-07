; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_ext2fs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_ext2fs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.file = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, i8*, i64, i64*)* @ext2fs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2fs_read(%struct.open_file* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load %struct.open_file*, %struct.open_file** %5, align 8
  %15 = getelementptr inbounds %struct.open_file, %struct.open_file* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.file*
  store %struct.file* %17, %struct.file** %9, align 8
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %44, %4
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %18
  %22 = load %struct.file*, %struct.file** %9, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.file*, %struct.file** %9, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %60

31:                                               ; preds = %21
  %32 = load %struct.open_file*, %struct.open_file** %5, align 8
  %33 = call i32 @buf_read_file(%struct.open_file* %32, i8** %12, i64* %11)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %60

37:                                               ; preds = %31
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* %11, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @bcopy(i8* %45, i8* %46, i64 %47)
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.file*, %struct.file** %9, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %6, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %7, align 8
  br label %18

60:                                               ; preds = %36, %30, %18
  %61 = load i64*, i64** %8, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i64, i64* %7, align 8
  %65 = load i64*, i64** %8, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %13, align 4
  ret i32 %67
}

declare dso_local i32 @buf_read_file(%struct.open_file*, i8**, i64*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
