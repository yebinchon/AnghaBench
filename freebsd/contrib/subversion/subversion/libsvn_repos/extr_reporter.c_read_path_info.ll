; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_read_path_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_read_path_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32*, i32, i32*, i32, i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_infinity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__**, i32*, i32*)* @read_path_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_path_info(%struct.TYPE_4__** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @svn_spillbuf__reader_getc(i8* %8, i32* %9, i32* %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = load i8, i8* %8, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 45
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %17, align 8
  %18 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %18, i32** %4, align 8
  br label %118

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = call %struct.TYPE_4__* @apr_palloc(i32* %20, i32 56)
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %22, align 8
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @read_string(i32** %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @svn_spillbuf__reader_getc(i8* %8, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %37, label %45

37:                                               ; preds = %19
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @read_string(i32** %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  br label %49

45:                                               ; preds = %19
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 6
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @read_rev(i32* %52, i32* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @svn_spillbuf__reader_getc(i8* %8, i32* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i8, i8* %8, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 43
  br i1 %63, label %64, label %76

64:                                               ; preds = %49
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @read_depth(i32* %67, i32* %68, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %81

76:                                               ; preds = %49
  %77 = load i32, i32* @svn_depth_infinity, align 4
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %64
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @svn_spillbuf__reader_getc(i8* %8, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i8, i8* %8, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 43
  %89 = zext i1 %88 to i32
  %90 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @svn_spillbuf__reader_getc(i8* %8, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i8, i8* %8, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 43
  br i1 %99, label %100, label %108

100:                                              ; preds = %81
  %101 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @read_string(i32** %103, i32* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  br label %112

108:                                              ; preds = %81
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %108, %100
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i32* %113, i32** %116, align 8
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %4, align 8
  br label %118

118:                                              ; preds = %112, %16
  %119 = load i32*, i32** %4, align 8
  ret i32* %119
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_spillbuf__reader_getc(i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @read_string(i32**, i32*, i32*) #1

declare dso_local i32 @read_rev(i32*, i32*, i32*) #1

declare dso_local i32 @read_depth(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
