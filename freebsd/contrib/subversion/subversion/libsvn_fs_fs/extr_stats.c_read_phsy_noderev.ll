; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_read_phsy_noderev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_read_phsy_noderev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32, i32 }

@APR_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__**, i32*, i32, %struct.TYPE_13__*, i32*, i32*)* @read_phsy_noderev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_phsy_noderev(%struct.TYPE_12__** %0, i32* %1, i32 %2, %struct.TYPE_13__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call %struct.TYPE_12__* @svn_stringbuf_create_empty(i32* %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %13, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i32* @svn_pool_create(i32* %19)
  store i32* %20, i32** %16, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = call i32 @SVN_ERR_ASSERT(%struct.TYPE_11__* %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @APR_SET, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @svn_io_file_seek(i32 %36, i32 %37, i32* %9, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %41

41:                                               ; preds = %66, %6
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @svn_pool_clear(i32* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @svn_stream_readline(i32 %48, %struct.TYPE_12__** %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %15, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %54 = call i32 @svn_stringbuf_appendstr(%struct.TYPE_12__* %52, %struct.TYPE_12__* %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %56 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_12__* %55, i8 signext 10)
  br label %57

57:                                               ; preds = %41
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i1 [ false, %57 ], [ %65, %62 ]
  br i1 %67, label %41, label %68

68:                                               ; preds = %66
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %70 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %70, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = call i32 @svn_pool_destroy(i32* %71)
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %73
}

declare dso_local %struct.TYPE_12__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(%struct.TYPE_11__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_seek(i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_stream_readline(i32, %struct.TYPE_12__**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stringbuf_appendstr(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
