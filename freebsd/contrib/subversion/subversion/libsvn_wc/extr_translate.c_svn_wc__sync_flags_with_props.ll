; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_translate.c_svn_wc__sync_flags_with_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_translate.c_svn_wc__sync_flags_with_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_PROP_NEEDS_LOCK = common dso_local global i32 0, align 4
@SVN_PROP_EXECUTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__sync_flags_with_props(i64* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %13, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i64, i64* @FALSE, align 8
  %21 = load i64*, i64** %6, align 8
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @svn_wc__db_read_info(i64* %10, i64* %11, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %12, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %14, i64* %15, i32* null, i32* null, i32* null, i32* %23, i8* %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @svn_node_file, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %22
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @svn_wc__db_status_normal, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @svn_wc__db_status_added, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %22
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %41, i32** %5, align 8
  br label %139

42:                                               ; preds = %36, %32
  %43 = load i64, i64* %15, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45, %42
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @svn_wc__db_read_props(i32** %13, i32* %49, i8* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  br label %56

55:                                               ; preds = %45
  store i32* null, i32** %13, align 8
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i64*, i64** %6, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* @TRUE, align 8
  %61 = load i64*, i64** %6, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @svn_wc__db_status_normal, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = load i32*, i32** %13, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* @SVN_PROP_NEEDS_LOCK, align 4
  %72 = call i64 @svn_hash_gets(i32* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32*, i32** %12, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74, %69, %66, %62
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* @FALSE, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @svn_io_set_file_read_write(i8* %78, i64 %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  br label %115

83:                                               ; preds = %74
  %84 = load i64, i64* %15, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** %13, align 8
  store i32* %87, i32** %16, align 8
  br label %100

88:                                               ; preds = %83
  %89 = load i64, i64* %14, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32*, i32** %7, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @svn_wc__db_read_pristine_props(i32** %16, i32* %92, i8* %93, i32* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  br label %99

98:                                               ; preds = %88
  store i32* null, i32** %16, align 8
  br label %99

99:                                               ; preds = %98, %91
  br label %100

100:                                              ; preds = %99, %86
  %101 = load i32*, i32** %16, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* @SVN_PROP_NEEDS_LOCK, align 4
  %106 = call i64 @svn_hash_gets(i32* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = load i64, i64* @FALSE, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @svn_io_set_file_read_only(i8* %109, i64 %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  br label %114

114:                                              ; preds = %108, %103, %100
  br label %115

115:                                              ; preds = %114, %77
  %116 = load i32*, i32** %13, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* @SVN_PROP_EXECUTABLE, align 4
  %121 = call i64 @svn_hash_gets(i32* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %118, %115
  %124 = load i8*, i8** %8, align 8
  %125 = load i64, i64* @FALSE, align 8
  %126 = load i64, i64* @FALSE, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @svn_io_set_file_executable(i8* %124, i64 %125, i64 %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  br label %137

130:                                              ; preds = %118
  %131 = load i8*, i8** %8, align 8
  %132 = load i64, i64* @TRUE, align 8
  %133 = load i64, i64* @FALSE, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @svn_io_set_file_executable(i8* %131, i64 %132, i64 %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  br label %137

137:                                              ; preds = %130, %123
  %138 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %138, i32** %5, align 8
  br label %139

139:                                              ; preds = %137, %40
  %140 = load i32*, i32** %5, align 8
  ret i32* %140
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i64*, i64*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_io_set_file_read_write(i8*, i64, i32*) #1

declare dso_local i32 @svn_wc__db_read_pristine_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_set_file_read_only(i8*, i64, i32*) #1

declare dso_local i32 @svn_io_set_file_executable(i8*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
