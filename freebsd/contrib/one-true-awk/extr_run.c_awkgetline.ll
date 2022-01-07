; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_awkgetline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_awkgetline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i8* }

@recsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"out of memory in getline\00", align 1
@stdout = common dso_local global i32 0, align 4
@LE = common dso_local global i32 0, align 4
@NUM = common dso_local global i32 0, align 4
@fldtab = external dso_local global %struct.TYPE_9__**, align 8
@record = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @awkgetline(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @recsize, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i64 @malloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @FATAL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @fflush(i32 %19)
  %21 = call %struct.TYPE_9__* (...) @gettemp()
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %5, align 8
  %22 = load i32**, i32*** %3, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %123

26:                                               ; preds = %18
  %27 = load i32**, i32*** %3, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 2
  %29 = load i32*, i32** %28, align 8
  %30 = call %struct.TYPE_9__* @execute(i32* %29)
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %6, align 8
  %31 = load i32**, i32*** %3, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ptoi(i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 124
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @LE, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %37, %26
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = call i32 @getsval(%struct.TYPE_9__* %41)
  %43 = call i32* @openfile(i32 %40, i32 %42)
  store i32* %43, i32** %7, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = call i32 @tempfree(%struct.TYPE_9__* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %52

49:                                               ; preds = %39
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @readrec(i8** %8, i32* %9, i32* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %48
  %53 = load i32, i32* %4, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %122

56:                                               ; preds = %52
  %57 = load i32**, i32*** %3, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %89

61:                                               ; preds = %56
  %62 = load i32**, i32*** %3, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = call %struct.TYPE_9__* @execute(i32* %64)
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %6, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @setsval(%struct.TYPE_9__* %66, i8* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @is_number(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %61
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @atof(i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @NUM, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %74, %61
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = call i32 @tempfree(%struct.TYPE_9__* %87)
  br label %121

89:                                               ; preds = %56
  %90 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @fldtab, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %90, i64 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @setsval(%struct.TYPE_9__* %92, i8* %93)
  %95 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @fldtab, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %95, i64 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @is_number(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %89
  %103 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @fldtab, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %103, i64 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @atof(i32 %107)
  %109 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @fldtab, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %109, i64 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  store i8* %108, i8** %112, align 8
  %113 = load i32, i32* @NUM, align 4
  %114 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @fldtab, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %114, i64 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %113
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %102, %89
  br label %121

121:                                              ; preds = %120, %86
  br label %122

122:                                              ; preds = %121, %55
  br label %160

123:                                              ; preds = %18
  %124 = load i32**, i32*** %3, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = call i32 @getrec(i8** @record, i32* @recsize, i32 1)
  store i32 %129, i32* %4, align 4
  br label %159

130:                                              ; preds = %123
  %131 = call i32 @getrec(i8** %8, i32* %9, i32 0)
  store i32 %131, i32* %4, align 4
  %132 = load i32**, i32*** %3, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 0
  %134 = load i32*, i32** %133, align 8
  %135 = call %struct.TYPE_9__* @execute(i32* %134)
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %6, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @setsval(%struct.TYPE_9__* %136, i8* %137)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @is_number(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %130
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @atof(i32 %147)
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  %151 = load i32, i32* @NUM, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %144, %130
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %158 = call i32 @tempfree(%struct.TYPE_9__* %157)
  br label %159

159:                                              ; preds = %156, %128
  br label %160

160:                                              ; preds = %159, %122
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @setfval(%struct.TYPE_9__* %161, i32 %162)
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 @free(i8* %164)
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %166
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FATAL(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local %struct.TYPE_9__* @gettemp(...) #1

declare dso_local %struct.TYPE_9__* @execute(i32*) #1

declare dso_local i32 @ptoi(i32*) #1

declare dso_local i32* @openfile(i32, i32) #1

declare dso_local i32 @getsval(%struct.TYPE_9__*) #1

declare dso_local i32 @tempfree(%struct.TYPE_9__*) #1

declare dso_local i32 @readrec(i8**, i32*, i32*) #1

declare dso_local i32 @setsval(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @is_number(i32) #1

declare dso_local i8* @atof(i32) #1

declare dso_local i32 @getrec(i8**, i32*, i32) #1

declare dso_local i32 @setfval(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
