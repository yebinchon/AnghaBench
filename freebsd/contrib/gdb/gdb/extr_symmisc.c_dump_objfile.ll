; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_dump_objfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_dump_objfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.objfile*, i32, %struct.objfile*, %struct.objfile*, %struct.objfile*, i32, %struct.objfile*, i32 }
%struct.symtab = type { %struct.symtab*, i32, %struct.symtab*, %struct.symtab*, %struct.symtab*, i32, %struct.symtab*, i32 }
%struct.partial_symtab = type { %struct.partial_symtab*, i32, %struct.partial_symtab*, %struct.partial_symtab*, %struct.partial_symtab*, i32, %struct.partial_symtab*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"\0AObject file %s:  \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Objfile at \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c", bfd at \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c", %d minsyms\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Psymtabs:\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s at \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"NOT ON CHAIN!  \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Symtabs:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @dump_objfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_objfile(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca %struct.symtab*, align 8
  %4 = alloca %struct.partial_symtab*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %5 = load %struct.objfile*, %struct.objfile** %2, align 8
  %6 = getelementptr inbounds %struct.objfile, %struct.objfile* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.objfile*, %struct.objfile** %2, align 8
  %11 = bitcast %struct.objfile* %10 to %struct.symtab*
  %12 = load i32, i32* @gdb_stdout, align 4
  %13 = call i32 @gdb_print_host_address(%struct.symtab* %11, i32 %12)
  %14 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %15 = load %struct.objfile*, %struct.objfile** %2, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 6
  %17 = load %struct.objfile*, %struct.objfile** %16, align 8
  %18 = bitcast %struct.objfile* %17 to %struct.symtab*
  %19 = load i32, i32* @gdb_stdout, align 4
  %20 = call i32 @gdb_print_host_address(%struct.symtab* %18, i32 %19)
  %21 = load %struct.objfile*, %struct.objfile** %2, align 8
  %22 = getelementptr inbounds %struct.objfile, %struct.objfile* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load %struct.objfile*, %struct.objfile** %2, align 8
  %26 = getelementptr inbounds %struct.objfile, %struct.objfile* %25, i32 0, i32 4
  %27 = load %struct.objfile*, %struct.objfile** %26, align 8
  %28 = icmp ne %struct.objfile* %27, null
  br i1 %28, label %29, label %64

29:                                               ; preds = %1
  %30 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.objfile*, %struct.objfile** %2, align 8
  %32 = getelementptr inbounds %struct.objfile, %struct.objfile* %31, i32 0, i32 4
  %33 = load %struct.objfile*, %struct.objfile** %32, align 8
  %34 = bitcast %struct.objfile* %33 to %struct.partial_symtab*
  store %struct.partial_symtab* %34, %struct.partial_symtab** %4, align 8
  br label %35

35:                                               ; preds = %58, %29
  %36 = load %struct.partial_symtab*, %struct.partial_symtab** %4, align 8
  %37 = icmp ne %struct.partial_symtab* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load %struct.partial_symtab*, %struct.partial_symtab** %4, align 8
  %40 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = load %struct.partial_symtab*, %struct.partial_symtab** %4, align 8
  %44 = bitcast %struct.partial_symtab* %43 to %struct.symtab*
  %45 = load i32, i32* @gdb_stdout, align 4
  %46 = call i32 @gdb_print_host_address(%struct.symtab* %44, i32 %45)
  %47 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %48 = load %struct.partial_symtab*, %struct.partial_symtab** %4, align 8
  %49 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %48, i32 0, i32 0
  %50 = load %struct.partial_symtab*, %struct.partial_symtab** %49, align 8
  %51 = load %struct.objfile*, %struct.objfile** %2, align 8
  %52 = bitcast %struct.objfile* %51 to %struct.partial_symtab*
  %53 = icmp ne %struct.partial_symtab* %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %38
  %57 = call i32 @wrap_here(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56
  %59 = load %struct.partial_symtab*, %struct.partial_symtab** %4, align 8
  %60 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %59, i32 0, i32 2
  %61 = load %struct.partial_symtab*, %struct.partial_symtab** %60, align 8
  store %struct.partial_symtab* %61, %struct.partial_symtab** %4, align 8
  br label %35

62:                                               ; preds = %35
  %63 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %1
  %65 = load %struct.objfile*, %struct.objfile** %2, align 8
  %66 = getelementptr inbounds %struct.objfile, %struct.objfile* %65, i32 0, i32 3
  %67 = load %struct.objfile*, %struct.objfile** %66, align 8
  %68 = icmp ne %struct.objfile* %67, null
  br i1 %68, label %69, label %103

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %71 = load %struct.objfile*, %struct.objfile** %2, align 8
  %72 = getelementptr inbounds %struct.objfile, %struct.objfile* %71, i32 0, i32 3
  %73 = load %struct.objfile*, %struct.objfile** %72, align 8
  %74 = bitcast %struct.objfile* %73 to %struct.symtab*
  store %struct.symtab* %74, %struct.symtab** %3, align 8
  br label %75

75:                                               ; preds = %97, %69
  %76 = load %struct.symtab*, %struct.symtab** %3, align 8
  %77 = icmp ne %struct.symtab* %76, null
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load %struct.symtab*, %struct.symtab** %3, align 8
  %80 = getelementptr inbounds %struct.symtab, %struct.symtab* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load %struct.symtab*, %struct.symtab** %3, align 8
  %84 = load i32, i32* @gdb_stdout, align 4
  %85 = call i32 @gdb_print_host_address(%struct.symtab* %83, i32 %84)
  %86 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %87 = load %struct.symtab*, %struct.symtab** %3, align 8
  %88 = getelementptr inbounds %struct.symtab, %struct.symtab* %87, i32 0, i32 0
  %89 = load %struct.symtab*, %struct.symtab** %88, align 8
  %90 = load %struct.objfile*, %struct.objfile** %2, align 8
  %91 = bitcast %struct.objfile* %90 to %struct.symtab*
  %92 = icmp ne %struct.symtab* %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %78
  %96 = call i32 @wrap_here(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95
  %98 = load %struct.symtab*, %struct.symtab** %3, align 8
  %99 = getelementptr inbounds %struct.symtab, %struct.symtab* %98, i32 0, i32 2
  %100 = load %struct.symtab*, %struct.symtab** %99, align 8
  store %struct.symtab* %100, %struct.symtab** %3, align 8
  br label %75

101:                                              ; preds = %75
  %102 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %64
  ret void
}

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @gdb_print_host_address(%struct.symtab*, i32) #1

declare dso_local i32 @wrap_here(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
