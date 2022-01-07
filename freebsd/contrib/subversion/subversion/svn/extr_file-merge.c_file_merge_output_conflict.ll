; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_file-merge.c_file_merge_output_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_file-merge.c_file_merge_output_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_merge_baton = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32, i32, i32, i32, i32, i32*)* @file_merge_output_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @file_merge_output_conflict(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.file_merge_baton*, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.file_merge_baton*
  store %struct.file_merge_baton* %20, %struct.file_merge_baton** %18, align 8
  %21 = load %struct.file_merge_baton*, %struct.file_merge_baton** %18, align 8
  %22 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %8
  %26 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %26, i32** %9, align 8
  br label %61

27:                                               ; preds = %8
  %28 = load %struct.file_merge_baton*, %struct.file_merge_baton** %18, align 8
  %29 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %28, i32 0, i32 9
  %30 = load %struct.file_merge_baton*, %struct.file_merge_baton** %18, align 8
  %31 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %30, i32 0, i32 8
  %32 = load %struct.file_merge_baton*, %struct.file_merge_baton** %18, align 8
  %33 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.file_merge_baton*, %struct.file_merge_baton** %18, align 8
  %36 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.file_merge_baton*, %struct.file_merge_baton** %18, align 8
  %39 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.file_merge_baton*, %struct.file_merge_baton** %18, align 8
  %46 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %45, i32 0, i32 4
  %47 = load %struct.file_merge_baton*, %struct.file_merge_baton** %18, align 8
  %48 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %47, i32 0, i32 3
  %49 = load %struct.file_merge_baton*, %struct.file_merge_baton** %18, align 8
  %50 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.file_merge_baton*, %struct.file_merge_baton** %18, align 8
  %53 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.file_merge_baton*, %struct.file_merge_baton** %18, align 8
  %56 = getelementptr inbounds %struct.file_merge_baton, %struct.file_merge_baton* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @merge_file_chunks(i32* %29, i64* %31, i32 %34, i32 %37, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32* %46, i32* %48, i32 %51, i32 %54, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %60, i32** %9, align 8
  br label %61

61:                                               ; preds = %27, %25
  %62 = load i32*, i32** %9, align 8
  ret i32* %62
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @merge_file_chunks(i32*, i64*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
