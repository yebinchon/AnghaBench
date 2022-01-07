; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_init_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_init_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@stdout = common dso_local global i32 0, align 4
@xo_write_to_file = common dso_local global i32 0, align 4
@xo_flush_file = common dso_local global i32 0, align 4
@XOF_FLUSH_LINE = common dso_local global i32 0, align 4
@xo_locale_inited = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@XOIF_INIT_IN_PROGRESS = common dso_local global i32 0, align 4
@XO_INDENT_BY = common dso_local global i32 0, align 4
@XO_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @xo_init_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_init_handle(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load i32, i32* @stdout, align 4
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @xo_write_to_file, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @xo_flush_file, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @stdout, align 4
  %14 = call i64 @xo_is_line_buffered(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = load i32, i32* @XOF_FLUSH_LINE, align 4
  %19 = call i32 @XOF_SET(%struct.TYPE_8__* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @xo_locale_inited, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %20
  store i32 1, i32* @xo_locale_inited, align 4
  %24 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %3, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i8*, i8** %3, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i8*, i8** %3, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* @LC_CTYPE, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @setlocale(i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %38, %20
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = call i32 @xo_buf_init(i32* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = call i32 @xo_buf_init(i32* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = load i32, i32* @XOIF_INIT_IN_PROGRESS, align 4
  %51 = call i64 @XOIF_ISSET(%struct.TYPE_8__* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %67

54:                                               ; preds = %42
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = load i32, i32* @XOIF_INIT_IN_PROGRESS, align 4
  %57 = call i32 @XOIF_SET(%struct.TYPE_8__* %55, i32 %56)
  %58 = load i32, i32* @XO_INDENT_BY, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = load i32, i32* @XO_DEPTH, align 4
  %63 = call i32 @xo_depth_check(%struct.TYPE_8__* %61, i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = load i32, i32* @XOIF_INIT_IN_PROGRESS, align 4
  %66 = call i32 @XOIF_CLEAR(%struct.TYPE_8__* %64, i32 %65)
  br label %67

67:                                               ; preds = %54, %53
  ret void
}

declare dso_local i64 @xo_is_line_buffered(i32) #1

declare dso_local i32 @XOF_SET(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @xo_buf_init(i32*) #1

declare dso_local i64 @XOIF_ISSET(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @XOIF_SET(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @xo_depth_check(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @XOIF_CLEAR(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
