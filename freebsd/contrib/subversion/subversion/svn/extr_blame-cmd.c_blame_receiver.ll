; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_blame-cmd.c_blame_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_blame-cmd.c_blame_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"G \00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@APR_EOL_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32, i32, i32, i32*, i32, i32*, i8*, i8*, i64, i32*)* @blame_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @blame_receiver(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32* %7, i8* %8, i8* %9, i64 %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_4__*, align 8
  %26 = alloca %struct.TYPE_3__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32* %7, i32** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i64 %10, i64* %23, align 8
  store i32* %11, i32** %24, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %25, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %26, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %27, align 8
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %28, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %12
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @MAX(i32 %44, i32 %45)
  store i32 %46, i32* %29, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 6, i32* %48, align 8
  br label %49

49:                                               ; preds = %52, %43
  %50 = load i32, i32* %29, align 4
  %51 = icmp sge i32 %50, 1000000
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* %29, align 4
  %58 = sdiv i32 %57, 10
  store i32 %58, i32* %29, align 4
  br label %49

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %12
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32*, i32** %27, align 8
  %71 = call i32 @svn_stream_puts(i32* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i64, i64* @TRUE, align 8
  store i64 %73, i64* %28, align 8
  br label %78

74:                                               ; preds = %65
  %75 = load i32*, i32** %27, align 8
  %76 = call i32 @svn_stream_puts(i32* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %78

78:                                               ; preds = %74, %69
  br label %79

79:                                               ; preds = %78, %60
  %80 = load i64, i64* %28, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load i32*, i32** %27, align 8
  %84 = load i32, i32* %19, align 4
  %85 = load i32*, i32** %20, align 8
  %86 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %87 = call i32 @svn_prop_get_value(i32* %85, i32 %86)
  %88 = load i32*, i32** %20, align 8
  %89 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %90 = call i32 @svn_prop_get_value(i32* %88, i32 %89)
  %91 = load i8*, i8** %21, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %24, align 8
  %99 = call i32 @print_line_info(i32* %83, i32 %84, i32 %87, i32 %90, i8* %91, i32 %94, i32 %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  br label %119

101:                                              ; preds = %79
  %102 = load i32*, i32** %27, align 8
  %103 = load i32, i32* %17, align 4
  %104 = load i32*, i32** %18, align 8
  %105 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %106 = call i32 @svn_prop_get_value(i32* %104, i32 %105)
  %107 = load i32*, i32** %18, align 8
  %108 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %109 = call i32 @svn_prop_get_value(i32* %107, i32 %108)
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32*, i32** %24, align 8
  %117 = call i32 @print_line_info(i32* %102, i32 %103, i32 %106, i32 %109, i8* null, i32 %112, i32 %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  br label %119

119:                                              ; preds = %101, %82
  %120 = load i32*, i32** %27, align 8
  %121 = load i32*, i32** %24, align 8
  %122 = load i8*, i8** %22, align 8
  %123 = load i32, i32* @APR_EOL_STR, align 4
  %124 = call i32* @svn_stream_printf(i32* %120, i32* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %122, i32 %123)
  ret i32* %124
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_puts(i32*, i8*) #1

declare dso_local i32 @print_line_info(i32*, i32, i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_prop_get_value(i32*, i32) #1

declare dso_local i32* @svn_stream_printf(i32*, i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
