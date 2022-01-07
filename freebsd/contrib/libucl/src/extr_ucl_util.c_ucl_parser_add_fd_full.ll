; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_parser_add_fd_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_parser_add_fd_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32*, i32 }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"cannot stat fd %d: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot mmap fd %d: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_parser_add_fd_full(%struct.ucl_parser* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucl_parser*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.stat, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @fstat(i32 %16, %struct.stat* %15)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %21 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %20, i32 0, i32 1
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 @ucl_create_err(i32* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  store i32 0, i32* %6, align 4
  br label %77

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %77

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @PROT_READ, align 4
  %35 = load i32, i32* @MAP_SHARED, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @ucl_mmap(i32* null, i64 %33, i32 %34, i32 %35, i32 %36, i32 0)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** @MAP_FAILED, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %42 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %41, i32 0, i32 1
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = call i32 @ucl_create_err(i32* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %45)
  store i32 0, i32* %6, align 4
  br label %77

47:                                               ; preds = %31
  %48 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %49 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %54 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @free(i32* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %59 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %13, align 8
  %62 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @ucl_parser_add_chunk_full(%struct.ucl_parser* %62, i8* %63, i64 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i64, i64* %13, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %57
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @ucl_munmap(i8* %72, i64 %73)
  br label %75

75:                                               ; preds = %71, %57
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %40, %30, %19
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @ucl_create_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @ucl_mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ucl_parser_add_chunk_full(%struct.ucl_parser*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @ucl_munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
