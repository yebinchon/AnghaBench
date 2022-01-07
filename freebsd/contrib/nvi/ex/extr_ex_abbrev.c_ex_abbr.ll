; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_abbrev.c_ex_abbr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_abbrev.c_ex_abbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i8*, i32 }

@SEQ_ABBREV = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"105|No abbreviations to display\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"106|Abbreviations must end with a \22word\22 character\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"107|Abbreviations may not contain tabs or spaces\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"108|Abbreviations may not mix word/non-word characters, except at the end\00", align 1
@SEQ_USERDEF = common dso_local global i32 0, align 4
@G_ABBREV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_abbr(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %22 [
    i32 0, label %11
    i32 2, label %21
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = load i32, i32* @SEQ_ABBREV, align 4
  %14 = call i32 @seq_dump(%struct.TYPE_10__* %12, i32 %13, i32 0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = load i32, i32* @M_INFO, align 4
  %19 = call i32 @msgq(%struct.TYPE_10__* %17, i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %11
  store i32 0, i32* %3, align 4
  br label %167

21:                                               ; preds = %2
  br label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @abort() #3
  unreachable

24:                                               ; preds = %21
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %27, i64 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %34, i64 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %31, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @inword(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %24
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = load i32, i32* @M_ERR, align 4
  %48 = call i32 @msgq(%struct.TYPE_10__* %46, i32 %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %167

49:                                               ; preds = %24
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %73, %49
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @ISBLANK(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = load i32, i32* @M_ERR, align 4
  %71 = call i32 @msgq(%struct.TYPE_10__* %69, i32 %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %167

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  br label %57

76:                                               ; preds = %57
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %79, i64 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %83, 2
  br i1 %84, label %85, label %126

85:                                               ; preds = %76
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %88, i64 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %6, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %95, i64 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %7, align 8
  br label %102

102:                                              ; preds = %120, %85
  %103 = load i64, i64* %7, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %102
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = call i64 @inword(i8 signext %108)
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = call i64 @inword(i8 signext %112)
  %114 = icmp ne i64 %109, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %105
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = load i32, i32* @M_ERR, align 4
  %118 = call i32 @msgq(%struct.TYPE_10__* %116, i32 %117, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %167

119:                                              ; preds = %105
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %7, align 8
  %122 = add i64 %121, -1
  store i64 %122, i64* %7, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %6, align 8
  br label %102

125:                                              ; preds = %102
  br label %126

126:                                              ; preds = %125, %76
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %130, i64 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %137, i64 0
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %144, i64 1
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %151, i64 1
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @SEQ_ABBREV, align 4
  %157 = load i32, i32* @SEQ_USERDEF, align 4
  %158 = call i64 @seq_set(%struct.TYPE_10__* %127, i32* null, i32 0, i8* %134, i32 %141, i8* %148, i32 %155, i32 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %126
  store i32 1, i32* %3, align 4
  br label %167

161:                                              ; preds = %126
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @G_ABBREV, align 4
  %166 = call i32 @F_SET(i32 %164, i32 %165)
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %161, %160, %115, %68, %45, %20
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @seq_dump(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @msgq(%struct.TYPE_10__*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @inword(i8 signext) #1

declare dso_local i64 @ISBLANK(i8 signext) #1

declare dso_local i64 @seq_set(%struct.TYPE_10__*, i32*, i32, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @F_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
