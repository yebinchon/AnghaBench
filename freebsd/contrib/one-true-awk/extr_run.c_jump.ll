; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_jump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32 }

@errorflag = common dso_local global i32 0, align 4
@env = common dso_local global i32 0, align 4
@STR = common dso_local global i32 0, align 4
@NUM = common dso_local global i32 0, align 4
@fp = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"bad type variable %d\00", align 1
@jret = common dso_local global %struct.TYPE_16__* null, align 8
@jnext = common dso_local global %struct.TYPE_16__* null, align 8
@jnextfile = common dso_local global %struct.TYPE_16__* null, align 8
@jbreak = common dso_local global %struct.TYPE_16__* null, align 8
@jcont = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"illegal jump type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @jump(i32** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %116 [
    i32 131, label %8
    i32 128, label %26
    i32 130, label %107
    i32 129, label %109
    i32 133, label %112
    i32 132, label %114
  ]

8:                                                ; preds = %2
  %9 = load i32**, i32*** %4, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i32**, i32*** %4, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = call %struct.TYPE_16__* @execute(i32* %16)
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %6, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = call i64 @getfval(%struct.TYPE_16__* %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @errorflag, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = call i32 @tempfree(%struct.TYPE_16__* %21)
  br label %23

23:                                               ; preds = %13, %8
  %24 = load i32, i32* @env, align 4
  %25 = call i32 @longjmp(i32 %24, i32 1)
  br label %26

26:                                               ; preds = %2, %23
  %27 = load i32**, i32*** %4, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %105

31:                                               ; preds = %26
  %32 = load i32**, i32*** %4, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = call %struct.TYPE_16__* @execute(i32* %34)
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %6, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @STR, align 4
  %40 = load i32, i32* @NUM, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load i32, i32* @STR, align 4
  %44 = load i32, i32* @NUM, align 4
  %45 = or i32 %43, %44
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %31
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fp, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = call i32 @getsval(%struct.TYPE_16__* %51)
  %53 = call i32 @setsval(%struct.TYPE_17__* %50, i32 %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = call i64 @getfval(%struct.TYPE_16__* %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fp, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  store i64 %55, i64* %59, align 8
  %60 = load i32, i32* @NUM, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fp, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %60
  store i32 %66, i32* %64, align 8
  br label %102

67:                                               ; preds = %31
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @STR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fp, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = call i32 @getsval(%struct.TYPE_16__* %78)
  %80 = call i32 @setsval(%struct.TYPE_17__* %77, i32 %79)
  br label %101

81:                                               ; preds = %67
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NUM, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** @fp, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = call i64 @getfval(%struct.TYPE_16__* %92)
  %94 = call i32 @setfval(%struct.TYPE_17__* %91, i64 %93)
  br label %100

95:                                               ; preds = %81
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @FATAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %95, %88
  br label %101

101:                                              ; preds = %100, %74
  br label %102

102:                                              ; preds = %101, %47
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = call i32 @tempfree(%struct.TYPE_16__* %103)
  br label %105

105:                                              ; preds = %102, %26
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** @jret, align 8
  store %struct.TYPE_16__* %106, %struct.TYPE_16__** %3, align 8
  br label %120

107:                                              ; preds = %2
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** @jnext, align 8
  store %struct.TYPE_16__* %108, %struct.TYPE_16__** %3, align 8
  br label %120

109:                                              ; preds = %2
  %110 = call i32 (...) @nextfile()
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** @jnextfile, align 8
  store %struct.TYPE_16__* %111, %struct.TYPE_16__** %3, align 8
  br label %120

112:                                              ; preds = %2
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** @jbreak, align 8
  store %struct.TYPE_16__* %113, %struct.TYPE_16__** %3, align 8
  br label %120

114:                                              ; preds = %2
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** @jcont, align 8
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %3, align 8
  br label %120

116:                                              ; preds = %2
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @FATAL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %116
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %120

120:                                              ; preds = %119, %114, %112, %109, %107, %105
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %121
}

declare dso_local %struct.TYPE_16__* @execute(i32*) #1

declare dso_local i64 @getfval(%struct.TYPE_16__*) #1

declare dso_local i32 @tempfree(%struct.TYPE_16__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @setsval(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @getsval(%struct.TYPE_16__*) #1

declare dso_local i32 @setfval(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @nextfile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
