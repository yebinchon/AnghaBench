; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ex.c_v_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ex.c_v_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_24__, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i64 }
%struct.TYPE_29__ = type { i64, i32, i64 }
%struct.TYPE_25__ = type { i32, i64 }

@VC_ISDOT = common dso_local global i32 0, align 4
@C_BANG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@TXT_BS = common dso_local global i32 0, align 4
@TXT_CR = common dso_local global i32 0, align 4
@TXT_ESCAPE = common dso_local global i32 0, align 4
@TXT_FILEC = common dso_local global i32 0, align 4
@TXT_PROMPT = common dso_local global i32 0, align 4
@TERM_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_filter(%struct.TYPE_30__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_31__, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %8 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %9 = load i32, i32* @VC_ISDOT, align 4
  %10 = call i64 @F_ISSET(%struct.TYPE_28__* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ISCMD(i32 %15, i8 signext 78)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ISCMD(i32 %21, i8 signext 110)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %18, %12, %2
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %26 = load i32, i32* @C_BANG, align 4
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ex_cinit(%struct.TYPE_30__* %25, %struct.TYPE_31__* %6, i32 %26, i32 2, i32 %30, i32 %34, i32 0)
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %37 = call %struct.TYPE_25__* @EXP(%struct.TYPE_30__* %36)
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %40 = call i64 @L(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = call i64 @argv_exp1(%struct.TYPE_30__* %39, %struct.TYPE_31__* %6, i64 %40, i32 1, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %139

44:                                               ; preds = %24
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %46 = call %struct.TYPE_25__* @EXP(%struct.TYPE_30__* %45)
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %51 = call %struct.TYPE_25__* @EXP(%struct.TYPE_30__* %50)
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %57 = call i32 @v_exec_ex(%struct.TYPE_30__* %55, %struct.TYPE_28__* %56, %struct.TYPE_31__* %6)
  store i32 %57, i32* %3, align 4
  br label %139

58:                                               ; preds = %18
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %61 = load i32, i32* @TXT_BS, align 4
  %62 = load i32, i32* @TXT_CR, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @TXT_ESCAPE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @TXT_FILEC, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @TXT_PROMPT, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @v_tcmd(%struct.TYPE_30__* %59, %struct.TYPE_28__* %60, i8 signext 33, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %139

73:                                               ; preds = %58
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_29__* @TAILQ_FIRST(i32 %76)
  store %struct.TYPE_29__* %77, %struct.TYPE_29__** %7, align 8
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TERM_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %73
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  store i32 0, i32* %3, align 4
  br label %139

96:                                               ; preds = %73
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %98 = call i32 @vs_home(%struct.TYPE_30__* %97)
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %100 = load i32, i32* @C_BANG, align 4
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ex_cinit(%struct.TYPE_30__* %99, %struct.TYPE_31__* %6, i32 %100, i32 2, i32 %104, i32 %108, i32 0)
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %111 = call %struct.TYPE_25__* @EXP(%struct.TYPE_30__* %110)
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 1
  %122 = call i64 @argv_exp1(%struct.TYPE_30__* %113, %struct.TYPE_31__* %6, i64 %117, i32 %121, i32 1)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %96
  store i32 1, i32* %3, align 4
  br label %139

125:                                              ; preds = %96
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %127 = call %struct.TYPE_25__* @EXP(%struct.TYPE_30__* %126)
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 1
  store i64 %129, i64* %130, align 8
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %132 = call %struct.TYPE_25__* @EXP(%struct.TYPE_30__* %131)
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  store i32 %134, i32* %135, align 8
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %138 = call i32 @v_exec_ex(%struct.TYPE_30__* %136, %struct.TYPE_28__* %137, %struct.TYPE_31__* %6)
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %125, %124, %83, %72, %44, %43
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @F_ISSET(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @ISCMD(i32, i8 signext) #1

declare dso_local i32 @ex_cinit(%struct.TYPE_30__*, %struct.TYPE_31__*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_25__* @EXP(%struct.TYPE_30__*) #1

declare dso_local i64 @argv_exp1(%struct.TYPE_30__*, %struct.TYPE_31__*, i64, i32, i32) #1

declare dso_local i64 @L(i8*) #1

declare dso_local i32 @v_exec_ex(%struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_31__*) #1

declare dso_local i64 @v_tcmd(%struct.TYPE_30__*, %struct.TYPE_28__*, i8 signext, i32) #1

declare dso_local %struct.TYPE_29__* @TAILQ_FIRST(i32) #1

declare dso_local i32 @vs_home(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
