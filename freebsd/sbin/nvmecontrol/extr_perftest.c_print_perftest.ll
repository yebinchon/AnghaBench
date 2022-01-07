; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_perftest.c_print_perftest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_perftest.c_print_perftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_io_test = type { i64, i32, i32, i64, i64* }

@.str = private unnamed_addr constant [60 x i8] c"Threads: %2d Size: %6d %5s Time: %3d IO/s: %7ju MB/s: %4ju\0A\00", align 1
@NVME_OPC_READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09%3d: %8ju IO/s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_io_test*, i32)* @print_perftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_perftest(%struct.nvme_io_test* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_io_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nvme_io_test* %0, %struct.nvme_io_test** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %26, %2
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.nvme_io_test*, %struct.nvme_io_test** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.nvme_io_test*, %struct.nvme_io_test** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %16, i32 0, i32 4
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %15
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %8, align 8
  br label %9

29:                                               ; preds = %9
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.nvme_io_test*, %struct.nvme_io_test** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %30, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.nvme_io_test*, %struct.nvme_io_test** %3, align 8
  %37 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = sdiv i32 %39, 1048576
  store i32 %40, i32* %7, align 4
  %41 = load %struct.nvme_io_test*, %struct.nvme_io_test** %3, align 8
  %42 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nvme_io_test*, %struct.nvme_io_test** %3, align 8
  %45 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nvme_io_test*, %struct.nvme_io_test** %3, align 8
  %48 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NVME_OPC_READ, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %54 = load %struct.nvme_io_test*, %struct.nvme_io_test** %3, align 8
  %55 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, i64, i32, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %46, i8* %53, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %29
  store i64 0, i64* %8, align 8
  br label %63

63:                                               ; preds = %83, %62
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.nvme_io_test*, %struct.nvme_io_test** %3, align 8
  %66 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.nvme_io_test*, %struct.nvme_io_test** %3, align 8
  %72 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %71, i32 0, i32 4
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.nvme_io_test*, %struct.nvme_io_test** %3, align 8
  %79 = getelementptr inbounds %struct.nvme_io_test, %struct.nvme_io_test* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %77, %80
  %82 = call i32 (i8*, i64, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %70, i32 %81)
  br label %83

83:                                               ; preds = %69
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %63

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86, %29
  ret void
}

declare dso_local i32 @printf(i8*, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
