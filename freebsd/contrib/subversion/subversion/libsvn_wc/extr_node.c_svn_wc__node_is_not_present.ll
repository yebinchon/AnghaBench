; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__node_is_not_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__node_is_not_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__node_is_not_present(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %7
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = call i32 @svn_wc__db_base_get_info(i64* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %21, i8* %22, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  br label %36

27:                                               ; preds = %7
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %12, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @svn_wc__db_read_info(i64* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %30, i8* %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  br label %36

36:                                               ; preds = %27, %18
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %64
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_base_get_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
