; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_svn_spillbuf__process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_svn_spillbuf__process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memblock_t = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_spillbuf__process(i64* %0, i32* %1, i32* (i64*, i8*, i32, i32, i32*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32* (i64*, i8*, i32, i32, i32*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.memblock_t*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* (i64*, i8*, i32, i32, i32*)* %2, i32* (i64*, i8*, i32, i32, i32*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32* @svn_pool_create(i32* %18)
  store i32* %19, i32** %13, align 8
  %20 = load i64, i64* @FALSE, align 8
  %21 = load i64*, i64** %7, align 8
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %68, %5
  %23 = load i64, i64* @TRUE, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %69

25:                                               ; preds = %22
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @svn_pool_clear(i32* %26)
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @maybe_seek(i64* %12, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @read_data(%struct.memblock_t** %14, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.memblock_t*, %struct.memblock_t** %14, align 8
  %41 = icmp eq %struct.memblock_t* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i64, i64* @TRUE, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  br label %69

45:                                               ; preds = %35
  %46 = load i32* (i64*, i8*, i32, i32, i32*)*, i32* (i64*, i8*, i32, i32, i32*)** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.memblock_t*, %struct.memblock_t** %14, align 8
  %49 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.memblock_t*, %struct.memblock_t** %14, align 8
  %52 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = call i32* %46(i64* %16, i8* %47, i32 %50, i32 %53, i32* %54)
  store i32* %55, i32** %15, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.memblock_t*, %struct.memblock_t** %14, align 8
  %58 = call i32 @return_buffer(i32* %56, %struct.memblock_t* %57)
  %59 = load i32*, i32** %15, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = load i32*, i32** %15, align 8
  %63 = call i32* @svn_error_trace(i32* %62)
  store i32* %63, i32** %6, align 8
  br label %73

64:                                               ; preds = %45
  %65 = load i64, i64* %16, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %69

68:                                               ; preds = %64
  br label %22

69:                                               ; preds = %67, %42, %22
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @svn_pool_destroy(i32* %70)
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %6, align 8
  br label %73

73:                                               ; preds = %69, %61
  %74 = load i32*, i32** %6, align 8
  ret i32* %74
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @maybe_seek(i64*, i32*, i32*) #1

declare dso_local i32 @read_data(%struct.memblock_t**, i32*, i32*) #1

declare dso_local i32 @return_buffer(i32*, %struct.memblock_t*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
