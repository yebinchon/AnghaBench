; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-sunos.c_solib_add_common_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-sunos.c_solib_add_common_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i64, i32 }
%struct.rtc_symb = type { i32, i32 }
%struct.nlist = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@rt_common_objfile = common dso_local global %struct.TYPE_7__* null, align 8
@N_COMM = common dso_local global i64 0, align 8
@mst_bss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @solib_add_common_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solib_add_common_symbols(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rtc_symb, align 4
  %4 = alloca %struct.nlist, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rt_common_objfile, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rt_common_objfile, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rt_common_objfile, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = call i32 @obstack_free(i32* %16, i32 0)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rt_common_objfile, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = call i32 @obstack_init(i32* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rt_common_objfile, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rt_common_objfile, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rt_common_objfile, align 8
  %26 = call i32 @terminate_minimal_symbol_table(%struct.TYPE_7__* %25)
  br label %27

27:                                               ; preds = %14, %9, %1
  %28 = call i32 (...) @init_minimal_symbol_collection()
  %29 = call i32 (...) @make_cleanup_discard_minimal_symbols()
  br label %30

30:                                               ; preds = %75, %27
  %31 = load i64, i64* %2, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %30
  %34 = load i64, i64* %2, align 8
  %35 = bitcast %struct.rtc_symb* %3 to i8*
  %36 = call i32 @read_memory(i64 %34, i8* %35, i32 8)
  %37 = getelementptr inbounds %struct.rtc_symb, %struct.rtc_symb* %3, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @SOLIB_EXTRACT_ADDRESS(i32 %38)
  %40 = bitcast %struct.nlist* %4 to i8*
  %41 = call i32 @read_memory(i64 %39, i8* %40, i32 24)
  %42 = getelementptr inbounds %struct.nlist, %struct.nlist* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @N_COMM, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.nlist, %struct.nlist* %4, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.nlist, %struct.nlist* %4, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i8* @xmalloc(i32 %53)
  store i8* %54, i8** %6, align 8
  %55 = getelementptr inbounds %struct.nlist, %struct.nlist* %4, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @SOLIB_EXTRACT_ADDRESS(i32 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @read_memory(i64 %58, i8* %59, i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rt_common_objfile, align 8
  %63 = icmp eq %struct.TYPE_7__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %46
  %65 = call i32 (...) @allocate_rt_common_objfile()
  br label %66

66:                                               ; preds = %64, %46
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds %struct.nlist, %struct.nlist* %4, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @mst_bss, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rt_common_objfile, align 8
  %72 = call i32 @prim_record_minimal_symbol(i8* %67, i32 %69, i32 %70, %struct.TYPE_7__* %71)
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @xfree(i8* %73)
  br label %75

75:                                               ; preds = %66, %33
  %76 = getelementptr inbounds %struct.rtc_symb, %struct.rtc_symb* %3, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @SOLIB_EXTRACT_ADDRESS(i32 %77)
  store i64 %78, i64* %2, align 8
  br label %30

79:                                               ; preds = %30
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rt_common_objfile, align 8
  %81 = call i32 @install_minimal_symbols(%struct.TYPE_7__* %80)
  ret void
}

declare dso_local i32 @obstack_free(i32*, i32) #1

declare dso_local i32 @obstack_init(i32*) #1

declare dso_local i32 @terminate_minimal_symbol_table(%struct.TYPE_7__*) #1

declare dso_local i32 @init_minimal_symbol_collection(...) #1

declare dso_local i32 @make_cleanup_discard_minimal_symbols(...) #1

declare dso_local i32 @read_memory(i64, i8*, i32) #1

declare dso_local i64 @SOLIB_EXTRACT_ADDRESS(i32) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @allocate_rt_common_objfile(...) #1

declare dso_local i32 @prim_record_minimal_symbol(i8*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @install_minimal_symbols(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
