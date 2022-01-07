; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_db_backtrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_db_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.trapframe = type { i32, i64 }
%struct.amd64_frame = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@db_pager_quit = common dso_local global i32 0, align 4
@DB_STGY_ANY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@C_DB_SYM_NULL = common dso_local global i64 0, align 8
@DB_STGY_PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fork_trampoline\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.trapframe*, %struct.amd64_frame*, i64, i64, i32)* @db_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_backtrace(%struct.thread* %0, %struct.trapframe* %1, %struct.amd64_frame* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.trapframe*, align 8
  %9 = alloca %struct.amd64_frame*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.amd64_frame*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.trapframe* %1, %struct.trapframe** %8, align 8
  store %struct.amd64_frame* %2, %struct.amd64_frame** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 1024, i32* %12, align 4
  br label %22

22:                                               ; preds = %21, %6
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %17, align 8
  br label %24

24:                                               ; preds = %186, %152, %65, %22
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %12, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @db_pager_quit, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %187

34:                                               ; preds = %32
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* @DB_STGY_ANY, align 4
  %37 = call i64 @db_search_symbol(i64 %35, i32 %36, i64* %15)
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %16, align 8
  %39 = call i32 @db_symbol_values(i64 %38, i8** %14, i32* null)
  %40 = load %struct.amd64_frame*, %struct.amd64_frame** %9, align 8
  store %struct.amd64_frame* %40, %struct.amd64_frame** %13, align 8
  %41 = load i64, i64* %17, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %144

43:                                               ; preds = %34
  %44 = load i64, i64* @FALSE, align 8
  store i64 %44, i64* %17, align 8
  %45 = load i64, i64* %16, align 8
  %46 = load i64, i64* @C_DB_SYM_NULL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load i8*, i8** %14, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @db_print_stack_entry(i8* %52, i64 %53, %struct.amd64_frame* null)
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @FALSE, align 8
  %57 = call i8* @db_get_value(i64 %55, i32 8, i64 %56)
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* @DB_STGY_PROC, align 4
  %61 = call i64 @db_search_symbol(i64 %59, i32 %60, i64* %15)
  %62 = load i64, i64* @C_DB_SYM_NULL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %187

65:                                               ; preds = %51
  br label %24

66:                                               ; preds = %48, %43
  %67 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %68 = icmp ne %struct.trapframe* %67, null
  br i1 %68, label %69, label %129

69:                                               ; preds = %66
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @FALSE, align 8
  %72 = call i8* @db_get_value(i64 %70, i32 4, i64 %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp eq i32 %74, -443987883
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %78 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 8
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = bitcast i8* %82 to %struct.amd64_frame*
  store %struct.amd64_frame* %83, %struct.amd64_frame** %13, align 8
  br label %128

84:                                               ; preds = %69
  %85 = load i32, i32* %18, align 4
  %86 = and i32 %85, 16777215
  %87 = icmp eq i32 %86, 15042888
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %90 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = bitcast i8* %93 to %struct.amd64_frame*
  store %struct.amd64_frame* %94, %struct.amd64_frame** %13, align 8
  %95 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %96 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load %struct.amd64_frame*, %struct.amd64_frame** %13, align 8
  store %struct.amd64_frame* %100, %struct.amd64_frame** %9, align 8
  br label %101

101:                                              ; preds = %99, %88
  br label %127

102:                                              ; preds = %84
  %103 = load i32, i32* %18, align 4
  %104 = and i32 %103, 255
  %105 = icmp eq i32 %104, 195
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %108 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 8
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = bitcast i8* %112 to %struct.amd64_frame*
  store %struct.amd64_frame* %113, %struct.amd64_frame** %13, align 8
  br label %126

114:                                              ; preds = %102
  %115 = load i64, i64* %15, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %119 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 8
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = bitcast i8* %123 to %struct.amd64_frame*
  store %struct.amd64_frame* %124, %struct.amd64_frame** %13, align 8
  br label %125

125:                                              ; preds = %117, %114
  br label %126

126:                                              ; preds = %125, %106
  br label %127

127:                                              ; preds = %126, %101
  br label %128

128:                                              ; preds = %127, %76
  br label %142

129:                                              ; preds = %66
  %130 = load i8*, i8** %14, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load i8*, i8** %14, align 8
  %134 = call i64 @strcmp(i8* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i8*, i8** %14, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.amd64_frame*, %struct.amd64_frame** %13, align 8
  %140 = call i32 @db_print_stack_entry(i8* %137, i64 %138, %struct.amd64_frame* %139)
  br label %187

141:                                              ; preds = %132, %129
  br label %142

142:                                              ; preds = %141, %128
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143, %34
  %145 = load i8*, i8** %14, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load %struct.amd64_frame*, %struct.amd64_frame** %13, align 8
  %148 = call i32 @db_print_stack_entry(i8* %145, i64 %146, %struct.amd64_frame* %147)
  %149 = load %struct.amd64_frame*, %struct.amd64_frame** %13, align 8
  %150 = load %struct.amd64_frame*, %struct.amd64_frame** %9, align 8
  %151 = icmp ne %struct.amd64_frame* %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %144
  %153 = load %struct.amd64_frame*, %struct.amd64_frame** %13, align 8
  %154 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %153, i32 0, i32 0
  %155 = ptrtoint i32* %154 to i64
  %156 = load i64, i64* @FALSE, align 8
  %157 = call i8* @db_get_value(i64 %155, i32 8, i64 %156)
  %158 = ptrtoint i8* %157 to i64
  store i64 %158, i64* %10, align 8
  br label %24

159:                                              ; preds = %144
  %160 = load %struct.thread*, %struct.thread** %7, align 8
  %161 = call i32 @db_nextframe(%struct.amd64_frame** %9, i64* %10, %struct.thread* %160)
  %162 = load i64, i64* %10, align 8
  %163 = call i64 @INKERNEL(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %159
  %166 = load %struct.amd64_frame*, %struct.amd64_frame** %9, align 8
  %167 = ptrtoint %struct.amd64_frame* %166 to i64
  %168 = call i64 @INKERNEL(i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %165
  %171 = load i64, i64* %10, align 8
  %172 = load i32, i32* @DB_STGY_ANY, align 4
  %173 = call i64 @db_search_symbol(i64 %171, i32 %172, i64* %15)
  store i64 %173, i64* %16, align 8
  %174 = load i64, i64* %16, align 8
  %175 = call i32 @db_symbol_values(i64 %174, i8** %14, i32* null)
  %176 = load i8*, i8** %14, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load %struct.amd64_frame*, %struct.amd64_frame** %9, align 8
  %179 = call i32 @db_print_stack_entry(i8* %176, i64 %177, %struct.amd64_frame* %178)
  br label %187

180:                                              ; preds = %165, %159
  %181 = load %struct.amd64_frame*, %struct.amd64_frame** %9, align 8
  %182 = ptrtoint %struct.amd64_frame* %181 to i64
  %183 = call i64 @INKERNEL(i64 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %180
  br label %187

186:                                              ; preds = %180
  br label %24

187:                                              ; preds = %185, %170, %136, %64, %32
  ret i32 0
}

declare dso_local i64 @db_search_symbol(i64, i32, i64*) #1

declare dso_local i32 @db_symbol_values(i64, i8**, i32*) #1

declare dso_local i32 @db_print_stack_entry(i8*, i64, %struct.amd64_frame*) #1

declare dso_local i8* @db_get_value(i64, i32, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @db_nextframe(%struct.amd64_frame**, i64*, %struct.thread*) #1

declare dso_local i64 @INKERNEL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
