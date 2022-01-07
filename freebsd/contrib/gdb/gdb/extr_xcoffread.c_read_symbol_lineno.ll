; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_read_symbol_lineno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_read_symbol_lineno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.objfile* }
%struct.objfile = type { i32, i64 }
%struct.coff_symfile_info = type { i32, i8*, i8* }
%struct.internal_syment = type { i64, i32, i8*, i64, i32 }
%union.internal_auxent = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@this_symtab_psymtab = common dso_local global %struct.TYPE_8__* null, align 8
@symfile_bfd = common dso_local global i32 0, align 4
@local_symesz = common dso_local global i32 0, align 4
@C_FCN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c".bf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_symbol_lineno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_symbol_lineno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.coff_symfile_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [1 x %struct.internal_syment], align 16
  %11 = alloca [1 x %union.internal_auxent], align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @this_symtab_psymtab, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.objfile*, %struct.objfile** %14, align 8
  store %struct.objfile* %15, %struct.objfile** %4, align 8
  %16 = load %struct.objfile*, %struct.objfile** %4, align 8
  %17 = getelementptr inbounds %struct.objfile, %struct.objfile* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bfd_xcoff_is_xcoff64(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.objfile*, %struct.objfile** %4, align 8
  %21 = getelementptr inbounds %struct.objfile, %struct.objfile* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.coff_symfile_info*
  store %struct.coff_symfile_info* %23, %struct.coff_symfile_info** %6, align 8
  %24 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %6, align 8
  %25 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %6, align 8
  %28 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %8, align 8
  %30 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %6, align 8
  %31 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %9, align 8
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = call i32 (...) @bf_notfound_complaint()
  store i32 0, i32* %2, align 4
  br label %118

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %78, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %87

42:                                               ; preds = %38
  %43 = load i32, i32* @symfile_bfd, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @local_symesz, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = getelementptr inbounds [1 x %struct.internal_syment], [1 x %struct.internal_syment]* %10, i64 0, i64 0
  %51 = call i32 @bfd_coff_swap_sym_in(i32 %43, i8* %49, %struct.internal_syment* %50)
  %52 = getelementptr inbounds [1 x %struct.internal_syment], [1 x %struct.internal_syment]* %10, i64 0, i64 0
  %53 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 16
  %55 = load i64, i64* @C_FCN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %42
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds [1 x %struct.internal_syment], [1 x %struct.internal_syment]* %10, i64 0, i64 0
  %63 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  br label %71

67:                                               ; preds = %57
  %68 = getelementptr inbounds [1 x %struct.internal_syment], [1 x %struct.internal_syment]* %10, i64 0, i64 0
  %69 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 16
  br label %71

71:                                               ; preds = %67, %60
  %72 = phi i8* [ %66, %60 ], [ %70, %67 ]
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = call i64 @DEPRECATED_STREQ(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %89

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %42
  %79 = getelementptr inbounds [1 x %struct.internal_syment], [1 x %struct.internal_syment]* %10, i64 0, i64 0
  %80 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %3, align 4
  br label %38

87:                                               ; preds = %38
  %88 = call i32 (...) @bf_notfound_complaint()
  store i32 0, i32* %2, align 4
  br label %118

89:                                               ; preds = %76
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  %92 = load %struct.objfile*, %struct.objfile** %4, align 8
  %93 = getelementptr inbounds %struct.objfile, %struct.objfile* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @local_symesz, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %95, i64 %99
  %101 = getelementptr inbounds [1 x %struct.internal_syment], [1 x %struct.internal_syment]* %10, i64 0, i64 0
  %102 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 16
  %104 = getelementptr inbounds [1 x %struct.internal_syment], [1 x %struct.internal_syment]* %10, i64 0, i64 0
  %105 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 16
  %107 = getelementptr inbounds [1 x %struct.internal_syment], [1 x %struct.internal_syment]* %10, i64 0, i64 0
  %108 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds [1 x %union.internal_auxent], [1 x %union.internal_auxent]* %11, i64 0, i64 0
  %111 = call i32 @bfd_coff_swap_aux_in(i32 %94, i8* %100, i32 %103, i64 %106, i32 0, i64 %109, %union.internal_auxent* %110)
  %112 = getelementptr inbounds [1 x %union.internal_auxent], [1 x %union.internal_auxent]* %11, i64 0, i64 0
  %113 = bitcast %union.internal_auxent* %112 to %struct.TYPE_7__*
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %89, %87, %35
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @bfd_xcoff_is_xcoff64(i32) #1

declare dso_local i32 @bf_notfound_complaint(...) #1

declare dso_local i32 @bfd_coff_swap_sym_in(i32, i8*, %struct.internal_syment*) #1

declare dso_local i64 @DEPRECATED_STREQ(i8*, i8*) #1

declare dso_local i32 @bfd_coff_swap_aux_in(i32, i8*, i32, i64, i32, i64, %union.internal_auxent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
