; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_eqndelim.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_eqndelim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buf = type { i8*, i64 }

@ROFF_CONT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\&\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c".EQ\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c".EN\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s%s%s%s%s%s%s\00", align 1
@ROFF_REPARSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff*, %struct.buf*, i32)* @roff_eqndelim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roff_eqndelim(%struct.roff* %0, %struct.buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.roff*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.roff* %0, %struct.roff** %5, align 8
  store %struct.buf* %1, %struct.buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.buf*, %struct.buf** %6, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.roff*, %struct.roff** %5, align 8
  %23 = getelementptr inbounds %struct.roff, %struct.roff* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.roff*, %struct.roff** %5, align 8
  %28 = getelementptr inbounds %struct.roff, %struct.roff* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  br label %38

32:                                               ; preds = %3
  %33 = load %struct.roff*, %struct.roff** %5, align 8
  %34 = getelementptr inbounds %struct.roff, %struct.roff* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i32 [ %31, %26 ], [ %37, %32 ]
  %40 = call i8* @strchr(i8* %21, i32 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @ROFF_CONT, align 4
  store i32 %44, i32* %4, align 4
  br label %118

45:                                               ; preds = %38
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  store i8 0, i8* %46, align 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %48 = load %struct.buf*, %struct.buf** %6, align 8
  %49 = getelementptr inbounds %struct.buf, %struct.buf* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load %struct.roff*, %struct.roff** %5, align 8
  %56 = getelementptr inbounds %struct.roff, %struct.roff* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %60

60:                                               ; preds = %59, %54
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %61

61:                                               ; preds = %60, %45
  %62 = load %struct.roff*, %struct.roff** %5, align 8
  %63 = getelementptr inbounds %struct.roff, %struct.roff* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %72, %66
  %68 = load i8*, i8** %9, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  br label %67

75:                                               ; preds = %67
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %77

76:                                               ; preds = %61
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %77

77:                                               ; preds = %76, %75
  %78 = load i8*, i8** %9, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %83 = load %struct.roff*, %struct.roff** %5, align 8
  %84 = getelementptr inbounds %struct.roff, %struct.roff* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %88

88:                                               ; preds = %87, %82
  br label %89

89:                                               ; preds = %88, %77
  %90 = load %struct.buf*, %struct.buf** %6, align 8
  %91 = getelementptr inbounds %struct.buf, %struct.buf* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i64 @mandoc_asprintf(i8** %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %92, i8* %93, i8* %94, i8* %95, i8* %96, i8* %97, i8* %98)
  %100 = add nsw i64 %99, 1
  %101 = load %struct.buf*, %struct.buf** %6, align 8
  %102 = getelementptr inbounds %struct.buf, %struct.buf* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.buf*, %struct.buf** %6, align 8
  %104 = getelementptr inbounds %struct.buf, %struct.buf* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i8*, i8** %8, align 8
  %108 = load %struct.buf*, %struct.buf** %6, align 8
  %109 = getelementptr inbounds %struct.buf, %struct.buf* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load %struct.roff*, %struct.roff** %5, align 8
  %111 = getelementptr inbounds %struct.roff, %struct.roff* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  %114 = zext i1 %113 to i32
  %115 = load %struct.roff*, %struct.roff** %5, align 8
  %116 = getelementptr inbounds %struct.roff, %struct.roff* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @ROFF_REPARSE, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %89, %43
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i64 @mandoc_asprintf(i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
