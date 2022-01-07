; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_svn_spillbuf__read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_svn_spillbuf__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.memblock_t* }
%struct.memblock_t = type { i8*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_spillbuf__read(i8** %0, i32* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.memblock_t*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @maybe_seek(i32* null, %struct.TYPE_6__* %10, i32* %11)
  %13 = call i32 @SVN_ERR(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @read_data(%struct.memblock_t** %9, %struct.TYPE_6__* %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load %struct.memblock_t*, %struct.memblock_t** %9, align 8
  %19 = icmp eq %struct.memblock_t* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i8**, i8*** %5, align 8
  store i8* null, i8** %21, align 8
  %22 = load i32*, i32** %6, align 8
  store i32 0, i32* %22, align 4
  br label %46

23:                                               ; preds = %4
  %24 = load %struct.memblock_t*, %struct.memblock_t** %9, align 8
  %25 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  %28 = load %struct.memblock_t*, %struct.memblock_t** %9, align 8
  %29 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.memblock_t*, %struct.memblock_t** %33, align 8
  %35 = icmp ne %struct.memblock_t* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %23
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.memblock_t*, %struct.memblock_t** %39, align 8
  %41 = call i32 @return_buffer(%struct.TYPE_6__* %37, %struct.memblock_t* %40)
  br label %42

42:                                               ; preds = %36, %23
  %43 = load %struct.memblock_t*, %struct.memblock_t** %9, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.memblock_t* %43, %struct.memblock_t** %45, align 8
  br label %46

46:                                               ; preds = %42, %20
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %47
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @maybe_seek(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @read_data(%struct.memblock_t**, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @return_buffer(%struct.TYPE_6__*, %struct.memblock_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
