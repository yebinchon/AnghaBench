; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_create_rep_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_create_rep_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i8* }

@SVN_ERR_FS_CORRUPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Corrupt representation '%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32**, i32**, i32**, i32*, i32*, i32*, i32*)* @create_rep_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @create_rep_state(i32** %0, i32** %1, i32** %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store i32** %0, i32*** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32**, i32*** %9, align 8
  %18 = load i32**, i32*** %10, align 8
  %19 = load i32**, i32*** %11, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = call %struct.TYPE_9__* @create_rep_state_body(i32** %17, i32** %18, i32** %19, i32* %20, i32* %21, i32* %22, i32* %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %16, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %7
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SVN_ERR_FS_CORRUPT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load i64, i64* @SVN_ERR_FS_CORRUPT, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32*, i32** %15, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = call %struct.TYPE_10__* @svn_fs_x__unparse_representation(i32* %39, i32 %40, i32* %41, i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  br label %47

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %38
  %48 = phi i8* [ %45, %38 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %46 ]
  %49 = call %struct.TYPE_9__* @svn_error_createf(i64 %34, %struct.TYPE_9__* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %48)
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %8, align 8
  br label %53

50:                                               ; preds = %27, %7
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %52 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %51)
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %8, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  ret %struct.TYPE_9__* %54
}

declare dso_local %struct.TYPE_9__* @create_rep_state_body(i32**, i32**, i32**, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_error_createf(i64, %struct.TYPE_9__*, i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @svn_fs_x__unparse_representation(i32*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
