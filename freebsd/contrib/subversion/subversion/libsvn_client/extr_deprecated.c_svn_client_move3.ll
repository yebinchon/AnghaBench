; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_move3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_move3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@SVN_ERR_ENTRY_EXISTS = common dso_local global i64 0, align 8
@SVN_ERR_FS_ALREADY_EXISTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @svn_client_move3(i32** %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i8*, align 8
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32**, i32*** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = call %struct.TYPE_7__* @svn_client_move4(i32** %16, i8* %17, i8* %18, i32 %19, i32* %20, i32* %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %14, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %6
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SVN_ERR_ENTRY_EXISTS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SVN_ERR_FS_ALREADY_EXISTS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31, %25
  %38 = load i8*, i8** %9, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i8* @svn_path_basename(i8* %38, i32* %39)
  store i8* %40, i8** %15, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %42 = call i32 @svn_error_clear(%struct.TYPE_7__* %41)
  %43 = load i32**, i32*** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i8* @svn_path_join(i8* %45, i8* %46, i32* %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call %struct.TYPE_7__* @svn_client_move4(i32** %43, i8* %44, i8* %48, i32 %49, i32* %50, i32* %51)
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %7, align 8
  br label %56

53:                                               ; preds = %31, %6
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %55 = call %struct.TYPE_7__* @svn_error_trace(%struct.TYPE_7__* %54)
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %7, align 8
  br label %56

56:                                               ; preds = %53, %37
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %57
}

declare dso_local %struct.TYPE_7__* @svn_client_move4(i32**, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i8* @svn_path_basename(i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_7__*) #1

declare dso_local i8* @svn_path_join(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_error_trace(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
