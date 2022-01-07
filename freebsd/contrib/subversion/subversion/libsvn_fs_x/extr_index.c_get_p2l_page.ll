; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_get_p2l_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_get_p2l_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_FS_INDEX_CORRUPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"P2L page description overlaps with next page description\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*, i32, i64, i64, i64, i64, i32*)* @get_p2l_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_p2l_page(i32** %0, i32* %1, i32* %2, i32 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  store i32** %0, i32*** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load i32*, i32** %19, align 8
  %26 = call i32* @apr_array_make(i32* %25, i32 16, i32 4)
  store i32* %26, i32** %21, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @svn_fs_x__rev_file_p2l_index(i32** %24, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %24, align 8
  %31 = load i64, i64* %15, align 8
  %32 = call i32 @packed_stream_seek(i32* %30, i64 %31)
  %33 = load i32*, i32** %24, align 8
  %34 = call i32 @packed_stream_get(i64* %20, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i64, i64* %20, align 8
  store i64 %36, i64* %22, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %16, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %9
  %41 = load i32*, i32** %24, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i32*, i32** %21, align 8
  %44 = call i32 @read_entry(i32* %41, i64* %22, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %84

46:                                               ; preds = %9
  br label %47

47:                                               ; preds = %55, %46
  %48 = load i32*, i32** %24, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32*, i32** %21, align 8
  %51 = call i32 @read_entry(i32* %48, i64* %22, i32 %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %24, align 8
  %54 = call i64 @packed_stream_offset(i32* %53)
  store i64 %54, i64* %23, align 8
  br label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %23, align 8
  %57 = load i64, i64* %16, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %47, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %23, align 8
  %61 = load i64, i64* %16, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %66 = call i32* @svn_error_create(i32 %64, i32* null, i32 %65)
  store i32* %66, i32** %10, align 8
  br label %88

67:                                               ; preds = %59
  %68 = load i64, i64* %22, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* %18, align 8
  %71 = add nsw i64 %69, %70
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load i32*, i32** %24, align 8
  %75 = call i32 @packed_stream_get(i64* %20, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i64, i64* %20, align 8
  store i64 %77, i64* %22, align 8
  %78 = load i32*, i32** %24, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32*, i32** %21, align 8
  %81 = call i32 @read_entry(i32* %78, i64* %22, i32 %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  br label %83

83:                                               ; preds = %73, %67
  br label %84

84:                                               ; preds = %83, %40
  %85 = load i32*, i32** %21, align 8
  %86 = load i32**, i32*** %11, align 8
  store i32* %85, i32** %86, align 8
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %87, i32** %10, align 8
  br label %88

88:                                               ; preds = %84, %63
  %89 = load i32*, i32** %10, align 8
  ret i32* %89
}

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__rev_file_p2l_index(i32**, i32*) #1

declare dso_local i32 @packed_stream_seek(i32*, i64) #1

declare dso_local i32 @packed_stream_get(i64*, i32*) #1

declare dso_local i32 @read_entry(i32*, i64*, i32, i32*) #1

declare dso_local i64 @packed_stream_offset(i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
