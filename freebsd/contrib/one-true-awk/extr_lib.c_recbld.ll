; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_recbld.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_recbld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@ofsloc = common dso_local global %struct.TYPE_5__* null, align 8
@donerec = common dso_local global i32 0, align 4
@record = common dso_local global i8* null, align 8
@NF = common dso_local global i32* null, align 8
@fldtab = common dso_local global %struct.TYPE_5__** null, align 8
@recsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"recbld 1\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"created $0 `%.30s...' too long\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"recbld 2\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"recbld 3\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"built giant record `%.30s...'\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"in recbld inputFS=%s, fldtab[0]=%p\0A\00", align 1
@inputFS = common dso_local global i32 0, align 4
@REC = common dso_local global i32 0, align 4
@STR = common dso_local global i32 0, align 4
@DONTFREE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"recbld = |%s|\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recbld() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ofsloc, align 8
  %6 = call i8* @getsval(%struct.TYPE_5__* %5)
  store i8* %6, i8** %4, align 8
  %7 = load i32, i32* @donerec, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %149

10:                                               ; preds = %0
  %11 = load i8*, i8** @record, align 8
  store i8* %11, i8** %2, align 8
  store i32 1, i32* %1, align 4
  br label %12

12:                                               ; preds = %89, %10
  %13 = load i32, i32* %1, align 4
  %14 = load i32*, i32** @NF, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp sle i32 %13, %15
  br i1 %16, label %17, label %92

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @fldtab, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = call i8* @getsval(%struct.TYPE_5__* %22)
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = add nsw i32 1, %25
  %27 = load i8*, i8** %2, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8*, i8** @record, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @recsize, align 4
  %36 = call i32 @adjbuf(i8** @record, i32* @recsize, i32 %34, i32 %35, i8** %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %17
  %39 = load i8*, i8** @record, align 8
  %40 = call i32 @FATAL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %17
  br label %42

42:                                               ; preds = %49, %41
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  %45 = load i8, i8* %43, align 1
  %46 = load i8*, i8** %2, align 8
  store i8 %45, i8* %46, align 1
  %47 = sext i8 %45 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i8*, i8** %2, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %2, align 8
  br label %42

52:                                               ; preds = %42
  %53 = load i32, i32* %1, align 4
  %54 = load i32*, i32** @NF, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = add nsw i32 2, %59
  %61 = load i8*, i8** %2, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8*, i8** @record, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @recsize, align 4
  %70 = call i32 @adjbuf(i8** @record, i32* @recsize, i32 %68, i32 %69, i8** %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %57
  %73 = load i8*, i8** @record, align 8
  %74 = call i32 @FATAL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %57
  %76 = load i8*, i8** %4, align 8
  store i8* %76, i8** %3, align 8
  br label %77

77:                                               ; preds = %84, %75
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %3, align 8
  %80 = load i8, i8* %78, align 1
  %81 = load i8*, i8** %2, align 8
  store i8 %80, i8* %81, align 1
  %82 = sext i8 %80 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i8*, i8** %2, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %2, align 8
  br label %77

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %52
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %1, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %1, align 4
  br label %12

92:                                               ; preds = %12
  %93 = load i8*, i8** %2, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8*, i8** @record, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* @recsize, align 4
  %101 = call i32 @adjbuf(i8** @record, i32* @recsize, i32 %99, i32 %100, i8** %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %92
  %104 = load i8*, i8** @record, align 8
  %105 = call i32 @FATAL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %103, %92
  %107 = load i8*, i8** %2, align 8
  store i8 0, i8* %107, align 1
  %108 = load i32, i32* @inputFS, align 4
  %109 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @fldtab, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %109, i64 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = bitcast %struct.TYPE_5__* %111 to i8*
  %113 = call i32 @dprintf(i8* %112)
  %114 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @fldtab, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %114, i64 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = call i64 @freeable(%struct.TYPE_5__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %106
  %120 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @fldtab, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %120, i64 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @xfree(i8* %124)
  br label %126

126:                                              ; preds = %119, %106
  %127 = load i32, i32* @REC, align 4
  %128 = load i32, i32* @STR, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @DONTFREE, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @fldtab, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %132, i64 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i32 %131, i32* %135, align 8
  %136 = load i8*, i8** @record, align 8
  %137 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @fldtab, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %137, i64 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i8* %136, i8** %140, align 8
  %141 = load i32, i32* @inputFS, align 4
  %142 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @fldtab, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %142, i64 0
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = bitcast %struct.TYPE_5__* %144 to i8*
  %146 = call i32 @dprintf(i8* %145)
  %147 = load i8*, i8** @record, align 8
  %148 = call i32 @dprintf(i8* %147)
  store i32 1, i32* @donerec, align 4
  br label %149

149:                                              ; preds = %126, %9
  ret void
}

declare dso_local i8* @getsval(%struct.TYPE_5__*) #1

declare dso_local i32 @adjbuf(i8**, i32*, i32, i32, i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @FATAL(i8*, i8*) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i64 @freeable(%struct.TYPE_5__*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
