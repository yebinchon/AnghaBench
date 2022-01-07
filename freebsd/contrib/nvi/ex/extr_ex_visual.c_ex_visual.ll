; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_visual.c_ex_visual.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_visual.c_ex_visual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_20__*, i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@O_OPEN = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"175|The visual command requires that the open option be set\00", align 1
@FR_CURSORSET = common dso_local global i32 0, align 4
@E_C_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%luz%c%lu\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%luz%c\00", align 1
@CH_NOMAP = common dso_local global i32 0, align 4
@CH_QUOTED = common dso_local global i32 0, align 4
@O_NUMBER = common dso_local global i32 0, align 4
@O_LIST = common dso_local global i32 0, align 4
@SC_SCR_EXWROTE = common dso_local global i32 0, align 4
@SC_EX_WAIT_NO = common dso_local global i32 0, align 4
@SC_EX_GLOBAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SC_EX = common dso_local global i32 0, align 4
@SC_SCR_EX = common dso_local global i32 0, align 4
@SC_VI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_visual(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = load i32, i32* @O_OPEN, align 4
  %14 = call i32 @O_ISSET(%struct.TYPE_21__* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = load i32, i32* @M_ERR, align 4
  %19 = call i32 @msgq(%struct.TYPE_21__* %17, i32 %18, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %167

20:                                               ; preds = %2
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %32

27:                                               ; preds = %20
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %32

32:                                               ; preds = %27, %26
  %33 = phi i32 [ 1, %26 ], [ %31, %27 ]
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @FL_ISSET(i32 %38, i32 135)
  switch i32 %39, label %44 [
    i32 134, label %40
    i32 133, label %41
    i32 132, label %42
    i32 129, label %43
  ]

40:                                               ; preds = %32
  store i32 94, i32* %8, align 4
  br label %68

41:                                               ; preds = %32
  store i32 45, i32* %8, align 4
  br label %68

42:                                               ; preds = %32
  store i32 46, i32* %8, align 4
  br label %68

43:                                               ; preds = %32
  store i32 43, i32* %8, align 4
  br label %68

44:                                               ; preds = %32
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 4
  store i32 0, i32* %55, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 4
  %62 = call i32 @nonblank(%struct.TYPE_21__* %56, i32 %59, i32* %61)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = load i32, i32* @FR_CURSORSET, align 4
  %67 = call i32 @F_SET(%struct.TYPE_21__* %65, i32 %66)
  br label %120

68:                                               ; preds = %43, %42, %41, %40
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @E_C_COUNT, align 4
  %73 = call i32 @FL_ISSET(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %76, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80, i32 %83)
  store i64 %84, i64* %7, align 8
  br label %92

85:                                               ; preds = %68
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i64 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %86, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %90)
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %85, %75
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %95 = load i64, i64* %7, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @CHAR2INT(%struct.TYPE_21__* %93, i8* %94, i64 %95, i32* %96, i64 %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i32, i32* @CH_NOMAP, align 4
  %103 = load i32, i32* @CH_QUOTED, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @v_event_push(%struct.TYPE_21__* %99, i32* null, i32* %100, i64 %101, i32 %104)
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @FL_ISSET(i32 %108, i32 131)
  switch i32 %109, label %119 [
    i32 131, label %110
    i32 130, label %114
    i32 128, label %118
  ]

110:                                              ; preds = %92
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %112 = load i32, i32* @O_NUMBER, align 4
  %113 = call i32 @O_SET(%struct.TYPE_21__* %111, i32 %112)
  br label %119

114:                                              ; preds = %92
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = load i32, i32* @O_LIST, align 4
  %117 = call i32 @O_SET(%struct.TYPE_21__* %115, i32 %116)
  br label %119

118:                                              ; preds = %92
  br label %119

119:                                              ; preds = %92, %118, %114, %110
  br label %120

120:                                              ; preds = %119, %44
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = load i32, i32* @SC_SCR_EXWROTE, align 4
  %123 = call i64 @F_ISSET(%struct.TYPE_21__* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %127 = load i32, i32* @SC_EX_WAIT_NO, align 4
  %128 = call i32 @F_SET(%struct.TYPE_21__* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %120
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %131 = load i32, i32* @SC_EX_GLOBAL, align 4
  %132 = call i64 @F_ISSET(%struct.TYPE_21__* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %129
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %145, %struct.TYPE_21__** %6, align 8
  %146 = call i64 @vi(%struct.TYPE_21__** %6)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %134
  store i32 1, i32* %3, align 4
  br label %167

149:                                              ; preds = %134
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = call i64 @ex_init(%struct.TYPE_21__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 1, i32* %3, align 4
  br label %167

154:                                              ; preds = %149
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %156 = call i32 @ex_puts(%struct.TYPE_21__* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %166

157:                                              ; preds = %129
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %159 = load i32, i32* @SC_EX, align 4
  %160 = load i32, i32* @SC_SCR_EX, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @F_CLR(%struct.TYPE_21__* %158, i32 %161)
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %164 = load i32, i32* @SC_VI, align 4
  %165 = call i32 @F_SET(%struct.TYPE_21__* %163, i32 %164)
  br label %166

166:                                              ; preds = %157, %154
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %153, %148, %16
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @O_ISSET(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @msgq(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @FL_ISSET(i32, i32) #1

declare dso_local i32 @nonblank(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @F_SET(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @CHAR2INT(%struct.TYPE_21__*, i8*, i64, i32*, i64) #1

declare dso_local i32 @v_event_push(%struct.TYPE_21__*, i32*, i32*, i64, i32) #1

declare dso_local i32 @O_SET(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @vi(%struct.TYPE_21__**) #1

declare dso_local i64 @ex_init(%struct.TYPE_21__*) #1

declare dso_local i32 @ex_puts(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @F_CLR(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
