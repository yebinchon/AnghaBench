; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_toe.c_show_termdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_toe.c_show_termdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i8*, i8* }

@use_termdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ptr_termdata = common dso_local global %struct.TYPE_3__* null, align 8
@compare_termdata = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%c-\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c":\09\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%-10s\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @show_termdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_termdata(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* @use_termdata, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %147

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %26, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %20

29:                                               ; preds = %20
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8**, i8*** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %15

40:                                               ; preds = %15
  br label %41

41:                                               ; preds = %40, %11
  %42 = load i32, i32* @use_termdata, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ptr_termdata, align 8
  %46 = load i32, i32* @use_termdata, align 4
  %47 = load i32, i32* @compare_termdata, align 4
  %48 = call i32 @qsort(%struct.TYPE_3__* %45, i32 %46, i32 4, i32 %47)
  br label %49

49:                                               ; preds = %44, %41
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %143, %49
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* @use_termdata, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %146

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %131

58:                                               ; preds = %55
  store i64 0, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %116, %58
  br label %60

60:                                               ; preds = %70, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ptr_termdata, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %60

73:                                               ; preds = %60
  %74 = load i64, i64* %8, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ptr_termdata, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %77, %82
  br label %84

84:                                               ; preds = %76, %73
  %85 = phi i1 [ true, %73 ], [ %83, %76 ]
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 42, i32 43
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ptr_termdata, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %8, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, 1
  %98 = load i32, i32* @use_termdata, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp uge i64 %97, %99
  br i1 %100, label %115, label %101

101:                                              ; preds = %84
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ptr_termdata, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ptr_termdata, align 8
  %108 = load i64, i64* %7, align 8
  %109 = add i64 %108, 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @strcmp(i8* %106, i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %101, %84
  br label %119

116:                                              ; preds = %101
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %7, align 8
  br label %59

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %126, %119
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %3, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %120

129:                                              ; preds = %120
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %55
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ptr_termdata, align 8
  %133 = load i64, i64* %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ptr_termdata, align 8
  %138 = load i64, i64* %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %136, i8* %141)
  br label %143

143:                                              ; preds = %131
  %144 = load i64, i64* %7, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %7, align 8
  br label %50

146:                                              ; preds = %50
  br label %147

147:                                              ; preds = %146, %2
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @qsort(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
