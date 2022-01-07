; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_relop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_relop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }

@NUM = common dso_local global i32 0, align 4
@True = common dso_local global %struct.TYPE_8__* null, align 8
@False = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"unknown relational operator %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @relop(i32** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32**, i32*** %4, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  %12 = load i32*, i32** %11, align 8
  %13 = call %struct.TYPE_8__* @execute(i32* %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %7, align 8
  %14 = load i32**, i32*** %4, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 1
  %16 = load i32*, i32** %15, align 8
  %17 = call %struct.TYPE_8__* @execute(i32* %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %8, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NUM, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NUM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %47

42:                                               ; preds = %31
  %43 = load i64, i64* %9, align 8
  %44 = icmp sgt i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  br label %47

47:                                               ; preds = %42, %41
  %48 = phi i32 [ -1, %41 ], [ %46, %42 ]
  store i32 %48, i32* %6, align 4
  br label %55

49:                                               ; preds = %24, %2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = call i32 @getsval(%struct.TYPE_8__* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = call i32 @getsval(%struct.TYPE_8__* %52)
  %54 = call i32 @strcoll(i32 %51, i32 %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %49, %47
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = call i32 @tempfree(%struct.TYPE_8__* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = call i32 @tempfree(%struct.TYPE_8__* %58)
  %60 = load i32, i32* %5, align 4
  switch i32 %60, label %103 [
    i32 129, label %61
    i32 130, label %68
    i32 128, label %75
    i32 133, label %82
    i32 132, label %89
    i32 131, label %96
  ]

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @True, align 8
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %3, align 8
  br label %107

66:                                               ; preds = %61
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @False, align 8
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %3, align 8
  br label %107

68:                                               ; preds = %55
  %69 = load i32, i32* %6, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @True, align 8
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %3, align 8
  br label %107

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @False, align 8
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %3, align 8
  br label %107

75:                                               ; preds = %55
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @True, align 8
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %3, align 8
  br label %107

80:                                               ; preds = %75
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @False, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %3, align 8
  br label %107

82:                                               ; preds = %55
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @True, align 8
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %3, align 8
  br label %107

87:                                               ; preds = %82
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @False, align 8
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %3, align 8
  br label %107

89:                                               ; preds = %55
  %90 = load i32, i32* %6, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** @True, align 8
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %3, align 8
  br label %107

94:                                               ; preds = %89
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @False, align 8
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %3, align 8
  br label %107

96:                                               ; preds = %55
  %97 = load i32, i32* %6, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @True, align 8
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %3, align 8
  br label %107

101:                                              ; preds = %96
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** @False, align 8
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %3, align 8
  br label %107

103:                                              ; preds = %55
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @FATAL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %103
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %107

107:                                              ; preds = %106, %101, %99, %94, %92, %87, %85, %80, %78, %73, %71, %66, %64
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %108
}

declare dso_local %struct.TYPE_8__* @execute(i32*) #1

declare dso_local i32 @strcoll(i32, i32) #1

declare dso_local i32 @getsval(%struct.TYPE_8__*) #1

declare dso_local i32 @tempfree(%struct.TYPE_8__*) #1

declare dso_local i32 @FATAL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
