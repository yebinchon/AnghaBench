; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ctag_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ctag_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64 }
%struct.TYPE_12__ = type { i32, i64 }

@TAG_BADLNO = common dso_local global i32 0, align 4
@SEARCH_FILE = common dso_local global i32 0, align 4
@SEARCH_TAG = common dso_local global i32 0, align 4
@TAG_SEARCH = common dso_local global i32 0, align 4
@NOTSET = common dso_local global i64 0, align 8
@FORWARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i64, i8*)* @ctag_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctag_search(%struct.TYPE_11__* %0, i32* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ISDIGIT(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, 1
  %24 = load i8*, i8** %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call i32 @INT2CHAR(%struct.TYPE_11__* %20, i32* %21, i64 %23, i8* %24, i64 %25)
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @atoi(i8* %27)
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @db_exist(%struct.TYPE_11__* %30, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %19
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = load i32, i32* @TAG_BADLNO, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @tag_msg(%struct.TYPE_11__* %36, i32 %37, i8* %38)
  store i32 1, i32* %5, align 4
  br label %110

40:                                               ; preds = %19
  br label %96

41:                                               ; preds = %4
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* @SEARCH_FILE, align 4
  %48 = load i32, i32* @SEARCH_TAG, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @f_search(%struct.TYPE_11__* %44, %struct.TYPE_12__* %10, %struct.TYPE_12__* %10, i32* %45, i64 %46, i32* null, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %41
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @INT2CHAR(%struct.TYPE_11__* %53, i32* %54, i64 %55, i8* %56, i64 %57)
  %59 = load i8*, i8** %12, align 8
  %60 = call i8* @strrchr(i8* %59, i8 signext 40)
  store i8* %60, i8** %11, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %52
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  store i64 %67, i64* %8, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* @SEARCH_FILE, align 4
  %72 = load i32, i32* @SEARCH_TAG, align 4
  %73 = or i32 %71, %72
  %74 = call i64 @f_search(%struct.TYPE_11__* %68, %struct.TYPE_12__* %10, %struct.TYPE_12__* %10, i32* %69, i64 %70, i32* null, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %79

77:                                               ; preds = %62
  br label %84

78:                                               ; preds = %52
  br label %79

79:                                               ; preds = %78, %76
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = load i32, i32* @TAG_SEARCH, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @tag_msg(%struct.TYPE_11__* %80, i32 %81, i8* %82)
  store i32 1, i32* %5, align 4
  br label %110

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %41
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NOTSET, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i64, i64* @FORWARD, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %85
  br label %96

96:                                               ; preds = %95, %40
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = call i32 @nonblank(%struct.TYPE_11__* %103, i32 %106, i64* %108)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %96, %79, %35
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i64 @ISDIGIT(i32) #1

declare dso_local i32 @INT2CHAR(%struct.TYPE_11__*, i32*, i64, i8*, i64) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @db_exist(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @tag_msg(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i64 @f_search(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*, i64, i32*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @nonblank(%struct.TYPE_11__*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
