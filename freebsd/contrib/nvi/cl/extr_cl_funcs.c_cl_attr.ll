; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32, i32* }

@stdscr = common dso_local global i32* null, align 8
@TI_SENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"smcup\00", align 1
@cl_putchar = common dso_local global i32 0, align 4
@TE_SENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rmcup\00", align 1
@stdout = common dso_local global i32 0, align 4
@SC_EX = common dso_local global i32 0, align 4
@SC_SCR_EXWROTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_attr(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.TYPE_3__* @CLP(i32* %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @CLSP(i32* %12)
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @CLSP(i32* %16)
  br label %20

18:                                               ; preds = %3
  %19 = load i32*, i32** @stdscr, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32* [ %17, %15 ], [ %19, %18 ]
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %137 [
    i32 129, label %23
    i32 128, label %95
  ]

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TI_SENT, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %26
  %33 = load i32, i32* @TI_SENT, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = call i32 @cl_getcap(i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32** %43)
  br label %45

45:                                               ; preds = %40, %32
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @cl_putchar, align 4
  %55 = call i32 @tputs(i32* %53, i32 1, i32 %54)
  br label %56

56:                                               ; preds = %50, %45
  br label %57

57:                                               ; preds = %56, %26
  br label %92

58:                                               ; preds = %23
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TE_SENT, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %58
  %65 = load i32, i32* @TE_SENT, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = call i32 @cl_getcap(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32** %75)
  br label %77

77:                                               ; preds = %72, %64
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @cl_putchar, align 4
  %87 = call i32 @tputs(i32* %85, i32 1, i32 %86)
  br label %88

88:                                               ; preds = %82, %77
  %89 = load i32, i32* @stdout, align 4
  %90 = call i32 @fflush(i32 %89)
  br label %91

91:                                               ; preds = %88, %58
  br label %92

92:                                               ; preds = %91, %57
  %93 = load i32, i32* @stdout, align 4
  %94 = call i32 @fflush(i32 %93)
  br label %139

95:                                               ; preds = %20
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* @SC_EX, align 4
  %98 = load i32, i32* @SC_SCR_EXWROTE, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @F_ISSET(i32* %96, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %95
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 1, i32* %4, align 4
  br label %140

108:                                              ; preds = %102
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* @cl_putchar, align 4
  %116 = call i32 @tputs(i32* %114, i32 1, i32 %115)
  br label %123

117:                                              ; preds = %108
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @cl_putchar, align 4
  %122 = call i32 @tputs(i32* %120, i32 1, i32 %121)
  br label %123

123:                                              ; preds = %117, %111
  %124 = load i32, i32* @stdout, align 4
  %125 = call i32 @fflush(i32 %124)
  br label %136

126:                                              ; preds = %95
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @wstandout(i32* %130)
  br label %135

132:                                              ; preds = %126
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @wstandend(i32* %133)
  br label %135

135:                                              ; preds = %132, %129
  br label %136

136:                                              ; preds = %135, %123
  br label %139

137:                                              ; preds = %20
  %138 = call i32 (...) @abort() #3
  unreachable

139:                                              ; preds = %136, %92
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %139, %107
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_3__* @CLP(i32*) #1

declare dso_local i32* @CLSP(i32*) #1

declare dso_local i32 @cl_getcap(i32*, i8*, i32**) #1

declare dso_local i32 @tputs(i32*, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @F_ISSET(i32*, i32) #1

declare dso_local i32 @wstandout(i32*) #1

declare dso_local i32 @wstandend(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
