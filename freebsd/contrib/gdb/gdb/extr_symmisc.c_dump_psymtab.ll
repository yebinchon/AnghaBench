; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_dump_psymtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symmisc.c_dump_psymtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i64, i64, i64, %struct.TYPE_6__, i64, %struct.TYPE_5__, i32, %struct.objfile**, i32, i32, i32, %struct.TYPE_4__*, %struct.objfile*, %struct.objfile*, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.partial_symtab = type { i32, i64, i64, i64, %struct.TYPE_6__, i64, %struct.TYPE_5__, i32, %struct.partial_symtab**, i32, i32, i32, %struct.TYPE_4__*, %struct.partial_symtab*, %struct.partial_symtab*, i64, i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"\0APartial symtab for source file %s \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(object \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c")\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"  Read from object file %s (\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"  Full symtab was read (at \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" by function at \00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"  Relocate symbols by \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"  Symbols cover text addresses \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"  Depends on %d other partial symtabs.\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"    %d \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Static\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*, %struct.partial_symtab*, %struct.ui_file*)* @dump_psymtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_psymtab(%struct.objfile* %0, %struct.partial_symtab* %1, %struct.ui_file* %2) #0 {
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca %struct.partial_symtab*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %4, align 8
  store %struct.partial_symtab* %1, %struct.partial_symtab** %5, align 8
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  %8 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %9 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %10 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %14 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %16 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %17 = call i32 @gdb_print_host_address(%struct.partial_symtab* %15, %struct.ui_file* %16)
  %18 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %19 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %21 = load %struct.objfile*, %struct.objfile** %4, align 8
  %22 = getelementptr inbounds %struct.objfile, %struct.objfile* %21, i32 0, i32 16
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load %struct.objfile*, %struct.objfile** %4, align 8
  %26 = bitcast %struct.objfile* %25 to %struct.partial_symtab*
  %27 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %28 = call i32 @gdb_print_host_address(%struct.partial_symtab* %26, %struct.ui_file* %27)
  %29 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %30 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %32 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %31, i32 0, i32 15
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %3
  %36 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %37 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %38 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %39 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %38, i32 0, i32 14
  %40 = load %struct.partial_symtab*, %struct.partial_symtab** %39, align 8
  %41 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %42 = call i32 @gdb_print_host_address(%struct.partial_symtab* %40, %struct.ui_file* %41)
  %43 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %44 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %45 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %46 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %45, i32 0, i32 13
  %47 = load %struct.partial_symtab*, %struct.partial_symtab** %46, align 8
  %48 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %49 = call i32 @gdb_print_host_address(%struct.partial_symtab* %47, %struct.ui_file* %48)
  %50 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %51 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %35, %3
  %53 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %54 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %78, %52
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %58 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %57, i32 0, i32 12
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %56, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %68 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = call i32 @wrap_here(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %71 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %72 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @ANOFFSET(i32 %73, i32 %74)
  %76 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %77 = call i32 @print_address_numeric(i32 %75, i32 1, %struct.ui_file* %76)
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %55

81:                                               ; preds = %55
  %82 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %83 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %84 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %85 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %86 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %87 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %90 = call i32 @print_address_numeric(i32 %88, i32 1, %struct.ui_file* %89)
  %91 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %92 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %93 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %94 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %97 = call i32 @print_address_numeric(i32 %95, i32 1, %struct.ui_file* %96)
  %98 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %99 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %100 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %101 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %102 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %103)
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %135, %81
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %108 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %105
  %112 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %113)
  %115 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %116 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %115, i32 0, i32 8
  %117 = load %struct.partial_symtab**, %struct.partial_symtab*** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.partial_symtab*, %struct.partial_symtab** %117, i64 %119
  %121 = load %struct.partial_symtab*, %struct.partial_symtab** %120, align 8
  %122 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %123 = call i32 @gdb_print_host_address(%struct.partial_symtab* %121, %struct.ui_file* %122)
  %124 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %125 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %126 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %125, i32 0, i32 8
  %127 = load %struct.partial_symtab**, %struct.partial_symtab*** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.partial_symtab*, %struct.partial_symtab** %127, i64 %129
  %131 = load %struct.partial_symtab*, %struct.partial_symtab** %130, align 8
  %132 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %111
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %105

138:                                              ; preds = %105
  %139 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %140 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %138
  %144 = load %struct.objfile*, %struct.objfile** %4, align 8
  %145 = getelementptr inbounds %struct.objfile, %struct.objfile* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %149 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %147, %150
  %152 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %153 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %156 = call i32 @print_partial_symbols(i64 %151, i64 %154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %struct.ui_file* %155)
  br label %157

157:                                              ; preds = %143, %138
  %158 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %159 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %157
  %163 = load %struct.objfile*, %struct.objfile** %4, align 8
  %164 = getelementptr inbounds %struct.objfile, %struct.objfile* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %168 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %166, %169
  %171 = load %struct.partial_symtab*, %struct.partial_symtab** %5, align 8
  %172 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %175 = call i32 @print_partial_symbols(i64 %170, i64 %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), %struct.ui_file* %174)
  br label %176

176:                                              ; preds = %162, %157
  %177 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %178 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @gdb_print_host_address(%struct.partial_symtab*, %struct.ui_file*) #1

declare dso_local i32 @fprintf_unfiltered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @print_address_numeric(i32, i32, %struct.ui_file*) #1

declare dso_local i32 @ANOFFSET(i32, i32) #1

declare dso_local i32 @print_partial_symbols(i64, i64, i8*, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
