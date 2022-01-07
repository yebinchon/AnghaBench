; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_create_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_create_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.huffman_code = type { i32, i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to allocate memory for node data.\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.huffman_code*, i8*, i32, i8)* @create_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_code(%struct.archive_read* %0, %struct.huffman_code* %1, i8* %2, i32 %3, i8 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.huffman_code*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.huffman_code* %1, %struct.huffman_code** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %18 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %20 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %22 = call i64 @new_node(%struct.huffman_code* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %26 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %25, i32 0, i32 0
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @archive_set_error(i32* %26, i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %29, i32* %6, align 4
  br label %90

30:                                               ; preds = %5
  %31 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %32 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* @INT_MAX, align 4
  %34 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %35 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @INT_MIN, align 4
  %37 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %38 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %12, align 4
  br label %39

39:                                               ; preds = %84, %30
  %40 = load i32, i32* %12, align 4
  %41 = load i8, i8* %11, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %40, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %78, %44
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %45
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %78

59:                                               ; preds = %49
  %60 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %61 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @add_value(%struct.archive_read* %60, %struct.huffman_code* %61, i32 %62, i32 %63, i32 %64)
  %66 = load i64, i64* @ARCHIVE_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %69, i32* %6, align 4
  br label %90

70:                                               ; preds = %59
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %15, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %81

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %58
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %45

81:                                               ; preds = %76, %45
  %82 = load i32, i32* %14, align 4
  %83 = shl i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %39

87:                                               ; preds = %39
  %88 = load i64, i64* @ARCHIVE_OK, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %87, %68, %24
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @new_node(%struct.huffman_code*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @add_value(%struct.archive_read*, %struct.huffman_code*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
