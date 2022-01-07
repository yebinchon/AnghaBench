; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_getdelim.c_getdelim.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_getdelim.c_getdelim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@__SERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getdelim(i8** noalias %0, i64* noalias %1, i32 %2, %struct.TYPE_7__* noalias %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %12 = call i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_7__* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = call i32 @ORIENT(%struct.TYPE_7__* %13, i32 -1)
  %15 = load i8**, i8*** %5, align 8
  %16 = icmp eq i8** %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64*, i64** %6, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* @errno, align 4
  br label %130

22:                                               ; preds = %17
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64*, i64** %6, align 8
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = call i64 @__srefill(%struct.TYPE_7__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = call i32 @__sfeof(%struct.TYPE_7__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = call i64 @expandtofit(i8** %42, i32 1, i64* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %37
  br label %130

47:                                               ; preds = %41
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %50, align 1
  store i64 -1, i64* %10, align 8
  br label %127

51:                                               ; preds = %33, %28
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %85, %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32* @memchr(i32* %55, i32 %56, i64 %59)
  store i32* %60, i32** %9, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %86

62:                                               ; preds = %52
  %63 = load i8**, i8*** %5, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i64 @sappend(i8** %63, i64* %10, i64* %64, i32* %67, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %130

75:                                               ; preds = %62
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = call i64 @__srefill(%struct.TYPE_7__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = call i32 @__sfeof(%struct.TYPE_7__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  br label %130

84:                                               ; preds = %79
  br label %122

85:                                               ; preds = %75
  br label %52

86:                                               ; preds = %52
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %9, align 8
  %89 = load i8**, i8*** %5, align 8
  %90 = load i64*, i64** %6, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = ptrtoint i32* %94 to i64
  %99 = ptrtoint i32* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call i64 @sappend(i8** %89, i64* %10, i64* %90, i32* %93, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %86
  br label %130

106:                                              ; preds = %86
  %107 = load i32*, i32** %9, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = ptrtoint i32* %107 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %117, %114
  store i64 %118, i64* %116, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  store i32* %119, i32** %121, align 8
  br label %122

122:                                              ; preds = %106, %84
  %123 = load i8**, i8*** %5, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8 0, i8* %126, align 1
  br label %127

127:                                              ; preds = %130, %122, %47
  %128 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %129 = load i64, i64* %10, align 8
  ret i64 %129

130:                                              ; preds = %105, %83, %74, %46, %20
  %131 = load i32, i32* @__SERR, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  store i64 -1, i64* %10, align 8
  br label %127
}

declare dso_local i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_7__*) #1

declare dso_local i32 @ORIENT(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @__srefill(%struct.TYPE_7__*) #1

declare dso_local i32 @__sfeof(%struct.TYPE_7__*) #1

declare dso_local i64 @expandtofit(i8**, i32, i64*) #1

declare dso_local i32* @memchr(i32*, i32, i64) #1

declare dso_local i64 @sappend(i8**, i64*, i64*, i32*, i32) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
