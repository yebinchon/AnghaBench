; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_bzipfs.c_bzf_rewind.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_bzipfs.c_bzf_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { %struct.bz_file* }
%struct.bz_file = type { i32, i32 }

@BZ_OK = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*)* @bzf_rewind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bzf_rewind(%struct.open_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.open_file*, align 8
  %4 = alloca %struct.bz_file*, align 8
  %5 = alloca %struct.bz_file*, align 8
  store %struct.open_file* %0, %struct.open_file** %3, align 8
  %6 = load %struct.open_file*, %struct.open_file** %3, align 8
  %7 = getelementptr inbounds %struct.open_file, %struct.open_file* %6, i32 0, i32 0
  %8 = load %struct.bz_file*, %struct.bz_file** %7, align 8
  store %struct.bz_file* %8, %struct.bz_file** %4, align 8
  %9 = call %struct.bz_file* @malloc(i32 8)
  store %struct.bz_file* %9, %struct.bz_file** %5, align 8
  %10 = load %struct.bz_file*, %struct.bz_file** %5, align 8
  %11 = icmp eq %struct.bz_file* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.bz_file*, %struct.bz_file** %5, align 8
  %15 = call i32 @bzero(%struct.bz_file* %14, i32 8)
  %16 = load %struct.bz_file*, %struct.bz_file** %4, align 8
  %17 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bz_file*, %struct.bz_file** %5, align 8
  %20 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bz_file*, %struct.bz_file** %5, align 8
  %22 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %21, i32 0, i32 0
  %23 = call i64 @BZ2_bzDecompressInit(i32* %22, i32 0, i32 1)
  %24 = load i64, i64* @BZ_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load %struct.bz_file*, %struct.bz_file** %5, align 8
  %28 = call i32 @free(%struct.bz_file* %27)
  store i32 -1, i32* %2, align 4
  br label %51

29:                                               ; preds = %13
  %30 = load %struct.bz_file*, %struct.bz_file** %4, align 8
  %31 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i32 @lseek(i32 %32, i32 0, i32 %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.bz_file*, %struct.bz_file** %5, align 8
  %38 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %37, i32 0, i32 0
  %39 = call i32 @BZ2_bzDecompressEnd(i32* %38)
  %40 = load %struct.bz_file*, %struct.bz_file** %5, align 8
  %41 = call i32 @free(%struct.bz_file* %40)
  store i32 -1, i32* %2, align 4
  br label %51

42:                                               ; preds = %29
  %43 = load %struct.bz_file*, %struct.bz_file** %4, align 8
  %44 = getelementptr inbounds %struct.bz_file, %struct.bz_file* %43, i32 0, i32 0
  %45 = call i32 @BZ2_bzDecompressEnd(i32* %44)
  %46 = load %struct.bz_file*, %struct.bz_file** %4, align 8
  %47 = call i32 @free(%struct.bz_file* %46)
  %48 = load %struct.bz_file*, %struct.bz_file** %5, align 8
  %49 = load %struct.open_file*, %struct.open_file** %3, align 8
  %50 = getelementptr inbounds %struct.open_file, %struct.open_file* %49, i32 0, i32 0
  store %struct.bz_file* %48, %struct.bz_file** %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %36, %26, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.bz_file* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.bz_file*, i32) #1

declare dso_local i64 @BZ2_bzDecompressInit(i32*, i32, i32) #1

declare dso_local i32 @free(%struct.bz_file*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @BZ2_bzDecompressEnd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
