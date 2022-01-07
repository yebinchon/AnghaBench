; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_ps.c_dumpthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_ps.c_dumpthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.thread = type { i32, i32, i8*, i8*, i32, i8*, %struct.TYPE_2__*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%6d                  \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Run\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"RunQ\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CanRun\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Inactv\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@TDF_SINTR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" %-6.6s \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"CPU %d\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"%c%-7.7s \00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%18s  \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"%p  \00", align 1
@P_SYSTEM = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@ps_mode = common dso_local global i64 0, align 8
@PRINT_ARGS = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, %struct.thread*, i32)* @dumpthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpthread(%struct.proc* %0, %struct.thread* %1, i32 %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [9 x i8], align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %93

13:                                               ; preds = %3
  %14 = load %struct.thread*, %struct.thread** %5, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 9
  %16 = load volatile i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.thread*, %struct.thread** %5, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load volatile i32, i32* %19, align 8
  switch i32 %20, label %87 [
    i32 129, label %21
    i32 128, label %24
    i32 132, label %27
    i32 131, label %30
    i32 130, label %33
  ]

21:                                               ; preds = %13
  %22 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %22, i32 9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %90

24:                                               ; preds = %13
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %26 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %25, i32 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %90

27:                                               ; preds = %13
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %29 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %28, i32 9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %90

30:                                               ; preds = %13
  %31 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %90

33:                                               ; preds = %13
  %34 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %34, align 1
  %35 = load %struct.thread*, %struct.thread** %5, align 8
  %36 = call i64 @TD_ON_LOCK(%struct.thread* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %40 = call i32 @strlcat(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 9)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.thread*, %struct.thread** %5, align 8
  %43 = call i32 @TD_IS_SLEEPING(%struct.thread* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.thread*, %struct.thread** %5, align 8
  %47 = getelementptr inbounds %struct.thread, %struct.thread* %46, i32 0, i32 1
  %48 = load volatile i32, i32* %47, align 4
  %49 = load i32, i32* @TDF_SINTR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %54 = call i32 @strlcat(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 9)
  br label %58

55:                                               ; preds = %45
  %56 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %57 = call i32 @strlcat(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 9)
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.thread*, %struct.thread** %5, align 8
  %61 = call i32 @TD_IS_SWAPPED(%struct.thread* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %65 = call i32 @strlcat(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 9)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load %struct.thread*, %struct.thread** %5, align 8
  %68 = call i32 @TD_AWAITING_INTR(%struct.thread* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %72 = call i32 @strlcat(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 9)
  br label %73

73:                                               ; preds = %70, %66
  %74 = load %struct.thread*, %struct.thread** %5, align 8
  %75 = call i32 @TD_IS_SUSPENDED(%struct.thread* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %79 = call i32 @strlcat(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 9)
  br label %80

80:                                               ; preds = %77, %73
  %81 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %90

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %13, %86
  %88 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %89 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %88, i32 9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %85, %30, %27, %24, %21
  %91 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %92 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %90, %3
  store i8 32, i8* %8, align 1
  %94 = load %struct.thread*, %struct.thread** %5, align 8
  %95 = call i64 @TD_ON_LOCK(%struct.thread* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  store i8 42, i8* %8, align 1
  %98 = load %struct.thread*, %struct.thread** %5, align 8
  %99 = getelementptr inbounds %struct.thread, %struct.thread* %98, i32 0, i32 2
  %100 = load volatile i8*, i8** %99, align 8
  store i8* %100, i8** %9, align 8
  %101 = load %struct.thread*, %struct.thread** %5, align 8
  %102 = getelementptr inbounds %struct.thread, %struct.thread* %101, i32 0, i32 8
  %103 = load volatile i8*, i8** %102, align 8
  store i8* %103, i8** %10, align 8
  br label %129

104:                                              ; preds = %93
  %105 = load %struct.thread*, %struct.thread** %5, align 8
  %106 = call i64 @TD_ON_SLEEPQ(%struct.thread* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load %struct.thread*, %struct.thread** %5, align 8
  %110 = getelementptr inbounds %struct.thread, %struct.thread* %109, i32 0, i32 3
  %111 = load volatile i8*, i8** %110, align 8
  store i8* %111, i8** %9, align 8
  %112 = load %struct.thread*, %struct.thread** %5, align 8
  %113 = getelementptr inbounds %struct.thread, %struct.thread* %112, i32 0, i32 7
  %114 = load volatile i8*, i8** %113, align 8
  store i8* %114, i8** %10, align 8
  br label %128

115:                                              ; preds = %104
  %116 = load %struct.thread*, %struct.thread** %5, align 8
  %117 = call i64 @TD_IS_RUNNING(%struct.thread* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %121 = load %struct.thread*, %struct.thread** %5, align 8
  %122 = getelementptr inbounds %struct.thread, %struct.thread* %121, i32 0, i32 4
  %123 = load volatile i32, i32* %122, align 8
  %124 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %120, i32 9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %123)
  %125 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8* %125, i8** %9, align 8
  store i8* null, i8** %10, align 8
  br label %127

126:                                              ; preds = %115
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  store i8* null, i8** %10, align 8
  br label %127

127:                                              ; preds = %126, %119
  br label %128

128:                                              ; preds = %127, %108
  br label %129

129:                                              ; preds = %128, %97
  %130 = load i8, i8* %8, align 1
  %131 = sext i8 %130 to i32
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %131, i8* %132)
  %134 = load i8*, i8** %10, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  br label %141

138:                                              ; preds = %129
  %139 = load i8*, i8** %10, align 8
  %140 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %138, %136
  %142 = load %struct.proc*, %struct.proc** %4, align 8
  %143 = getelementptr inbounds %struct.proc, %struct.proc* %142, i32 0, i32 0
  %144 = load volatile i32, i32* %143, align 4
  %145 = load i32, i32* @P_SYSTEM, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %141
  %151 = load %struct.thread*, %struct.thread** %5, align 8
  %152 = getelementptr inbounds %struct.thread, %struct.thread* %151, i32 0, i32 5
  %153 = load volatile i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %150
  %159 = load %struct.thread*, %struct.thread** %5, align 8
  %160 = getelementptr inbounds %struct.thread, %struct.thread* %159, i32 0, i32 5
  %161 = load volatile i8*, i8** %160, align 8
  %162 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %161)
  br label %170

163:                                              ; preds = %150
  %164 = load %struct.thread*, %struct.thread** %5, align 8
  %165 = getelementptr inbounds %struct.thread, %struct.thread* %164, i32 0, i32 6
  %166 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %163, %158
  %171 = load %struct.proc*, %struct.proc** %4, align 8
  %172 = getelementptr inbounds %struct.proc, %struct.proc* %171, i32 0, i32 0
  %173 = load volatile i32, i32* %172, align 4
  %174 = load i32, i32* @P_SYSTEM, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %170
  %180 = load i64, i64* @ps_mode, align 8
  %181 = load i64, i64* @PRINT_ARGS, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = load i32, i32* %6, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %188 = load %struct.proc*, %struct.proc** %4, align 8
  %189 = call i32 @dump_args(%struct.proc* %188)
  br label %190

190:                                              ; preds = %186, %183, %179
  %191 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  ret void
}

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @TD_ON_LOCK(%struct.thread*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @TD_IS_SLEEPING(%struct.thread*) #1

declare dso_local i32 @TD_IS_SWAPPED(%struct.thread*) #1

declare dso_local i32 @TD_AWAITING_INTR(%struct.thread*) #1

declare dso_local i32 @TD_IS_SUSPENDED(%struct.thread*) #1

declare dso_local i64 @TD_ON_SLEEPQ(%struct.thread*) #1

declare dso_local i64 @TD_IS_RUNNING(%struct.thread*) #1

declare dso_local i32 @dump_args(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
