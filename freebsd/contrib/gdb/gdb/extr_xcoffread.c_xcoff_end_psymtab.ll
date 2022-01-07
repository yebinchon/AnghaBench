; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_end_psymtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_end_psymtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { i8*, i64, i64, i64, i64, i32, i32, i32, i64, i64, %struct.partial_symtab**, i64, i64, i32, %struct.objfile* }
%struct.objfile = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.symloc = type { i64, i64, i64 }

@first_fun_line_offset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.partial_symtab* (%struct.partial_symtab*, i8**, i32, i32, %struct.partial_symtab**, i32, i32)* @xcoff_end_psymtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.partial_symtab* @xcoff_end_psymtab(%struct.partial_symtab* %0, i8** %1, i32 %2, i32 %3, %struct.partial_symtab** %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.partial_symtab*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.partial_symtab**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.objfile*, align 8
  %17 = alloca %struct.partial_symtab*, align 8
  store %struct.partial_symtab* %0, %struct.partial_symtab** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.partial_symtab** %4, %struct.partial_symtab*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %19 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %18, i32 0, i32 14
  %20 = load %struct.objfile*, %struct.objfile** %19, align 8
  store %struct.objfile* %20, %struct.objfile** %16, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %38

23:                                               ; preds = %7
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %27 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to %struct.symloc*
  %30 = getelementptr inbounds %struct.symloc, %struct.symloc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %25, %31
  %33 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %34 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to %struct.symloc*
  %37 = getelementptr inbounds %struct.symloc, %struct.symloc* %36, i32 0, i32 0
  store i64 %32, i64* %37, align 8
  br label %38

38:                                               ; preds = %23, %7
  %39 = load i64, i64* @first_fun_line_offset, align 8
  %40 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %41 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = bitcast i8* %42 to %struct.symloc*
  %44 = getelementptr inbounds %struct.symloc, %struct.symloc* %43, i32 0, i32 2
  store i64 %39, i64* %44, align 8
  store i64 0, i64* @first_fun_line_offset, align 8
  %45 = load %struct.objfile*, %struct.objfile** %16, align 8
  %46 = getelementptr inbounds %struct.objfile, %struct.objfile* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.objfile*, %struct.objfile** %16, align 8
  %50 = getelementptr inbounds %struct.objfile, %struct.objfile* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %54 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = sub nsw i64 %48, %56
  %58 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %59 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.objfile*, %struct.objfile** %16, align 8
  %61 = getelementptr inbounds %struct.objfile, %struct.objfile* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.objfile*, %struct.objfile** %16, align 8
  %65 = getelementptr inbounds %struct.objfile, %struct.objfile* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %69 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = sub nsw i64 %63, %71
  %73 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %74 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %77 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %38
  %81 = load %struct.objfile*, %struct.objfile** %16, align 8
  %82 = getelementptr inbounds %struct.objfile, %struct.objfile* %81, i32 0, i32 0
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 8
  %86 = trunc i64 %85 to i32
  %87 = call i64 @obstack_alloc(i32* %82, i32 %86)
  %88 = inttoptr i64 %87 to %struct.partial_symtab**
  %89 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %90 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %89, i32 0, i32 10
  store %struct.partial_symtab** %88, %struct.partial_symtab*** %90, align 8
  %91 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %92 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %91, i32 0, i32 10
  %93 = load %struct.partial_symtab**, %struct.partial_symtab*** %92, align 8
  %94 = load %struct.partial_symtab**, %struct.partial_symtab*** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memcpy(%struct.partial_symtab** %93, %struct.partial_symtab** %94, i32 %98)
  br label %103

100:                                              ; preds = %38
  %101 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %102 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %101, i32 0, i32 10
  store %struct.partial_symtab** null, %struct.partial_symtab*** %102, align 8
  br label %103

103:                                              ; preds = %100, %80
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %171, %103
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %174

108:                                              ; preds = %104
  %109 = load i8**, i8*** %9, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.objfile*, %struct.objfile** %16, align 8
  %115 = call %struct.partial_symtab* @allocate_psymtab(i8* %113, %struct.objfile* %114)
  store %struct.partial_symtab* %115, %struct.partial_symtab** %17, align 8
  %116 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %117 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %116, i32 0, i32 13
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %120 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %119, i32 0, i32 13
  store i32 %118, i32* %120, align 8
  %121 = load %struct.objfile*, %struct.objfile** %16, align 8
  %122 = getelementptr inbounds %struct.objfile, %struct.objfile* %121, i32 0, i32 0
  %123 = call i64 @obstack_alloc(i32* %122, i32 24)
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %126 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %128 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = bitcast i8* %129 to %struct.symloc*
  %131 = getelementptr inbounds %struct.symloc, %struct.symloc* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %133 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = bitcast i8* %134 to %struct.symloc*
  %136 = getelementptr inbounds %struct.symloc, %struct.symloc* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %138 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %137, i32 0, i32 12
  store i64 0, i64* %138, align 8
  %139 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %140 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %139, i32 0, i32 11
  store i64 0, i64* %140, align 8
  %141 = load %struct.objfile*, %struct.objfile** %16, align 8
  %142 = getelementptr inbounds %struct.objfile, %struct.objfile* %141, i32 0, i32 0
  %143 = call i64 @obstack_alloc(i32* %142, i32 8)
  %144 = inttoptr i64 %143 to %struct.partial_symtab**
  %145 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %146 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %145, i32 0, i32 10
  store %struct.partial_symtab** %144, %struct.partial_symtab*** %146, align 8
  %147 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %148 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %149 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %148, i32 0, i32 10
  %150 = load %struct.partial_symtab**, %struct.partial_symtab*** %149, align 8
  %151 = getelementptr inbounds %struct.partial_symtab*, %struct.partial_symtab** %150, i64 0
  store %struct.partial_symtab* %147, %struct.partial_symtab** %151, align 8
  %152 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %153 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %152, i32 0, i32 5
  store i32 1, i32* %153, align 8
  %154 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %155 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %154, i32 0, i32 3
  store i64 0, i64* %155, align 8
  %156 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %157 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %156, i32 0, i32 4
  store i64 0, i64* %157, align 8
  %158 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %159 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  %160 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %161 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %160, i32 0, i32 2
  store i64 0, i64* %161, align 8
  %162 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %163 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %162, i32 0, i32 9
  store i64 0, i64* %163, align 8
  %164 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %165 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %164, i32 0, i32 8
  store i64 0, i64* %165, align 8
  %166 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %167 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.partial_symtab*, %struct.partial_symtab** %17, align 8
  %170 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %108
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  br label %104

174:                                              ; preds = %104
  %175 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %176 = call i32 @sort_pst_symbols(%struct.partial_symtab* %175)
  %177 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %178 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @free_named_symtabs(i32 %179)
  %181 = load i32, i32* %10, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %199

183:                                              ; preds = %174
  %184 = load i32, i32* %13, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %183
  %187 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %188 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %193 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  %198 = call i32 @discard_psymtab(%struct.partial_symtab* %197)
  store %struct.partial_symtab* null, %struct.partial_symtab** %8, align 8
  br label %199

199:                                              ; preds = %196, %191, %186, %183, %174
  %200 = load %struct.partial_symtab*, %struct.partial_symtab** %8, align 8
  ret %struct.partial_symtab* %200
}

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.partial_symtab**, %struct.partial_symtab**, i32) #1

declare dso_local %struct.partial_symtab* @allocate_psymtab(i8*, %struct.objfile*) #1

declare dso_local i32 @sort_pst_symbols(%struct.partial_symtab*) #1

declare dso_local i32 @free_named_symtabs(i32) #1

declare dso_local i32 @discard_psymtab(%struct.partial_symtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
