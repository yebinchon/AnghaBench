; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_db_nextframe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_db_nextframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_frame = type { i32, i32 }
%struct.thread = type { i32 }
%struct.trapframe = type { i64, i64, i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@DB_STGY_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"calltrap\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fork_trampoline\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"mchk_calltrap\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"nmi_calltrap\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Xdblfault\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Xatpic_intr\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Xapic_isr\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Xxen_intr_upcall\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Xtimerint\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Xipi_intr_bitmap_handler\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Xcpustop\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Xcpususpend\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Xrendezvous\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Xfast_syscall\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Xfast_syscall_pti\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"fast_syscall_common\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"--- trap %#r\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"--- syscall\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"--- interrupt\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"The moon has moved again.\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c", rip = %#lr, rsp = %#lr, rbp = %#lr ---\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd64_frame**, i64*, %struct.thread*)* @db_nextframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_nextframe(%struct.amd64_frame** %0, i64* %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.amd64_frame**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.amd64_frame** %0, %struct.amd64_frame*** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.thread* %2, %struct.thread** %6, align 8
  %15 = load %struct.amd64_frame**, %struct.amd64_frame*** %4, align 8
  %16 = load %struct.amd64_frame*, %struct.amd64_frame** %15, align 8
  %17 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %16, i32 0, i32 1
  %18 = ptrtoint i32* %17 to i64
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i64 @db_get_value(i64 %18, i32 8, i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.amd64_frame**, %struct.amd64_frame*** %4, align 8
  %22 = load %struct.amd64_frame*, %struct.amd64_frame** %21, align 8
  %23 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %22, i32 0, i32 0
  %24 = ptrtoint i32* %23 to i64
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i64 @db_get_value(i64 %24, i32 8, i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i32, i32* @NORMAL, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i64, i64* %9, align 8
  %29 = sub nsw i64 %28, 1
  %30 = load i32, i32* @DB_STGY_ANY, align 4
  %31 = call i32 @db_search_symbol(i64 %29, i32 %30, i32* %12)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @db_symbol_values(i32 %32, i8** %14, i32* null)
  %34 = load i8*, i8** %14, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %106

36:                                               ; preds = %3
  %37 = load i8*, i8** %14, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %14, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %14, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %14, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %14, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %48, %44, %40, %36
  store i32 128, i32* %8, align 4
  br label %105

57:                                               ; preds = %52
  %58 = load i8*, i8** %14, align 8
  %59 = call i64 @strncmp(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %89, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %14, align 8
  %63 = call i64 @strncmp(i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %89, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %14, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %14, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %14, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %14, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %14, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %14, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %81, %77, %73, %69, %65, %61, %57
  store i32 130, i32* %8, align 4
  br label %104

90:                                               ; preds = %85
  %91 = load i8*, i8** %14, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %14, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %14, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98, %94, %90
  store i32 129, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %98
  br label %104

104:                                              ; preds = %103, %89
  br label %105

105:                                              ; preds = %104, %56
  br label %106

106:                                              ; preds = %105, %3
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @NORMAL, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i64, i64* %9, align 8
  %112 = load i64*, i64** %5, align 8
  store i64 %111, i64* %112, align 8
  %113 = load i64, i64* %11, align 8
  %114 = inttoptr i64 %113 to %struct.amd64_frame*
  %115 = load %struct.amd64_frame**, %struct.amd64_frame*** %4, align 8
  store %struct.amd64_frame* %114, %struct.amd64_frame** %115, align 8
  br label %170

116:                                              ; preds = %106
  %117 = load i8*, i8** %14, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.amd64_frame**, %struct.amd64_frame*** %4, align 8
  %120 = load %struct.amd64_frame*, %struct.amd64_frame** %119, align 8
  %121 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %120, i32 0, i32 0
  %122 = call i32 @db_print_stack_entry(i8* %117, i64 %118, i32* %121)
  %123 = load %struct.amd64_frame**, %struct.amd64_frame*** %4, align 8
  %124 = load %struct.amd64_frame*, %struct.amd64_frame** %123, align 8
  %125 = ptrtoint %struct.amd64_frame* %124 to i64
  %126 = add nsw i64 %125, 16
  %127 = inttoptr i64 %126 to %struct.trapframe*
  store %struct.trapframe* %127, %struct.trapframe** %7, align 8
  %128 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %129 = ptrtoint %struct.trapframe* %128 to i64
  %130 = call i64 @INKERNEL(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %164

132:                                              ; preds = %116
  %133 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %134 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %10, align 8
  %136 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %137 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %9, align 8
  %139 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %140 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %11, align 8
  %142 = load i32, i32* %8, align 4
  switch i32 %142, label %157 [
    i32 128, label %143
    i32 129, label %148
    i32 130, label %155
  ]

143:                                              ; preds = %132
  %144 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %145 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %146)
  br label %159

148:                                              ; preds = %132
  %149 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %150 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %151 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.thread*, %struct.thread** %6, align 8
  %154 = call i32 @decode_syscall(i32 %152, %struct.thread* %153)
  br label %159

155:                                              ; preds = %132
  %156 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %159

157:                                              ; preds = %132
  %158 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %155, %148, %143
  %160 = load i64, i64* %9, align 8
  %161 = load i64, i64* %10, align 8
  %162 = load i64, i64* %11, align 8
  %163 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i64 %160, i64 %161, i64 %162)
  br label %164

164:                                              ; preds = %159, %116
  %165 = load i64, i64* %9, align 8
  %166 = load i64*, i64** %5, align 8
  store i64 %165, i64* %166, align 8
  %167 = load i64, i64* %11, align 8
  %168 = inttoptr i64 %167 to %struct.amd64_frame*
  %169 = load %struct.amd64_frame**, %struct.amd64_frame*** %4, align 8
  store %struct.amd64_frame* %168, %struct.amd64_frame** %169, align 8
  br label %170

170:                                              ; preds = %164, %110
  ret void
}

declare dso_local i64 @db_get_value(i64, i32, i32) #1

declare dso_local i32 @db_search_symbol(i64, i32, i32*) #1

declare dso_local i32 @db_symbol_values(i32, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @db_print_stack_entry(i8*, i64, i32*) #1

declare dso_local i64 @INKERNEL(i64) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @decode_syscall(i32, %struct.thread*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
