; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_block.c_bwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_block.c_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to open disk for writing\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"allocate bounce buffer\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"write error to block device\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"short write to block device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwrite(%struct.uufsd* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uufsd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.uufsd* %0, %struct.uufsd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %12, align 8
  %13 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %14 = call i32 @ERROR(%struct.uufsd* %13, i8* null)
  %15 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %16 = call i32 @ufs_disk_write(%struct.uufsd* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %21 = call i32 @ERROR(%struct.uufsd* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %74

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = and i64 %24, 63
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i64, i64* %9, align 8
  %29 = call i8* @malloc(i64 %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %34 = call i32 @ERROR(%struct.uufsd* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %74

35:                                               ; preds = %27
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @memcpy(i8* %36, i8* %37, i64 %38)
  %40 = load i8*, i8** %12, align 8
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %35, %22
  %42 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %43 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %49 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = call i32 @pwrite(i32 %44, i8* %45, i64 %46, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @free(i8* %56)
  br label %58

58:                                               ; preds = %55, %41
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %63 = call i32 @ERROR(%struct.uufsd* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %74

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %71 = call i32 @ERROR(%struct.uufsd* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %69, %61, %32, %19
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @ERROR(%struct.uufsd*, i8*) #1

declare dso_local i32 @ufs_disk_write(%struct.uufsd*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @pwrite(i32, i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
