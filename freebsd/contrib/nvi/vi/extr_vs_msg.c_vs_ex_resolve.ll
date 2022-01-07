; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_msg.c_vs_ex_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_msg.c_vs_ex_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i32, i64, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_20__*, i32, i32)*, i64 (%struct.TYPE_20__*, i32)* }
%struct.TYPE_22__ = type { i32, i32, i32 }

@VIP_CUR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@M_NONE = common dso_local global i32 0, align 4
@SC_SCR_EXWROTE = common dso_local global i32 0, align 4
@SC_VI = common dso_local global i32 0, align 4
@SC_EX_WAIT_YES = common dso_local global i32 0, align 4
@SC_EX_WAIT_NO = common dso_local global i32 0, align 4
@SC_EXIT = common dso_local global i32 0, align 4
@SC_EXIT_FORCE = common dso_local global i32 0, align 4
@SC_FSWITCH = common dso_local global i32 0, align 4
@SC_SSWITCH = common dso_local global i32 0, align 4
@SCROLL_W = common dso_local global i32 0, align 4
@SCROLL_W_EX = common dso_local global i32 0, align 4
@VIP_N_EX_PAINT = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4
@SC_SCR_REDRAW = common dso_local global i32 0, align 4
@VIP_N_EX_REDRAW = common dso_local global i32 0, align 4
@SC_SCR_REFORMAT = common dso_local global i32 0, align 4
@SA_ALTERNATE = common dso_local global i32 0, align 4
@E_REPAINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vs_ex_resolve(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %7, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = call %struct.TYPE_20__* @VIP(%struct.TYPE_20__* %13)
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %8, align 8
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %17 = load i32, i32* @VIP_CUR_INVALID, align 4
  %18 = call i32 @F_SET(%struct.TYPE_20__* %16, i32 %17)
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @vs_output(%struct.TYPE_20__* %24, i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @M_NONE, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %23, %2
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %36 = load i32, i32* @SC_SCR_EXWROTE, align 4
  %37 = call i64 @F_ISSET(%struct.TYPE_20__* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load i64 (%struct.TYPE_20__*, i32)*, i64 (%struct.TYPE_20__*, i32)** %43, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = load i32, i32* @SC_VI, align 4
  %47 = call i64 %44(%struct.TYPE_20__* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %200

50:                                               ; preds = %39
  br label %66

51:                                               ; preds = %34
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %53 = load i32, i32* @SC_EX_WAIT_YES, align 4
  %54 = call i64 @F_ISSET(%struct.TYPE_20__* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = load i32, i32* @SC_EX_WAIT_NO, align 4
  %64 = call i32 @F_CLR(%struct.TYPE_20__* %62, i32 %63)
  store i32 0, i32* %3, align 4
  br label %200

65:                                               ; preds = %56, %51
  br label %66

66:                                               ; preds = %65, %50
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = load i32, i32* @SC_EX_WAIT_YES, align 4
  %69 = call i32 @F_CLR(%struct.TYPE_20__* %67, i32 %68)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = load i32, i32* @SC_EX_WAIT_NO, align 4
  %72 = call i64 @F_ISSET(%struct.TYPE_20__* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %115, label %74

74:                                               ; preds = %66
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %76 = call i32 @INTERRUPTED(%struct.TYPE_20__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %115, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %80 = load i32, i32* @SC_EXIT, align 4
  %81 = load i32, i32* @SC_EXIT_FORCE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SC_FSWITCH, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SC_SSWITCH, align 4
  %86 = or i32 %84, %85
  %87 = call i64 @F_ISSET(%struct.TYPE_20__* %79, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* @SCROLL_W, align 4
  br label %93

91:                                               ; preds = %78
  %92 = load i32, i32* @SCROLL_W_EX, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* %9, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = load i32, i32* @SC_SCR_EXWROTE, align 4
  %97 = call i64 @F_ISSET(%struct.TYPE_20__* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @vs_wait(%struct.TYPE_20__* %100, i32* %101, i32 %102)
  br label %109

104:                                              ; preds = %93
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @vs_scroll(%struct.TYPE_20__* %105, i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %200

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114, %74, %66
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %117 = load i32, i32* @SC_SCR_EXWROTE, align 4
  %118 = call i64 @F_ISSET(%struct.TYPE_20__* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %122 = load i32, i32* @VIP_N_EX_PAINT, align 4
  %123 = call i32 @F_SET(%struct.TYPE_20__* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %115
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %126 = load i32, i32* @q, align 4
  %127 = call i32* @TAILQ_NEXT(%struct.TYPE_20__* %125, i32 %126)
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %131 = load i32, i32* @SC_SCR_REDRAW, align 4
  %132 = call i32 @F_SET(%struct.TYPE_20__* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %124
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %135 = load i32, i32* @VIP_N_EX_REDRAW, align 4
  %136 = call i64 @F_ISSET(%struct.TYPE_20__* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = load i32, i32* @SC_SCR_REFORMAT, align 4
  %141 = call i32 @F_SET(%struct.TYPE_20__* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %133
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i32 (%struct.TYPE_20__*, i32, i32)*, i32 (%struct.TYPE_20__*, i32, i32)** %144, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %147 = load i32, i32* @SA_ALTERNATE, align 4
  %148 = call i32 %145(%struct.TYPE_20__* %146, i32 %147, i32 1)
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %150 = load i32, i32* @SC_SCR_EXWROTE, align 4
  %151 = load i32, i32* @SC_EX_WAIT_NO, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @F_CLR(%struct.TYPE_20__* %149, i32 %152)
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %192

158:                                              ; preds = %142
  %159 = load i32, i32* @E_REPAINT, align 4
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 2
  store i32 %159, i32* %160, align 4
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp sge i32 %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %177

169:                                              ; preds = %158
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 %172, %175
  br label %177

177:                                              ; preds = %169, %168
  %178 = phi i32 [ 1, %168 ], [ %176, %169 ]
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  store i32 %178, i32* %179, align 4
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  store i32 %182, i32* %183, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 1
  store i32 0, i32* %185, align 8
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  store i64 0, i64* %187, align 8
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 3
  store i64 0, i64* %189, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %191 = call i32 @vs_repaint(%struct.TYPE_20__* %190, %struct.TYPE_22__* %6)
  br label %199

192:                                              ; preds = %142
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  store i32 0, i32* %194, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 3
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %192, %177
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %199, %113, %61, %49
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local %struct.TYPE_20__* @VIP(%struct.TYPE_20__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @vs_output(%struct.TYPE_20__*, i32, i8*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @INTERRUPTED(%struct.TYPE_20__*) #1

declare dso_local i32 @vs_wait(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @vs_scroll(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32* @TAILQ_NEXT(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @vs_repaint(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
