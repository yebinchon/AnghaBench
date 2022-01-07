; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, double }

@ASSIGN = common dso_local global i32 0, align 4
@FLD = common dso_local global i32 0, align 4
@REC = common dso_local global i32 0, align 4
@nfloc = common dso_local global %struct.TYPE_13__* null, align 8
@STR = common dso_local global i32 0, align 4
@NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"read value of\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"division by zero in /=\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"division by zero in %%=\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"illegal assignment operator %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @assign(i32** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32**, i32*** %4, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 1
  %13 = load i32*, i32** %12, align 8
  %14 = call %struct.TYPE_13__* @execute(i32* %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %7, align 8
  %15 = load i32**, i32*** %4, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = call %struct.TYPE_13__* @execute(i32* %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ASSIGN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = icmp eq %struct.TYPE_13__* %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FLD, align 4
  %31 = load i32, i32* @REC, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** @nfloc, align 8
  %38 = icmp ne %struct.TYPE_13__* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %90

40:                                               ; preds = %35, %26, %22
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @STR, align 4
  %45 = load i32, i32* @NUM, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = load i32, i32* @STR, align 4
  %49 = load i32, i32* @NUM, align 4
  %50 = or i32 %48, %49
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %40
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = call i32 @getsval(%struct.TYPE_13__* %54)
  %56 = call i32 @setsval(%struct.TYPE_13__* %53, i32 %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = call double @getfval(%struct.TYPE_13__* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  store double %58, double* %60, align 8
  %61 = load i32, i32* @NUM, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %89

66:                                               ; preds = %40
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = call i64 @isstr(%struct.TYPE_13__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = call i32 @getsval(%struct.TYPE_13__* %72)
  %74 = call i32 @setsval(%struct.TYPE_13__* %71, i32 %73)
  br label %88

75:                                               ; preds = %66
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = call i64 @isnum(%struct.TYPE_13__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = call double @getfval(%struct.TYPE_13__* %81)
  %83 = call i32 @setfval(%struct.TYPE_13__* %80, double %82)
  br label %87

84:                                               ; preds = %75
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = call i32 @funnyvar(%struct.TYPE_13__* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %70
  br label %89

89:                                               ; preds = %88, %52
  br label %90

90:                                               ; preds = %89, %39
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = call i32 @tempfree(%struct.TYPE_13__* %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %3, align 8
  br label %164

94:                                               ; preds = %2
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %96 = call double @getfval(%struct.TYPE_13__* %95)
  store double %96, double* %8, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = call double @getfval(%struct.TYPE_13__* %97)
  store double %98, double* %9, align 8
  %99 = load i32, i32* %5, align 4
  switch i32 %99, label %154 [
    i32 133, label %100
    i32 128, label %104
    i32 130, label %108
    i32 132, label %112
    i32 131, label %121
    i32 129, label %136
  ]

100:                                              ; preds = %94
  %101 = load double, double* %9, align 8
  %102 = load double, double* %8, align 8
  %103 = fadd double %102, %101
  store double %103, double* %8, align 8
  br label %157

104:                                              ; preds = %94
  %105 = load double, double* %9, align 8
  %106 = load double, double* %8, align 8
  %107 = fsub double %106, %105
  store double %107, double* %8, align 8
  br label %157

108:                                              ; preds = %94
  %109 = load double, double* %9, align 8
  %110 = load double, double* %8, align 8
  %111 = fmul double %110, %109
  store double %111, double* %8, align 8
  br label %157

112:                                              ; preds = %94
  %113 = load double, double* %9, align 8
  %114 = fcmp oeq double %113, 0.000000e+00
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  %118 = load double, double* %9, align 8
  %119 = load double, double* %8, align 8
  %120 = fdiv double %119, %118
  store double %120, double* %8, align 8
  br label %157

121:                                              ; preds = %94
  %122 = load double, double* %9, align 8
  %123 = fcmp oeq double %122, 0.000000e+00
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %121
  %127 = load double, double* %8, align 8
  %128 = load double, double* %9, align 8
  %129 = fdiv double %127, %128
  %130 = call double @modf(double %129, double* %10) #3
  %131 = load double, double* %8, align 8
  %132 = load double, double* %9, align 8
  %133 = load double, double* %10, align 8
  %134 = fmul double %132, %133
  %135 = fsub double %131, %134
  store double %135, double* %8, align 8
  br label %157

136:                                              ; preds = %94
  %137 = load double, double* %9, align 8
  %138 = fcmp oge double %137, 0.000000e+00
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load double, double* %9, align 8
  %141 = call double @modf(double %140, double* %10) #3
  %142 = fcmp oeq double %141, 0.000000e+00
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load double, double* %8, align 8
  %145 = load double, double* %9, align 8
  %146 = fptosi double %145 to i32
  %147 = call double @ipow(double %144, i32 %146)
  store double %147, double* %8, align 8
  br label %153

148:                                              ; preds = %139, %136
  %149 = load double, double* %8, align 8
  %150 = load double, double* %9, align 8
  %151 = call i32 @pow(double %149, double %150)
  %152 = call double @errcheck(i32 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store double %152, double* %8, align 8
  br label %153

153:                                              ; preds = %148, %143
  br label %157

154:                                              ; preds = %94
  %155 = load i32, i32* %5, align 4
  %156 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %154, %153, %126, %117, %108, %104, %100
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %159 = call i32 @tempfree(%struct.TYPE_13__* %158)
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %161 = load double, double* %8, align 8
  %162 = call i32 @setfval(%struct.TYPE_13__* %160, double %161)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %163, %struct.TYPE_13__** %3, align 8
  br label %164

164:                                              ; preds = %157, %90
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %165
}

declare dso_local %struct.TYPE_13__* @execute(i32*) #1

declare dso_local i32 @setsval(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @getsval(%struct.TYPE_13__*) #1

declare dso_local double @getfval(%struct.TYPE_13__*) #1

declare dso_local i64 @isstr(%struct.TYPE_13__*) #1

declare dso_local i64 @isnum(%struct.TYPE_13__*) #1

declare dso_local i32 @setfval(%struct.TYPE_13__*, double) #1

declare dso_local i32 @funnyvar(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @tempfree(%struct.TYPE_13__*) #1

declare dso_local i32 @FATAL(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #2

declare dso_local double @ipow(double, i32) #1

declare dso_local double @errcheck(i32, i8*) #1

declare dso_local i32 @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
