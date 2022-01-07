; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_svn_stream_copy3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_svn_stream_copy3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN__STREAM_CHUNK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_stream_copy3(i32* %0, i32* %1, i32* (i8*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32* (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* (i8*)* %2, i32* (i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  %17 = call i8* @apr_palloc(i32* %15, i64 %16)
  store i8* %17, i8** %11, align 8
  br label %18

18:                                               ; preds = %5, %52
  %19 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i32* (i8*)*, i32* (i8*)** %8, align 8
  %21 = icmp ne i32* (i8*)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32* (i8*)*, i32* (i8*)** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32* %23(i8* %24)
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %53

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32* @svn_stream_read_full(i32* %31, i8* %32, i64* %14)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %53

37:                                               ; preds = %30
  %38 = load i64, i64* %14, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i32* @svn_stream_write(i32* %41, i8* %42, i64* %14)
  store i32* %43, i32** %12, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %44
  br label %53

52:                                               ; preds = %47
  br label %18

53:                                               ; preds = %51, %36, %28
  %54 = load i32*, i32** %6, align 8
  %55 = call i32* @svn_stream_close(i32* %54)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32* @svn_stream_close(i32* %56)
  %58 = call i32* @svn_error_compose_create(i32* %55, i32* %57)
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32* @svn_error_compose_create(i32* %59, i32* %60)
  ret i32* %61
}

declare dso_local i8* @apr_palloc(i32*, i64) #1

declare dso_local i32* @svn_stream_read_full(i32*, i8*, i64*) #1

declare dso_local i32* @svn_stream_write(i32*, i8*, i64*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32* @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
