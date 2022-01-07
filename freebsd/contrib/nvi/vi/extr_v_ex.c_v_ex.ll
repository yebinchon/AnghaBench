; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ex.c_v_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ex.c_v_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32* }
%struct.TYPE_18__ = type { i64, i32, i32 }

@TXT_BS = common dso_local global i32 0, align 4
@TXT_CEDIT = common dso_local global i32 0, align 4
@TXT_FILEC = common dso_local global i32 0, align 4
@TXT_PROMPT = common dso_local global i32 0, align 4
@TERM_CEDIT = common dso_local global i64 0, align 8
@TERM_BS = common dso_local global i64 0, align 8
@TERM_OK = common dso_local global i64 0, align 8
@O_CEDIT = common dso_local global i32 0, align 4
@SC_SCR_EXWROTE = common dso_local global i32 0, align 4
@SC_EX_WAIT_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_ex(%struct.TYPE_19__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %112, %2
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @EXCMD_RUNNING(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %90, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @TXT_BS, align 4
  %22 = load i32, i32* @TXT_CEDIT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @TXT_FILEC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @TXT_PROMPT, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @v_tcmd(%struct.TYPE_19__* %19, i32* %20, i8 signext 58, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %142

31:                                               ; preds = %18
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_18__* @TAILQ_FIRST(i32 %34)
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %7, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TERM_CEDIT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %31
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %49 = call i64 @v_ecl_log(%struct.TYPE_19__* %47, %struct.TYPE_18__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %142

52:                                               ; preds = %46, %41
  store i32 1, i32* %8, align 4
  br label %117

53:                                               ; preds = %31
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TERM_BS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %117

60:                                               ; preds = %53
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TERM_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %117

67:                                               ; preds = %60
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = load i32, i32* @O_CEDIT, align 4
  %70 = call i32* @O_STR(%struct.TYPE_19__* %68, i32 %69)
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = call i64 @v_ecl_log(%struct.TYPE_19__* %73, %struct.TYPE_18__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %142

78:                                               ; preds = %72, %67
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @ex_run_str(%struct.TYPE_19__* %79, i32* null, i32 %82, i32 %85, i32 0, i32 1)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %142

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %14
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = call i32 @vs_home(%struct.TYPE_19__* %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %94 = load i32, i32* @SC_SCR_EXWROTE, align 4
  %95 = call i64 @F_ISSET(%struct.TYPE_19__* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 @putchar(i8 signext 10)
  br label %99

99:                                               ; preds = %97, %90
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = call i32 @ex_cmd(%struct.TYPE_19__* %100)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = call i32 @ex_fflush(%struct.TYPE_19__* %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = call i64 @vs_ex_resolve(%struct.TYPE_19__* %104, i32* %10)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  store i32 1, i32* %3, align 4
  br label %142

108:                                              ; preds = %99
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  br label %117

112:                                              ; preds = %108
  store i32 1, i32* %9, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %14

117:                                              ; preds = %111, %66, %59, %52
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %122 = load i32, i32* @SC_EX_WAIT_NO, align 4
  %123 = call i32 @F_SET(%struct.TYPE_19__* %121, i32 %122)
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %125 = call i64 @vs_ex_resolve(%struct.TYPE_19__* %124, i32* %10)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i32 1, i32* %3, align 4
  br label %142

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %117
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = call i64 @v_ex_done(%struct.TYPE_19__* %130, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 1, i32* %3, align 4
  br label %142

135:                                              ; preds = %129
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %140 = call i32 @v_ecl(%struct.TYPE_19__* %139)
  store i32 %140, i32* %3, align 4
  br label %142

141:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %138, %134, %127, %107, %88, %77, %51, %30
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @EXCMD_RUNNING(i32*) #1

declare dso_local i64 @v_tcmd(%struct.TYPE_19__*, i32*, i8 signext, i32) #1

declare dso_local %struct.TYPE_18__* @TAILQ_FIRST(i32) #1

declare dso_local i64 @v_ecl_log(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32* @O_STR(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ex_run_str(%struct.TYPE_19__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @vs_home(%struct.TYPE_19__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @ex_cmd(%struct.TYPE_19__*) #1

declare dso_local i32 @ex_fflush(%struct.TYPE_19__*) #1

declare dso_local i64 @vs_ex_resolve(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @F_SET(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @v_ex_done(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @v_ecl(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
