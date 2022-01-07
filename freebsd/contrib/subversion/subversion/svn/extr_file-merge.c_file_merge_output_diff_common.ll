; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_file-merge.c_file_merge_output_diff_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_file-merge.c_file_merge_output_diff_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_merge_baton = type { i32, i32, i32, i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32, i32, i32, i32, i32)* @file_merge_output_diff_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @file_merge_output_diff_common(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.file_merge_baton*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.file_merge_baton*
  store %struct.file_merge_baton* %18, %struct.file_merge_baton** %16, align 8
  %19 = load %struct.file_merge_baton*, %struct.file_merge_baton** %16, align 8
  %20 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %24, i32** %8, align 8
  br label %45

25:                                               ; preds = %7
  %26 = load %struct.file_merge_baton*, %struct.file_merge_baton** %16, align 8
  %27 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %26, i32 0, i32 1
  %28 = load %struct.file_merge_baton*, %struct.file_merge_baton** %16, align 8
  %29 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.file_merge_baton*, %struct.file_merge_baton** %16, align 8
  %32 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.file_merge_baton*, %struct.file_merge_baton** %16, align 8
  %37 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.file_merge_baton*, %struct.file_merge_baton** %16, align 8
  %40 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @copy_to_merged_file(i32* %27, i32 %30, i32 %33, i32 %34, i32 %35, i32 %38, i32 %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %8, align 8
  br label %45

45:                                               ; preds = %25, %23
  %46 = load i32*, i32** %8, align 8
  ret i32* %46
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @copy_to_merged_file(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
