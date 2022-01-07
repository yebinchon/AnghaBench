; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_trace_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_trace_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtabs_and_lines = type { i32, %struct.symtab_and_line* }
%struct.symtab_and_line = type { i32 }
%struct.tracepoint = type { i8*, i64 }
%struct.symtab = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"trace command requires an argument\00", align 1
@info_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"TRACE %s\0A\00", align 1
@tracepoint_count = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Multiple tracepoints were set.\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Use 'delete trace' to delete unwanted tracepoints.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @trace_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.symtabs_and_lines, align 8
  %7 = alloca %struct.symtab_and_line, align 4
  %8 = alloca %struct.tracepoint*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.symtabs_and_lines, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8** null, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %2
  %20 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i64, i64* @info_verbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %24, %21
  %31 = load i8*, i8** %3, align 8
  store i8* %31, i8** %9, align 8
  %32 = call { i32, %struct.symtab_and_line* } @decode_line_1(i8** %3, i32 1, %struct.symtab* null, i32 0, i8*** %5, i32* null)
  %33 = bitcast %struct.symtabs_and_lines* %12 to { i32, %struct.symtab_and_line* }*
  %34 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %33, i32 0, i32 0
  %35 = extractvalue { i32, %struct.symtab_and_line* } %32, 0
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds { i32, %struct.symtab_and_line* }, { i32, %struct.symtab_and_line* }* %33, i32 0, i32 1
  %37 = extractvalue { i32, %struct.symtab_and_line* } %32, 1
  store %struct.symtab_and_line* %37, %struct.symtab_and_line** %36, align 8
  %38 = bitcast %struct.symtabs_and_lines* %6 to i8*
  %39 = bitcast %struct.symtabs_and_lines* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = load i8*, i8** %3, align 8
  store i8* %40, i8** %10, align 8
  %41 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %30
  br label %129

45:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %58, %45
  %47 = load i32, i32* %11, align 4
  %48 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 1
  %53 = load %struct.symtab_and_line*, %struct.symtab_and_line** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %53, i64 %55
  %57 = call i32 @resolve_sal_pc(%struct.symtab_and_line* %56)
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %46

61:                                               ; preds = %46
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %119, %61
  %63 = load i32, i32* %11, align 4
  %64 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %122

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 1
  %69 = load %struct.symtab_and_line*, %struct.symtab_and_line** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %69, i64 %71
  %73 = bitcast %struct.symtab_and_line* %7 to i8*
  %74 = bitcast %struct.symtab_and_line* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  %75 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.tracepoint* @set_raw_tracepoint(i32 %76)
  store %struct.tracepoint* %77, %struct.tracepoint** %8, align 8
  %78 = load i64, i64* @tracepoint_count, align 8
  %79 = add nsw i64 %78, 1
  %80 = call i32 @set_tracepoint_count(i64 %79)
  %81 = load i64, i64* @tracepoint_count, align 8
  %82 = load %struct.tracepoint*, %struct.tracepoint** %8, align 8
  %83 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = icmp ne i8** %84, null
  br i1 %85, label %86, label %101

86:                                               ; preds = %67
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load i8**, i8*** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.tracepoint*, %struct.tracepoint** %8, align 8
  %100 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %116

101:                                              ; preds = %86, %67
  %102 = load i8*, i8** %9, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i8*, i8** %9, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = call i8* @savestring(i8* %105, i32 %111)
  %113 = load %struct.tracepoint*, %struct.tracepoint** %8, align 8
  %114 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %104, %101
  br label %116

116:                                              ; preds = %115, %93
  %117 = load %struct.tracepoint*, %struct.tracepoint** %8, align 8
  %118 = call i32 @trace_mention(%struct.tracepoint* %117)
  br label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %62

122:                                              ; preds = %62
  %123 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %128 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %129

129:                                              ; preds = %44, %126, %122
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local { i32, %struct.symtab_and_line* } @decode_line_1(i8**, i32, %struct.symtab*, i32, i8***, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @resolve_sal_pc(%struct.symtab_and_line*) #1

declare dso_local %struct.tracepoint* @set_raw_tracepoint(i32) #1

declare dso_local i32 @set_tracepoint_count(i64) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @trace_mention(%struct.tracepoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
