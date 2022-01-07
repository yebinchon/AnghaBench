; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_read.c_el_wgetc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_read.c_el_wgetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}*, i32, %struct.macros }
%struct.macros = type { i64, i8**, i64 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @el_wgetc(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.macros*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  store %struct.macros* %11, %struct.macros** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = call i32 @terminal__flush(%struct.TYPE_8__* %12)
  br label %14

14:                                               ; preds = %33, %2
  %15 = load %struct.macros*, %struct.macros** %6, align 8
  %16 = getelementptr inbounds %struct.macros, %struct.macros* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %65

20:                                               ; preds = %14
  %21 = load %struct.macros*, %struct.macros** %6, align 8
  %22 = getelementptr inbounds %struct.macros, %struct.macros* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.macros*, %struct.macros** %6, align 8
  %27 = getelementptr inbounds %struct.macros, %struct.macros* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.macros*, %struct.macros** %6, align 8
  %35 = call i32 @read_pop(%struct.macros* %34)
  br label %14

36:                                               ; preds = %20
  %37 = load %struct.macros*, %struct.macros** %6, align 8
  %38 = getelementptr inbounds %struct.macros, %struct.macros* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.macros*, %struct.macros** %6, align 8
  %43 = getelementptr inbounds %struct.macros, %struct.macros* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds i8, i8* %41, i64 %44
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %5, align 8
  store i8 %47, i8* %48, align 1
  %49 = load %struct.macros*, %struct.macros** %6, align 8
  %50 = getelementptr inbounds %struct.macros, %struct.macros* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.macros*, %struct.macros** %6, align 8
  %55 = getelementptr inbounds %struct.macros, %struct.macros* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %36
  %62 = load %struct.macros*, %struct.macros** %6, align 8
  %63 = call i32 @read_pop(%struct.macros* %62)
  br label %64

64:                                               ; preds = %61, %36
  store i32 1, i32* %3, align 4
  br label %90

65:                                               ; preds = %19
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = call i64 @tty_rawmode(%struct.TYPE_8__* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %90

70:                                               ; preds = %65
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = bitcast {}** %74 to i32 (%struct.TYPE_8__*, i8*)**
  %76 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 %76(%struct.TYPE_8__* %77, i8* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load i32, i32* @errno, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 8
  br label %88

88:                                               ; preds = %82, %70
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %69, %64
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @terminal__flush(%struct.TYPE_8__*) #1

declare dso_local i32 @read_pop(%struct.macros*) #1

declare dso_local i64 @tty_rawmode(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
