; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_parser_add_file_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_parser_add_file_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot open file %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_parser_add_file_full(%struct.ucl_parser* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucl_parser*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32* @ucl_realpath(i8* %22, i8* %21)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %27 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %26, i32 0, i32 1
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @ucl_create_err(i32* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %30)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %69

32:                                               ; preds = %5
  %33 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %34 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %33, i32 0, i32 1
  %35 = call i32 @ucl_fetch_file(i8* %21, i8** %12, i64* %13, i32* %34, i32 1)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %69

38:                                               ; preds = %32
  %39 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %40 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %45 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @free(i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = call i32 @strdup(i8* %21)
  %50 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %51 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %53 = call i32 @ucl_parser_set_filevars(%struct.ucl_parser* %52, i8* %21, i32 0)
  %54 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @ucl_parser_add_chunk_full(%struct.ucl_parser* %54, i8* %55, i64 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i64, i64* %13, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = load i8*, i8** %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @ucl_munmap(i8* %64, i64 %65)
  br label %67

67:                                               ; preds = %63, %48
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %69

69:                                               ; preds = %67, %37, %25
  %70 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ucl_realpath(i8*, i8*) #2

declare dso_local i32 @ucl_create_err(i32*, i8*, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @ucl_fetch_file(i8*, i8**, i64*, i32*, i32) #2

declare dso_local i32 @free(i32) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i32 @ucl_parser_set_filevars(%struct.ucl_parser*, i8*, i32) #2

declare dso_local i32 @ucl_parser_add_chunk_full(%struct.ucl_parser*, i8*, i64, i32, i32, i32) #2

declare dso_local i32 @ucl_munmap(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
