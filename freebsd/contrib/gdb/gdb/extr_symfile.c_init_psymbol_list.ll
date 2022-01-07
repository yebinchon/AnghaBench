; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_init_psymbol_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_init_psymbol_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.partial_symbol**, %struct.partial_symbol** }
%struct.partial_symbol = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.partial_symbol**, %struct.partial_symbol** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_psymbol_list(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.objfile*, %struct.objfile** %3, align 8
  %6 = getelementptr inbounds %struct.objfile, %struct.objfile* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.partial_symbol**, %struct.partial_symbol*** %7, align 8
  %9 = icmp ne %struct.partial_symbol** %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.objfile*, %struct.objfile** %3, align 8
  %12 = getelementptr inbounds %struct.objfile, %struct.objfile* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.objfile*, %struct.objfile** %3, align 8
  %15 = getelementptr inbounds %struct.objfile, %struct.objfile* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.partial_symbol**, %struct.partial_symbol*** %16, align 8
  %18 = call i32 @xmfree(i32 %13, %struct.partial_symbol** %17)
  br label %19

19:                                               ; preds = %10, %2
  %20 = load %struct.objfile*, %struct.objfile** %3, align 8
  %21 = getelementptr inbounds %struct.objfile, %struct.objfile* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.partial_symbol**, %struct.partial_symbol*** %22, align 8
  %24 = icmp ne %struct.partial_symbol** %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.objfile*, %struct.objfile** %3, align 8
  %27 = getelementptr inbounds %struct.objfile, %struct.objfile* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.objfile*, %struct.objfile** %3, align 8
  %30 = getelementptr inbounds %struct.objfile, %struct.objfile* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.partial_symbol**, %struct.partial_symbol*** %31, align 8
  %33 = call i32 @xmfree(i32 %28, %struct.partial_symbol** %32)
  br label %34

34:                                               ; preds = %25, %19
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 %35, 10
  %37 = load %struct.objfile*, %struct.objfile** %3, align 8
  %38 = getelementptr inbounds %struct.objfile, %struct.objfile* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sdiv i32 %40, 10
  %42 = load %struct.objfile*, %struct.objfile** %3, align 8
  %43 = getelementptr inbounds %struct.objfile, %struct.objfile* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.objfile*, %struct.objfile** %3, align 8
  %46 = getelementptr inbounds %struct.objfile, %struct.objfile* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %34
  %51 = load %struct.objfile*, %struct.objfile** %3, align 8
  %52 = getelementptr inbounds %struct.objfile, %struct.objfile* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.objfile*, %struct.objfile** %3, align 8
  %55 = getelementptr inbounds %struct.objfile, %struct.objfile* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @xmmalloc(i32 %53, i32 %60)
  %62 = inttoptr i64 %61 to %struct.partial_symbol**
  %63 = load %struct.objfile*, %struct.objfile** %3, align 8
  %64 = getelementptr inbounds %struct.objfile, %struct.objfile* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store %struct.partial_symbol** %62, %struct.partial_symbol*** %65, align 8
  %66 = load %struct.objfile*, %struct.objfile** %3, align 8
  %67 = getelementptr inbounds %struct.objfile, %struct.objfile* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store %struct.partial_symbol** %62, %struct.partial_symbol*** %68, align 8
  br label %69

69:                                               ; preds = %50, %34
  %70 = load %struct.objfile*, %struct.objfile** %3, align 8
  %71 = getelementptr inbounds %struct.objfile, %struct.objfile* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load %struct.objfile*, %struct.objfile** %3, align 8
  %77 = getelementptr inbounds %struct.objfile, %struct.objfile* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.objfile*, %struct.objfile** %3, align 8
  %80 = getelementptr inbounds %struct.objfile, %struct.objfile* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = call i64 @xmmalloc(i32 %78, i32 %85)
  %87 = inttoptr i64 %86 to %struct.partial_symbol**
  %88 = load %struct.objfile*, %struct.objfile** %3, align 8
  %89 = getelementptr inbounds %struct.objfile, %struct.objfile* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store %struct.partial_symbol** %87, %struct.partial_symbol*** %90, align 8
  %91 = load %struct.objfile*, %struct.objfile** %3, align 8
  %92 = getelementptr inbounds %struct.objfile, %struct.objfile* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store %struct.partial_symbol** %87, %struct.partial_symbol*** %93, align 8
  br label %94

94:                                               ; preds = %75, %69
  ret void
}

declare dso_local i32 @xmfree(i32, %struct.partial_symbol**) #1

declare dso_local i64 @xmmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
