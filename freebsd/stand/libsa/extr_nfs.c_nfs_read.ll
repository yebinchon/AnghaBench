; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_nfs.c_nfs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_nfs.c_nfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.nfs_iodesc = type { i64 }

@errno = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_read(%struct.open_file* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.nfs_iodesc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.open_file* %0, %struct.open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.open_file*, %struct.open_file** %6, align 8
  %14 = getelementptr inbounds %struct.open_file, %struct.open_file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.nfs_iodesc*
  store %struct.nfs_iodesc* %16, %struct.nfs_iodesc** %10, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %12, align 8
  br label %18

18:                                               ; preds = %39, %4
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = call i32 @twiddle(i32 16)
  %24 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %10, align 8
  %25 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %10, align 8
  %26 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @nfs_readdata(%struct.nfs_iodesc* %24, i64 %27, i8* %28, i64 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %5, align 4
  br label %62

35:                                               ; preds = %22
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %55

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %10, align 8
  %43 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %12, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %8, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %8, align 8
  br label %18

54:                                               ; preds = %18
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i64*, i64** %9, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* %8, align 8
  %60 = load i64*, i64** %9, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %33
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @twiddle(i32) #1

declare dso_local i32 @nfs_readdata(%struct.nfs_iodesc*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
