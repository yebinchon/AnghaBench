; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_refresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i64 }

@stdscr = common dso_local global i32* null, align 8
@CL_LAYOUT = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4
@curscr = common dso_local global i32 0, align 4
@ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_refresh(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = call %struct.TYPE_13__* @CLP(%struct.TYPE_12__* %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %7, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = call i32* @CLSP(%struct.TYPE_12__* %18)
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32* @CLSP(%struct.TYPE_12__* %22)
  br label %26

24:                                               ; preds = %2
  %25 = load i32*, i32** @stdscr, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i32* [ %23, %21 ], [ %25, %24 ]
  store i32* %27, i32** %8, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %148

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = load i32, i32* @CL_LAYOUT, align 4
  %39 = call i64 @F_ISSET(%struct.TYPE_13__* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %117

41:                                               ; preds = %36, %33
  %42 = load i32*, i32** @stdscr, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @getyx(i32* %42, i64 %43, i64 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %9, align 8
  br label %47

47:                                               ; preds = %105, %41
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %109

50:                                               ; preds = %47
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = load i32, i32* @q, align 4
  %53 = call %struct.TYPE_12__* @TAILQ_NEXT(%struct.TYPE_12__* %51, i32 %52)
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %10, align 8
  br label %54

54:                                               ; preds = %100, %50
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = icmp ne %struct.TYPE_12__* %55, null
  br i1 %56, label %57, label %104

57:                                               ; preds = %54
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %57
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = add nsw i64 %72, 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = call i32 @cl_rdiv(%struct.TYPE_12__* %79)
  br label %98

81:                                               ; preds = %65
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = add nsw i64 %88, 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %81
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %96 = call i32 @cl_rdiv(%struct.TYPE_12__* %95)
  br label %97

97:                                               ; preds = %94, %81
  br label %98

98:                                               ; preds = %97, %78
  br label %99

99:                                               ; preds = %98, %57
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = load i32, i32* @q, align 4
  %103 = call %struct.TYPE_12__* @TAILQ_NEXT(%struct.TYPE_12__* %101, i32 %102)
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %10, align 8
  br label %54

104:                                              ; preds = %54
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = load i32, i32* @q, align 4
  %108 = call %struct.TYPE_12__* @TAILQ_NEXT(%struct.TYPE_12__* %106, i32 %107)
  store %struct.TYPE_12__* %108, %struct.TYPE_12__** %9, align 8
  br label %47

109:                                              ; preds = %47
  %110 = load i32*, i32** @stdscr, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %12, align 8
  %113 = call i32 @wmove(i32* %110, i64 %111, i64 %112)
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = load i32, i32* @CL_LAYOUT, align 4
  %116 = call i32 @F_CLR(%struct.TYPE_13__* %114, i32 %115)
  br label %117

117:                                              ; preds = %109, %36
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* @curscr, align 4
  %122 = call i32 @clearok(i32 %121, i32 1)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32*, i32** @stdscr, align 8
  %125 = call i64 @wnoutrefresh(i32* %124)
  %126 = load i64, i64* @ERR, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %145, label %128

128:                                              ; preds = %123
  %129 = load i32*, i32** %8, align 8
  %130 = call i64 @wnoutrefresh(i32* %129)
  %131 = load i64, i64* @ERR, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %145, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = icmp eq %struct.TYPE_12__* %134, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = call i64 (...) @doupdate()
  %141 = load i64, i64* @ERR, align 8
  %142 = icmp eq i64 %140, %141
  br label %143

143:                                              ; preds = %139, %133
  %144 = phi i1 [ false, %133 ], [ %142, %139 ]
  br label %145

145:                                              ; preds = %143, %128, %123
  %146 = phi i1 [ true, %128 ], [ true, %123 ], [ %144, %143 ]
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %145, %32
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.TYPE_13__* @CLP(%struct.TYPE_12__*) #1

declare dso_local i32* @CLSP(%struct.TYPE_12__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @getyx(i32*, i64, i64) #1

declare dso_local %struct.TYPE_12__* @TAILQ_NEXT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @cl_rdiv(%struct.TYPE_12__*) #1

declare dso_local i32 @wmove(i32*, i64, i64) #1

declare dso_local i32 @F_CLR(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @clearok(i32, i32) #1

declare dso_local i64 @wnoutrefresh(i32*) #1

declare dso_local i64 @doupdate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
