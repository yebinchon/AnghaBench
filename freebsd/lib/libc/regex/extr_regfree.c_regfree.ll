; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regfree.c_regfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regfree.c_regfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.re_guts* }
%struct.re_guts = type { i64, i32, i8*, i8*, i8*, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }

@MAGIC1 = common dso_local global i64 0, align 8
@MAGIC2 = common dso_local global i64 0, align 8
@CHAR_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regfree(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.re_guts*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MAGIC1, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %124

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.re_guts*, %struct.re_guts** %13, align 8
  store %struct.re_guts* %14, %struct.re_guts** %3, align 8
  %15 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %16 = icmp eq %struct.re_guts* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %19 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MAGIC2, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %11
  br label %124

24:                                               ; preds = %17
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %28 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %30 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %35 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %34, i32 0, i32 6
  %36 = load i32*, i32** %35, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = call i32 @free(i8* %37)
  br label %39

39:                                               ; preds = %33, %24
  %40 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %41 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %40, i32 0, i32 5
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %88

44:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %79, %44
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %48 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %45
  %52 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %53 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %52, i32 0, i32 5
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %62 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %61, i32 0, i32 5
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %71 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %70, i32 0, i32 5
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @free(i8* %77)
  br label %79

79:                                               ; preds = %51
  %80 = load i32, i32* %4, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %45

82:                                               ; preds = %45
  %83 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %84 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %83, i32 0, i32 5
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = bitcast %struct.TYPE_4__* %85 to i8*
  %87 = call i32 @free(i8* %86)
  br label %88

88:                                               ; preds = %82, %39
  %89 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %90 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %95 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @free(i8* %96)
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %100 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %105 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* @CHAR_MIN, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = call i32 @free(i8* %108)
  br label %110

110:                                              ; preds = %103, %98
  %111 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %112 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %111, i32 0, i32 4
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %117 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %116, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @free(i8* %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.re_guts*, %struct.re_guts** %3, align 8
  %122 = bitcast %struct.re_guts* %121 to i8*
  %123 = call i32 @free(i8* %122)
  br label %124

124:                                              ; preds = %120, %23, %10
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
