; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_sparse_basic.c_create_sparse_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_sparse_basic.c_create_sparse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparse = type { i64, i64 }

@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@END = common dso_local global i64 0, align 8
@HOLE = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sparse*)* @create_sparse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_sparse_file(i8* %0, %struct.sparse* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sparse*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sparse*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sparse* %1, %struct.sparse** %4, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.sparse*, %struct.sparse** %4, align 8
  store %struct.sparse* %11, %struct.sparse** %8, align 8
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i8 signext 32, i32 1024)
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = load i32, i32* @O_WRONLY, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @open(i8* %14, i32 %17, i32 384)
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  br label %22

22:                                               ; preds = %28, %2
  %23 = load %struct.sparse*, %struct.sparse** %8, align 8
  %24 = getelementptr inbounds %struct.sparse, %struct.sparse* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @END, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.sparse*, %struct.sparse** %8, align 8
  %30 = getelementptr inbounds %struct.sparse, %struct.sparse* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load %struct.sparse*, %struct.sparse** %8, align 8
  %35 = getelementptr inbounds %struct.sparse, %struct.sparse* %34, i32 1
  store %struct.sparse* %35, %struct.sparse** %8, align 8
  br label %22

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @ftruncate(i32 %37, i64 %38)
  %40 = icmp ne i32 %39, -1
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %43

43:                                               ; preds = %90, %36
  %44 = load %struct.sparse*, %struct.sparse** %4, align 8
  %45 = getelementptr inbounds %struct.sparse, %struct.sparse* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @END, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %93

49:                                               ; preds = %43
  %50 = load %struct.sparse*, %struct.sparse** %4, align 8
  %51 = getelementptr inbounds %struct.sparse, %struct.sparse* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HOLE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.sparse*, %struct.sparse** %4, align 8
  %58 = getelementptr inbounds %struct.sparse, %struct.sparse* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @SEEK_CUR, align 4
  %61 = call i64 @lseek(i32 %56, i64 %59, i32 %60)
  %62 = icmp ne i64 %61, -1
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  br label %90

65:                                               ; preds = %49
  %66 = load %struct.sparse*, %struct.sparse** %4, align 8
  %67 = getelementptr inbounds %struct.sparse, %struct.sparse* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %78, %65
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load i64, i64* %10, align 8
  %74 = icmp ugt i64 %73, 1024
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i64 1024, i64* %9, align 8
  br label %78

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  store i64 %77, i64* %9, align 8
  br label %78

78:                                               ; preds = %76, %75
  %79 = load i32, i32* %6, align 4
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %81 = load i64, i64* %9, align 8
  %82 = call i64 @write(i32 %79, i8* %80, i64 %81)
  %83 = icmp ne i64 %82, -1
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %10, align 8
  br label %69

89:                                               ; preds = %69
  br label %90

90:                                               ; preds = %89, %55
  %91 = load %struct.sparse*, %struct.sparse** %4, align 8
  %92 = getelementptr inbounds %struct.sparse, %struct.sparse* %91, i32 1
  store %struct.sparse* %92, %struct.sparse** %4, align 8
  br label %43

93:                                               ; preds = %43
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @close(i32 %94)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @ftruncate(i32, i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
