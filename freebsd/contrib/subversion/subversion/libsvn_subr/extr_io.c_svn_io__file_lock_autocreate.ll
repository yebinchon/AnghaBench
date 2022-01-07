; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io__file_lock_autocreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io__file_lock_autocreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @svn_io__file_lock_autocreate(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @TRUE, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_8__* @svn_io_file_lock2(i8* %6, i32 %7, i32 %8, i32* %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %46

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @APR_STATUS_IS_ENOENT(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = call i32 @svn_error_clear(%struct.TYPE_8__* %20)
  %22 = load i8*, i8** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.TYPE_8__* @svn_io_file_create_empty(i8* %22, i32* %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %5, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @APR_STATUS_IS_EEXIST(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = call i32 @svn_error_clear(%struct.TYPE_8__* %34)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %36

36:                                               ; preds = %33, %27, %19
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* @TRUE, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call %struct.TYPE_8__* @svn_io_file_lock2(i8* %40, i32 %41, i32 %42, i32* %43)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %5, align 8
  br label %45

45:                                               ; preds = %39, %36
  br label %46

46:                                               ; preds = %45, %13, %2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %47)
  ret %struct.TYPE_8__* %48
}

declare dso_local %struct.TYPE_8__* @svn_io_file_lock2(i8*, i32, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_io_file_create_empty(i8*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EEXIST(i32) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
