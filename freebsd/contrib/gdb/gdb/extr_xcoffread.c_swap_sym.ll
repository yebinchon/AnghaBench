; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_swap_sym.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_swap_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_syment = type { i8*, i32, i32, i32, i32, i64 }
%union.internal_auxent = type { i32 }
%struct.objfile = type { i32, i64, i32 }
%struct.external_syment = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.coff_symfile_info = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@E_SYMNMLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.internal_syment*, %union.internal_auxent*, i8**, i8**, i32*, %struct.objfile*)* @swap_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_sym(%struct.internal_syment* %0, %union.internal_auxent* %1, i8** %2, i8** %3, i32* %4, %struct.objfile* %5) #0 {
  %7 = alloca %struct.internal_syment*, align 8
  %8 = alloca %union.internal_auxent*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.objfile*, align 8
  %13 = alloca i8*, align 8
  store %struct.internal_syment* %0, %struct.internal_syment** %7, align 8
  store %union.internal_auxent* %1, %union.internal_auxent** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.objfile* %5, %struct.objfile** %12, align 8
  %14 = load %struct.objfile*, %struct.objfile** %12, align 8
  %15 = getelementptr inbounds %struct.objfile, %struct.objfile* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i8**, i8*** %10, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %20 = call i32 @bfd_coff_swap_sym_in(i32 %16, i8* %18, %struct.internal_syment* %19)
  %21 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %22 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %6
  %26 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %27 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @E_SYMNMLEN, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %25
  %37 = load %struct.objfile*, %struct.objfile** %12, align 8
  %38 = getelementptr inbounds %struct.objfile, %struct.objfile* %37, i32 0, i32 2
  %39 = load i32, i32* @E_SYMNMLEN, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i8* @obstack_alloc(i32* %38, i32 %40)
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %44 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @E_SYMNMLEN, align 4
  %47 = call i32 @strncpy(i8* %42, i8* %45, i32 %46)
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* @E_SYMNMLEN, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %13, align 8
  %53 = load i8**, i8*** %9, align 8
  store i8* %52, i8** %53, align 8
  br label %62

54:                                               ; preds = %25
  %55 = load i8**, i8*** %10, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = bitcast i8* %56 to %struct.external_syment*
  %58 = getelementptr inbounds %struct.external_syment, %struct.external_syment* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8**, i8*** %9, align 8
  store i8* %60, i8** %61, align 8
  br label %62

62:                                               ; preds = %54, %36
  br label %96

63:                                               ; preds = %6
  %64 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %65 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.objfile*, %struct.objfile** %12, align 8
  %71 = getelementptr inbounds %struct.objfile, %struct.objfile* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.coff_symfile_info*
  %74 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %77 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = load i8**, i8*** %9, align 8
  store i8* %80, i8** %81, align 8
  br label %95

82:                                               ; preds = %63
  %83 = load %struct.objfile*, %struct.objfile** %12, align 8
  %84 = getelementptr inbounds %struct.objfile, %struct.objfile* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.coff_symfile_info*
  %87 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %90 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i8**, i8*** %9, align 8
  store i8* %93, i8** %94, align 8
  br label %95

95:                                               ; preds = %82, %69
  br label %96

96:                                               ; preds = %95, %62
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.objfile*, %struct.objfile** %12, align 8
  %101 = getelementptr inbounds %struct.objfile, %struct.objfile* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.TYPE_4__* @coff_data(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i8**, i8*** %10, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = sext i32 %105 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %106, align 8
  %110 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %111 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = icmp ugt i32 %112, 0
  br i1 %113, label %114, label %151

114:                                              ; preds = %96
  %115 = load %struct.objfile*, %struct.objfile** %12, align 8
  %116 = getelementptr inbounds %struct.objfile, %struct.objfile* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i8**, i8*** %10, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %121 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %124 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %127 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %union.internal_auxent*, %union.internal_auxent** %8, align 8
  %130 = call i32 @bfd_coff_swap_aux_in(i32 %117, i8* %119, i32 %122, i32 %125, i32 0, i32 %128, %union.internal_auxent* %129)
  %131 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %132 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %134, align 4
  %136 = add i32 %135, %133
  store i32 %136, i32* %134, align 4
  %137 = load %struct.objfile*, %struct.objfile** %12, align 8
  %138 = getelementptr inbounds %struct.objfile, %struct.objfile* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call %struct.TYPE_4__* @coff_data(i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.internal_syment*, %struct.internal_syment** %7, align 8
  %144 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = mul i32 %142, %145
  %147 = load i8**, i8*** %10, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = zext i32 %146 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %150, i8** %147, align 8
  br label %151

151:                                              ; preds = %114, %96
  ret void
}

declare dso_local i32 @bfd_coff_swap_sym_in(i32, i8*, %struct.internal_syment*) #1

declare dso_local i8* @obstack_alloc(i32*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @coff_data(i32) #1

declare dso_local i32 @bfd_coff_swap_aux_in(i32, i8*, i32, i32, i32, i32, %union.internal_auxent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
