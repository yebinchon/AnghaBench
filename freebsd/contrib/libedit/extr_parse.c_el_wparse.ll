; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_parse.c_el_wparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_parse.c_el_wparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_5__*, i32, i8**)*, i32* }
%struct.TYPE_5__ = type { i32 }

@cmds = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @el_wparse(%struct.TYPE_5__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %107

15:                                               ; preds = %3
  %16 = load i8**, i8*** %7, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @wcschr(i8* %18, i32 58)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %66

22:                                               ; preds = %15
  %23 = load i8*, i8** %8, align 8
  %24 = load i8**, i8*** %7, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %107

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = load i8**, i8*** %7, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %30 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, 1
  %39 = call i8* @el_calloc(i64 %38, i32 1)
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %107

43:                                               ; preds = %29
  %44 = load i8*, i8** %10, align 8
  %45 = load i8**, i8*** %7, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @wcsncpy(i8* %44, i8* %47, i64 %48)
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = call i64 @el_match(i32 %57, i8* %58)
  store i64 %59, i64* %11, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @el_free(i8* %60)
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %107

65:                                               ; preds = %43
  br label %70

66:                                               ; preds = %15
  %67 = load i8**, i8*** %7, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %8, align 8
  br label %70

70:                                               ; preds = %66, %65
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %103, %70
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cmds, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %106

79:                                               ; preds = %71
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cmds, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i64 @wcscmp(i32* %85, i8* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %79
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cmds, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_5__*, i32, i8**)*, i32 (%struct.TYPE_5__*, i32, i8**)** %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i8**, i8*** %7, align 8
  %99 = call i32 %95(%struct.TYPE_5__* %96, i32 %97, i8** %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %107

102:                                              ; preds = %79
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %71

106:                                              ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %89, %64, %42, %28, %14
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i8* @wcschr(i8*, i32) #1

declare dso_local i8* @el_calloc(i64, i32) #1

declare dso_local i32 @wcsncpy(i8*, i8*, i64) #1

declare dso_local i64 @el_match(i32, i8*) #1

declare dso_local i32 @el_free(i8*) #1

declare dso_local i64 @wcscmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
