; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_read_window_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_read_window_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_DELTA_WINDOW_SIZE = common dso_local global i64 0, align 8
@SVN__MAX_ENCODED_UINT_LEN = common dso_local global i64 0, align 8
@MAX_INSTRUCTION_SECTION_LEN = common dso_local global i64 0, align 8
@SVN_ERR_SVNDIFF_CORRUPT_WINDOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Svndiff contains a too-large window\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Svndiff contains corrupt window header\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64*, i64*, i64*, i64*, i64*)* @read_window_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_window_header(i32* %0, i32* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8, align 1
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %17 = load i64*, i64** %15, align 8
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** %10, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %7, %39
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @read_one_byte(i8* %16, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i64*, i64** %15, align 8
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 7
  %29 = load i8, i8* %16, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 127
  %32 = or i32 %28, %31
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i8, i8* %16, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %19
  br label %40

39:                                               ; preds = %19
  br label %19

40:                                               ; preds = %38
  %41 = load i64*, i64** %11, align 8
  %42 = load i64*, i64** %15, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @read_one_size(i64* %41, i64* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i64*, i64** %12, align 8
  %47 = load i64*, i64** %15, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @read_one_size(i64* %46, i64* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i64*, i64** %13, align 8
  %52 = load i64*, i64** %15, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @read_one_size(i64* %51, i64* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i64*, i64** %14, align 8
  %57 = load i64*, i64** %15, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @read_one_size(i64* %56, i64* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i64*, i64** %12, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %82, label %65

65:                                               ; preds = %40
  %66 = load i64*, i64** %11, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %65
  %71 = load i64*, i64** %14, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SVN_DELTA_WINDOW_SIZE, align 8
  %74 = load i64, i64* @SVN__MAX_ENCODED_UINT_LEN, align 8
  %75 = add nsw i64 %73, %74
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %70
  %78 = load i64*, i64** %13, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MAX_INSTRUCTION_SECTION_LEN, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77, %70, %65, %40
  %83 = load i32, i32* @SVN_ERR_SVNDIFF_CORRUPT_WINDOW, align 4
  %84 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %85 = call i32* @svn_error_create(i32 %83, i32* null, i32 %84)
  store i32* %85, i32** %8, align 8
  br label %125

86:                                               ; preds = %77
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %119, label %90

90:                                               ; preds = %86
  %91 = load i64*, i64** %13, align 8
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %14, align 8
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %92, %94
  %96 = load i64*, i64** %13, align 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %119, label %99

99:                                               ; preds = %90
  %100 = load i64*, i64** %11, align 8
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %12, align 8
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %101, %103
  %105 = load i64*, i64** %11, align 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %119, label %108

108:                                              ; preds = %99
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64*, i64** %11, align 8
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %111, %113
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %114, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %108, %99, %90, %86
  %120 = load i32, i32* @SVN_ERR_SVNDIFF_CORRUPT_WINDOW, align 4
  %121 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %122 = call i32* @svn_error_create(i32 %120, i32* null, i32 %121)
  store i32* %122, i32** %8, align 8
  br label %125

123:                                              ; preds = %108
  %124 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %124, i32** %8, align 8
  br label %125

125:                                              ; preds = %123, %119, %82
  %126 = load i32*, i32** %8, align 8
  ret i32* %126
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_one_byte(i8*, i32*) #1

declare dso_local i32 @read_one_size(i64*, i64*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
