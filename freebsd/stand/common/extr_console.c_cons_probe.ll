; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_console.c_cons_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_console.c_cons_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i32 (i32)*, i32 (%struct.TYPE_4__*)* }

@.str = private unnamed_addr constant [16 x i8] c"twiddle_divisor\00", align 1
@EV_VOLATILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@twiddle_set = common dso_local global i32 0, align 4
@env_nounset = common dso_local global i32 0, align 4
@consoles = common dso_local global %struct.TYPE_4__** null, align 8
@C_PRESENTIN = common dso_local global i32 0, align 4
@C_PRESENTOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@C_ACTIVEIN = common dso_local global i32 0, align 4
@C_ACTIVEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Consoles: \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s  \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cons_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cons_probe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @EV_VOLATILE, align 4
  %5 = load i32, i32* @twiddle_set, align 4
  %6 = load i32, i32* @env_nounset, align 4
  %7 = call i32 @env_setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %5, i32 %6)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %35, %0
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %9, i64 %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %8
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %27, align 8
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 %28(%struct.TYPE_4__* %33)
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %8

38:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %85, %38
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %47, -1
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi i1 [ false, %39 ], [ %48, %46 ]
  br i1 %50, label %51, label %88

51:                                               ; preds = %49
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %58, i64 %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %63, align 8
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 %64(%struct.TYPE_4__* %69)
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %71, i64 %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @C_PRESENTIN, align 4
  %79 = load i32, i32* @C_PRESENTOUT, align 4
  %80 = or i32 %78, %79
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %51
  %83 = load i32, i32* %1, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %51
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %39

88:                                               ; preds = %49
  %89 = load i32, i32* %2, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %88
  %93 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %93, i8** %3, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i8*, i8** %3, align 8
  %98 = call i8* @strdup(i8* %97)
  store i8* %98, i8** %3, align 8
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i8*, i8** %3, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = call i32 @unsetenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 @cons_change(i8* %104)
  br label %134

106:                                              ; preds = %99
  %107 = load i32, i32* @C_ACTIVEIN, align 4
  %108 = load i32, i32* @C_ACTIVEOUT, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %110, i64 %112
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %109
  store i32 %117, i32* %115, align 8
  %118 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %119 = load i32, i32* %2, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %118, i64 %120
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i32 (i32)*, i32 (i32)** %123, align 8
  %125 = call i32 %124(i32 0)
  %126 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %127 = load i32, i32* %2, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %126, i64 %128
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @strdup(i8* %132)
  store i8* %133, i8** %3, align 8
  br label %134

134:                                              ; preds = %106, %102
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %136

136:                                              ; preds = %166, %134
  %137 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %138 = load i32, i32* %1, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %137, i64 %139
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = icmp ne %struct.TYPE_4__* %141, null
  br i1 %142, label %143, label %169

143:                                              ; preds = %136
  %144 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %145 = load i32, i32* %1, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %144, i64 %146
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @C_ACTIVEIN, align 4
  %152 = load i32, i32* @C_ACTIVEOUT, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %150, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %143
  %157 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @consoles, align 8
  %158 = load i32, i32* %1, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %157, i64 %159
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %156, %143
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %1, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %1, align 4
  br label %136

169:                                              ; preds = %136
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %171 = load i8*, i8** %3, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %181

173:                                              ; preds = %169
  %174 = load i32, i32* @EV_VOLATILE, align 4
  %175 = load i8*, i8** %3, align 8
  %176 = load i32, i32* @cons_set, align 4
  %177 = load i32, i32* @env_nounset, align 4
  %178 = call i32 @env_setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %174, i8* %175, i32 %176, i32 %177)
  %179 = load i8*, i8** %3, align 8
  %180 = call i32 @free(i8* %179)
  br label %181

181:                                              ; preds = %173, %169
  ret void
}

declare dso_local i32 @env_setenv(i8*, i32, i8*, i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @cons_change(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
