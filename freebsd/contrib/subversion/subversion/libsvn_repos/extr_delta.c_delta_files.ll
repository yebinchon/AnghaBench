; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_delta.c_delta_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_delta.c_delta_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32*, i32, i64 }

@TRUE = common dso_local global i64 0, align 8
@change_file_prop = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.context*, i8*, i8*, i8*, i32*)* @delta_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @delta_files(%struct.context* %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store %struct.context* %0, %struct.context** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i64, i64* @TRUE, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @SVN_ERR_ASSERT(i8* %17)
  %19 = load i32*, i32** %10, align 8
  %20 = call i32* @svn_pool_create(i32* %19)
  store i32* %20, i32** %11, align 8
  %21 = load %struct.context*, %struct.context** %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* @change_file_prop, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @delta_proplists(%struct.context* %21, i8* %22, i8* %23, i32 %24, i8* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %5
  %32 = load %struct.context*, %struct.context** %6, align 8
  %33 = getelementptr inbounds %struct.context, %struct.context* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.context*, %struct.context** %6, align 8
  %37 = getelementptr inbounds %struct.context, %struct.context* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @svn_fs_contents_different(i64* %12, i32 %34, i8* %35, i32* %38, i8* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  br label %44

43:                                               ; preds = %5
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i64, i64* %12, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %100

47:                                               ; preds = %44
  store i32* null, i32** %13, align 8
  store i8* null, i8** %15, align 8
  %48 = load %struct.context*, %struct.context** %6, align 8
  %49 = getelementptr inbounds %struct.context, %struct.context* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.context*, %struct.context** %6, align 8
  %57 = getelementptr inbounds %struct.context, %struct.context* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32* [ %58, %55 ], [ null, %59 ]
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i8*, i8** %8, align 8
  br label %67

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i8* [ %65, %64 ], [ null, %66 ]
  %69 = load %struct.context*, %struct.context** %6, align 8
  %70 = getelementptr inbounds %struct.context, %struct.context* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @svn_fs_get_file_delta_stream(i32** %13, i32* %61, i8* %68, i32 %71, i8* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %76

76:                                               ; preds = %67, %47
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i32, i32* @svn_checksum_md5, align 4
  %81 = load %struct.context*, %struct.context** %6, align 8
  %82 = getelementptr inbounds %struct.context, %struct.context* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* @TRUE, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @svn_fs_file_checksum(i32** %14, i32 %80, i32* %83, i8* %84, i64 %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i32*, i32** %14, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = call i8* @svn_checksum_to_cstring(i32* %89, i32* %90)
  store i8* %91, i8** %15, align 8
  br label %92

92:                                               ; preds = %79, %76
  %93 = load %struct.context*, %struct.context** %6, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @send_text_delta(%struct.context* %93, i8* %94, i8* %95, i32* %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  br label %100

100:                                              ; preds = %92, %44
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @svn_pool_destroy(i32* %101)
  %103 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %103
}

declare dso_local i32 @SVN_ERR_ASSERT(i8*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @delta_proplists(%struct.context*, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_contents_different(i64*, i32, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_get_file_delta_stream(i32**, i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_file_checksum(i32**, i32, i32*, i8*, i64, i32*) #1

declare dso_local i8* @svn_checksum_to_cstring(i32*, i32*) #1

declare dso_local i32 @send_text_delta(%struct.context*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
