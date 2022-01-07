; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_db_trace.c_db_stack_trace_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_db_trace.c_db_stack_trace_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i32, i32*, i32 }

@DB_STGY_ANY = common dso_local global i32 0, align 4
@C_DB_SYM_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s() at \00", align 1
@DB_STGY_PROC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\09 pc = 0x%08x  lr = 0x%08x (\00", align 1
@LR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"\09 sp = 0x%08x  fp = 0x%08x\00", align 1
@SP = common dso_local global i64 0, align 8
@FP = common dso_local global i64 0, align 8
@PC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%s%sr%d = 0x%08x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VM_MIN_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Unable to unwind into user mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Unwind failure (no registers changed)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unwind_state*)* @db_stack_trace_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_stack_trace_cmd(%struct.unwind_state* %0) #0 {
  %2 = alloca %struct.unwind_state*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.unwind_state* %0, %struct.unwind_state** %2, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %151, %1
  %13 = load i32, i32* %11, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %152

16:                                               ; preds = %12
  %17 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %18 = call i32 @unwind_stack_one(%struct.unwind_state* %17, i32 1)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %20 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DB_STGY_ANY, align 4
  %23 = call i64 @db_search_symbol(i32 %21, i32 %22, i64* %5)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @C_DB_SYM_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %31

28:                                               ; preds = %16
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @db_symbol_values(i64 %29, i8** %3, i64* %4)
  br label %31

31:                                               ; preds = %28, %27
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %35 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DB_STGY_PROC, align 4
  %38 = call i32 @db_printsym(i32 %36, i32 %37)
  %39 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %41 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %44 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @LR, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %48)
  %50 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %51 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @LR, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DB_STGY_PROC, align 4
  %57 = call i32 @db_printsym(i32 %55, i32 %56)
  %58 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %60 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @SP, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %66 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @FP, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %64, i32 %70)
  %72 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %73 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* @SP, align 8
  %76 = trunc i64 %75 to i32
  %77 = shl i32 1, %76
  %78 = load i64, i64* @FP, align 8
  %79 = trunc i64 %78 to i32
  %80 = shl i32 1, %79
  %81 = or i32 %77, %80
  %82 = load i64, i64* @LR, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 1, %83
  %85 = or i32 %81, %84
  %86 = load i32, i32* @PC, align 4
  %87 = shl i32 1, %86
  %88 = or i32 %85, %87
  %89 = xor i32 %88, -1
  %90 = and i32 %74, %89
  store i32 %90, i32* %10, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %121, %31
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %126

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 10
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %106 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %99, i8* %103, i32 %104, i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %118

117:                                              ; preds = %98
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %8, align 4
  br label %119

118:                                              ; preds = %98
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %119

119:                                              ; preds = %118, %117
  br label %120

120:                                              ; preds = %119, %94
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %10, align 4
  %123 = ashr i32 %122, 1
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %91

126:                                              ; preds = %91
  %127 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %152

131:                                              ; preds = %126
  %132 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %133 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @PC, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %151

143:                                              ; preds = %131
  %144 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %145 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %150

150:                                              ; preds = %148, %143
  br label %151

151:                                              ; preds = %150, %141
  br label %12

152:                                              ; preds = %130, %12
  ret void
}

declare dso_local i32 @unwind_stack_one(%struct.unwind_state*, i32) #1

declare dso_local i64 @db_search_symbol(i32, i32, i64*) #1

declare dso_local i32 @db_symbol_values(i64, i8**, i64*) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_printsym(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
