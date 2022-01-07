; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_read_rep_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_read_rep_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [61 x i8] c"While reading representation offsets for node-revision '%s':\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__**, i8*, i32*, i32*, i32*)* @read_rep_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_rep_offsets(%struct.TYPE_7__** %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @svn_stringbuf_create_wrap(i8* %16, i32* %17)
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32* @svn_fs_fs__parse_representation(%struct.TYPE_7__** %15, i32 %18, i32* %19, i32* %20)
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %5
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call %struct.TYPE_6__* @svn_fs_fs__id_unparse(i32* %25, i32* %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %13, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  br label %37

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %36 ]
  %39 = call i8* @apr_psprintf(i32* %28, i32 %29, i8* %38)
  store i8* %39, i8** %14, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = call i32* @svn_error_quick_wrap(i32* %40, i8* %41)
  store i32* %42, i32** %6, align 8
  br label %63

43:                                               ; preds = %5
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32*, i32** %9, align 8
  %55 = call i32* @svn_fs_fs__id_txn_id(i32* %54)
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  br label %60

60:                                               ; preds = %53, %50
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %6, align 8
  br label %63

63:                                               ; preds = %61, %37
  %64 = load i32*, i32** %6, align 8
  ret i32* %64
}

declare dso_local i32* @svn_fs_fs__parse_representation(%struct.TYPE_7__**, i32, i32*, i32*) #1

declare dso_local i32 @svn_stringbuf_create_wrap(i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @svn_fs_fs__id_unparse(i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_quick_wrap(i32*, i8*) #1

declare dso_local i32* @svn_fs_fs__id_txn_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
