; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_screen.c_cl_screen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_screen.c_cl_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, i32, %struct.TYPE_17__* }

@stdscr = common dso_local global i32* null, align 8
@G_SRESTART = common dso_local global i32 0, align 4
@SC_SCR_EX = common dso_local global i32 0, align 4
@SC_SCR_VI = common dso_local global i32 0, align 4
@O_LINES = common dso_local global i32 0, align 4
@O_COLUMNS = common dso_local global i32 0, align 4
@SC_EX = common dso_local global i32 0, align 4
@SC_VI = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4
@CL_IN_EX = common dso_local global i32 0, align 4
@CL_SCR_EX_INIT = common dso_local global i32 0, align 4
@cl_putchar = common dso_local global i32 0, align 4
@CL_SCR_VI_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_screen(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %8, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = call %struct.TYPE_17__* @CLP(%struct.TYPE_17__* %12)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = call i32* @CLSP(%struct.TYPE_17__* %14)
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = call i32* @CLSP(%struct.TYPE_17__* %18)
  br label %22

20:                                               ; preds = %2
  %21 = load i32*, i32** @stdscr, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32* [ %19, %17 ], [ %21, %20 ]
  store i32* %23, i32** %7, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %25 = load i32, i32* @G_SRESTART, align 4
  %26 = call i64 @F_ISSET(%struct.TYPE_17__* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = load i32, i32* @SC_SCR_EX, align 4
  %31 = load i32, i32* @SC_SCR_VI, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @F_ISSET(%struct.TYPE_17__* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = load i32, i32* @O_LINES, align 4
  %38 = call i64 @O_VAL(%struct.TYPE_17__* %36, i32 %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = load i32, i32* @O_COLUMNS, align 4
  %41 = call i64 @O_VAL(%struct.TYPE_17__* %39, i32 %40)
  %42 = call i64 @resizeterm(i64 %38, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35, %28
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = call i64 @cl_quit(%struct.TYPE_17__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %164

49:                                               ; preds = %44, %35
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = load i32, i32* @G_SRESTART, align 4
  %52 = call i32 @F_CLR(%struct.TYPE_17__* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %22
  %54 = load i32, i32* @SC_EX, align 4
  %55 = call i64 @LF_ISSET(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = load i32, i32* @SC_SCR_EX, align 4
  %60 = call i64 @F_ISSET(%struct.TYPE_17__* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* @SC_VI, align 4
  %64 = call i64 @LF_ISSET(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = load i32, i32* @SC_SCR_VI, align 4
  %69 = call i64 @F_ISSET(%struct.TYPE_17__* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %57
  store i32 0, i32* %3, align 4
  br label %164

72:                                               ; preds = %66, %62
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = load i32, i32* @SC_SCR_EX, align 4
  %75 = call i64 @F_ISSET(%struct.TYPE_17__* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = load i32, i32* @SC_SCR_EX, align 4
  %80 = call i32 @F_CLR(%struct.TYPE_17__* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = load i32, i32* @SC_SCR_VI, align 4
  %84 = call i64 @F_ISSET(%struct.TYPE_17__* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %81
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = load i32, i32* @SC_SCR_VI, align 4
  %89 = call i32 @F_CLR(%struct.TYPE_17__* %87, i32 %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = load i32, i32* @q, align 4
  %92 = call i32* @TAILQ_NEXT(%struct.TYPE_17__* %90, i32 %91)
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @RLNO(%struct.TYPE_17__* %96, i32 %99)
  %101 = call i32 @wmove(i32* %95, i64 %100, i32 0)
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @wclrtobot(i32* %102)
  br label %104

104:                                              ; preds = %94, %86
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @RLNO(%struct.TYPE_17__* %106, i32 %109)
  %111 = sub nsw i64 %110, 1
  %112 = call i32 @wmove(i32* %105, i64 %111, i32 0)
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @wrefresh(i32* %113)
  br label %115

115:                                              ; preds = %104, %81
  %116 = load i32, i32* @SC_EX, align 4
  %117 = call i64 @LF_ISSET(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %151

119:                                              ; preds = %115
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = call i64 @cl_ex_init(%struct.TYPE_17__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 1, i32* %3, align 4
  br label %164

124:                                              ; preds = %119
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %126 = load i32, i32* @CL_IN_EX, align 4
  %127 = load i32, i32* @CL_SCR_EX_INIT, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @F_SET(%struct.TYPE_17__* %125, i32 %128)
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = load i32, i32* @SC_EX, align 4
  %132 = call i64 @F_ISSET(%struct.TYPE_17__* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %124
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %150

139:                                              ; preds = %134
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %144 = load i32, i32* @O_LINES, align 4
  %145 = call i64 @O_VAL(%struct.TYPE_17__* %143, i32 %144)
  %146 = sub nsw i64 %145, 1
  %147 = call i32 @tgoto(i32* %142, i32 0, i64 %146)
  %148 = load i32, i32* @cl_putchar, align 4
  %149 = call i32 @tputs(i32 %147, i32 1, i32 %148)
  br label %150

150:                                              ; preds = %139, %134, %124
  br label %163

151:                                              ; preds = %115
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %153 = call i64 @cl_vi_init(%struct.TYPE_17__* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 1, i32* %3, align 4
  br label %164

156:                                              ; preds = %151
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %158 = load i32, i32* @CL_IN_EX, align 4
  %159 = call i32 @F_CLR(%struct.TYPE_17__* %157, i32 %158)
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %161 = load i32, i32* @CL_SCR_VI_INIT, align 4
  %162 = call i32 @F_SET(%struct.TYPE_17__* %160, i32 %161)
  br label %163

163:                                              ; preds = %156, %150
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %155, %123, %71, %48
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.TYPE_17__* @CLP(%struct.TYPE_17__*) #1

declare dso_local i32* @CLSP(%struct.TYPE_17__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @resizeterm(i64, i64) #1

declare dso_local i64 @O_VAL(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @cl_quit(%struct.TYPE_17__*) #1

declare dso_local i32 @F_CLR(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @LF_ISSET(i32) #1

declare dso_local i32* @TAILQ_NEXT(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @wmove(i32*, i64, i32) #1

declare dso_local i64 @RLNO(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @wclrtobot(i32*) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i64 @cl_ex_init(%struct.TYPE_17__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @tputs(i32, i32, i32) #1

declare dso_local i32 @tgoto(i32*, i32, i64) #1

declare dso_local i64 @cl_vi_init(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
