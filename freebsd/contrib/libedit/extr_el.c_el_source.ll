; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_el.c_el_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_el.c_el_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @el_source(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %108

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %108

23:                                               ; preds = %16
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %6, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @el_free(i8* %33)
  store i32 -1, i32* %3, align 4
  br label %108

35:                                               ; preds = %29
  store i8* null, i8** %9, align 8
  store i64 0, i64* %7, align 8
  br label %36

36:                                               ; preds = %99, %92, %70, %45, %35
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @getline(i8** %9, i64* %7, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %100

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %36

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %58, %49, %46
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i8* @ct_decode_string(i8* %64, i32* %66)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %36

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %84, %71
  %73 = load i8*, i8** %11, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i64 @iswspace(i8 signext %79)
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i1 [ false, %72 ], [ %81, %77 ]
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %11, align 8
  br label %72

87:                                               ; preds = %82
  %88 = load i8*, i8** %11, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 35
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %36

93:                                               ; preds = %87
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @parse_line(%struct.TYPE_4__* %94, i8* %95)
  store i32 %96, i32* %12, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %100

99:                                               ; preds = %93
  br label %36

100:                                              ; preds = %98, %36
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @el_free(i8* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @fclose(i32* %105)
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %100, %32, %22, %15
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @el_free(i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i8* @ct_decode_string(i8*, i32*) #1

declare dso_local i64 @iswspace(i8 signext) #1

declare dso_local i32 @parse_line(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
