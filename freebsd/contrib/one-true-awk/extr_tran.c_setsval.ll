; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_setsval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_setsval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i32, i32, i32* }

@.str = private unnamed_addr constant [49 x i8] c"starting setsval %p: %s = \22%s\22, t=%o, r,f=%d,%d\0A\00", align 1
@donerec = common dso_local global i32 0, align 4
@donefld = common dso_local global i64 0, align 8
@NUM = common dso_local global i32 0, align 4
@STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"assign to\00", align 1
@NF = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"setting field %d to %s (%p)\0A\00", align 1
@ofsloc = common dso_local global %struct.TYPE_10__* null, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CONVC = common dso_local global i32 0, align 4
@CONVO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"setsval %p: %s = \22%s (%p) \22, t=%o r,f=%d,%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"setting NF to %g\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setsval(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = bitcast %struct.TYPE_10__* %8 to i8*
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @NN(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @donerec, align 4
  %19 = load i64, i64* @donefld, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @dprintf(i8* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NUM, align 4
  %26 = load i32, i32* @STR, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = call i32 @funnyvar(%struct.TYPE_10__* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = call i64 @isfld(%struct.TYPE_10__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  store i32 0, i32* @donerec, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @atoi(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** @NF, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @newfld(i32 %47)
  br label %49

49:                                               ; preds = %46, %37
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @dprintf(i8* %52)
  br label %71

54:                                               ; preds = %33
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = call i64 @isrec(%struct.TYPE_10__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i64 0, i64* @donefld, align 8
  store i32 1, i32* @donerec, align 4
  br label %70

59:                                               ; preds = %54
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ofsloc, align 8
  %62 = icmp eq %struct.TYPE_10__* %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @donerec, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (...) @recbld()
  br label %68

68:                                               ; preds = %66, %63
  br label %69

69:                                               ; preds = %68, %59
  br label %70

70:                                               ; preds = %69, %58
  br label %71

71:                                               ; preds = %70, %49
  %72 = load i8*, i8** %4, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %4, align 8
  %76 = call i8* @tostring(i8* %75)
  br label %79

77:                                               ; preds = %71
  %78 = call i8* @tostring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i8* [ %76, %74 ], [ %78, %77 ]
  store i8* %80, i8** %5, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = call i64 @freeable(%struct.TYPE_10__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @xfree(i8* %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* @NUM, align 4
  %91 = load i32, i32* @CONVC, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @CONVO, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* @STR, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 4
  store i32* null, i32** %106, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = call i32 @setfree(%struct.TYPE_10__* %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = bitcast %struct.TYPE_10__* %109 to i8*
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @NN(i32 %113)
  %115 = load i8*, i8** %5, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @donerec, align 4
  %121 = load i64, i64* @donefld, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 @dprintf(i8* %122)
  %124 = load i8*, i8** %5, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load i32*, i32** @NF, align 8
  %130 = icmp eq i32* %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %89
  store i32 0, i32* @donerec, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = call i32 @getfval(%struct.TYPE_10__* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @setlastfld(i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = call i32 @dprintf(i8* %138)
  br label %140

140:                                              ; preds = %131, %89
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  ret i8* %143
}

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @NN(i32) #1

declare dso_local i32 @funnyvar(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @isfld(%struct.TYPE_10__*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @newfld(i32) #1

declare dso_local i64 @isrec(%struct.TYPE_10__*) #1

declare dso_local i32 @recbld(...) #1

declare dso_local i8* @tostring(i8*) #1

declare dso_local i64 @freeable(%struct.TYPE_10__*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @setfree(%struct.TYPE_10__*) #1

declare dso_local i32 @getfval(%struct.TYPE_10__*) #1

declare dso_local i32 @setlastfld(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
