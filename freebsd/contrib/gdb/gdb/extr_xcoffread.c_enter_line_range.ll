; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_enter_line_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_enter_line_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32*, i64 }
%struct.subfile = type { i32 }
%struct.internal_lineno = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.coff_symfile_info = type { i32 }
%struct.TYPE_7__ = type { i32 }

@this_symtab_psymtab = common dso_local global %struct.TYPE_6__* null, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Bad line table offset in C_EINCL directive\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subfile*, i32, i32, i64, i64, i32*)* @enter_line_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter_line_range(%struct.subfile* %0, i32 %1, i32 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.subfile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.internal_lineno, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.subfile* %0, %struct.subfile** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %6
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* %11, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %148

29:                                               ; preds = %25, %22, %6
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @this_symtab_psymtab, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.coff_symfile_info*
  %37 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %148

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %17, align 4
  br label %52

49:                                               ; preds = %29
  %50 = load i32, i32* %17, align 4
  %51 = sub i32 %50, 1
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %49, %47
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @this_symtab_psymtab, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %18, align 8
  %58 = load i32*, i32** %18, align 8
  %59 = call %struct.TYPE_7__* @coff_data(i32* %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = call i8* @alloca(i32 %62)
  store i8* %63, i8** %15, align 8
  br label %64

64:                                               ; preds = %144, %52
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ule i32 %65, %66
  br i1 %67, label %68, label %148

68:                                               ; preds = %64
  %69 = load i32*, i32** %18, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @SEEK_SET, align 4
  %72 = call i32 @bfd_seek(i32* %69, i32 %70, i32 %71)
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* %19, align 4
  %75 = load i32*, i32** %18, align 8
  %76 = call i32 @bfd_bread(i8* %73, i32 %74, i32* %75)
  %77 = load i32*, i32** %18, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = call i32 @bfd_coff_swap_lineno_in(i32* %77, i8* %78, %struct.internal_lineno* %16)
  %80 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %16, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %16, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  br label %92

87:                                               ; preds = %68
  %88 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %16, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @read_symbol_nvalue(i32 %90)
  br label %92

92:                                               ; preds = %87, %83
  %93 = phi i64 [ %86, %83 ], [ %91, %87 ]
  store i64 %93, i64* %14, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @this_symtab_psymtab, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @this_symtab_psymtab, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = call i32 @SECT_OFF_TEXT(%struct.TYPE_8__* %101)
  %103 = call i64 @ANOFFSET(i32 %98, i32 %102)
  %104 = load i64, i64* %14, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %14, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %10, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %92
  %110 = load i64, i64* %11, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* %11, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112, %92
  br label %148

117:                                              ; preds = %112, %109
  %118 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %16, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %16, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @read_symbol_lineno(i32 %124)
  %126 = load i32*, i32** %12, align 8
  store i32 %125, i32* %126, align 4
  %127 = load %struct.subfile*, %struct.subfile** %7, align 8
  %128 = load i64, i64* %14, align 8
  %129 = call i32 @record_line(%struct.subfile* %127, i32 0, i64 %128)
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %131, -1
  store i32 %132, i32* %130, align 4
  br label %144

133:                                              ; preds = %117
  %134 = load %struct.subfile*, %struct.subfile** %7, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %16, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %137, %139
  %141 = trunc i64 %140 to i32
  %142 = load i64, i64* %14, align 8
  %143 = call i32 @record_line(%struct.subfile* %134, i32 %141, i64 %142)
  br label %144

144:                                              ; preds = %133, %121
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %13, align 4
  %147 = add i32 %146, %145
  store i32 %147, i32* %13, align 4
  br label %64

148:                                              ; preds = %28, %45, %116, %64
  ret void
}

declare dso_local i32 @complaint(i32*, i8*) #1

declare dso_local %struct.TYPE_7__* @coff_data(i32*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, i32*) #1

declare dso_local i32 @bfd_coff_swap_lineno_in(i32*, i8*, %struct.internal_lineno*) #1

declare dso_local i64 @read_symbol_nvalue(i32) #1

declare dso_local i64 @ANOFFSET(i32, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.TYPE_8__*) #1

declare dso_local i32 @read_symbol_lineno(i32) #1

declare dso_local i32 @record_line(%struct.subfile*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
