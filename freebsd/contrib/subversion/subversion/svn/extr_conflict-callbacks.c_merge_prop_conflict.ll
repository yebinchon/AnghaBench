; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_merge_prop_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_merge_prop_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"||||||| ORIGINAL\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"<<<<<<< MINE\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c">>>>>>> THEIRS\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"=======\00", align 1
@svn_diff_conflict_display_modified_original_latest = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*)* @merge_prop_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_prop_conflict(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load i32*, i32** %16, align 8
  %20 = call %struct.TYPE_4__* @svn_diff_file_options_create(i32* %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %17, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = load i32*, i32** %16, align 8
  %25 = call i32* @svn_string_create_empty(i32* %24)
  store i32* %25, i32** %10, align 8
  br label %26

26:                                               ; preds = %23, %8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %16, align 8
  %31 = call i32* @svn_string_create_empty(i32* %30)
  store i32* %31, i32** %11, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32*, i32** %12, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %16, align 8
  %37 = call i32* @svn_string_create_empty(i32* %36)
  store i32* %37, i32** %12, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @TRUE, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32*, i32** %13, align 8
  br label %49

47:                                               ; preds = %38
  %48 = load i32*, i32** %11, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32* [ %46, %45 ], [ %48, %47 ]
  %51 = load i32*, i32** %12, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @svn_diff_mem_string_diff3(i32** %18, i32* %42, i32* %50, i32* %51, %struct.TYPE_4__* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32*, i32** %13, align 8
  br label %65

63:                                               ; preds = %49
  %64 = load i32*, i32** %11, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32* [ %62, %61 ], [ %64, %63 ]
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %69 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @svn_diff_conflict_display_modified_original_latest, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i8*, i8** %15, align 8
  %74 = load i32*, i32** %16, align 8
  %75 = call i32 @svn_diff_mem_string_output_merge3(i32* %56, i32* %57, i32* %58, i32* %66, i32* %67, i32 %68, i32 %69, i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72, i8* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local %struct.TYPE_4__* @svn_diff_file_options_create(i32*) #1

declare dso_local i32* @svn_string_create_empty(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_diff_mem_string_diff3(i32**, i32*, i32*, i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @svn_diff_mem_string_output_merge3(i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
