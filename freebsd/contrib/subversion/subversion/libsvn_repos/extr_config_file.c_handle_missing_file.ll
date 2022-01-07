; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_config_file.c_handle_missing_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_config_file.c_handle_missing_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@svn_node_none = common dso_local global i64 0, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"'%s' is not a file\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32**, %struct.TYPE_3__*, i8*, i32, i64)* @handle_missing_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @handle_missing_file(i32** %0, i32** %1, %struct.TYPE_3__* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32** %0, i32*** %8, align 8
  store i32** %1, i32*** %9, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @svn_node_none, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %6
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @svn_stream_empty(i32 %23)
  %25 = load i32**, i32*** %8, align 8
  store i32* %24, i32** %25, align 8
  %26 = load i32**, i32*** %9, align 8
  %27 = load i32, i32* @svn_checksum_md5, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @svn_checksum(i32** %26, i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  br label %42

33:                                               ; preds = %17, %6
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @svn_node_file, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = call i32* @svn_error_createf(i32 %38, i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32* %40, i32** %7, align 8
  br label %44

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %43, i32** %7, align 8
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32*, i32** %7, align 8
  ret i32* %45
}

declare dso_local i32* @svn_stream_empty(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_checksum(i32**, i32, i8*, i32, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
