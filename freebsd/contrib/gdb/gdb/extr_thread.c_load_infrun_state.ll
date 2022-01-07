; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_load_infrun_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_load_infrun_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i32 }
%struct.frame_id = type { i32 }
%struct.symtab = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.symtab*, i32, %struct.frame_id, i32, i32, %struct.breakpoint*, %struct.breakpoint*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_infrun_state(i32 %0, i32* %1, i32* %2, %struct.breakpoint** %3, %struct.breakpoint** %4, i32* %5, i32* %6, %struct.frame_id* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, %struct.symtab** %14, i32* %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.breakpoint**, align 8
  %21 = alloca %struct.breakpoint**, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.frame_id*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.symtab**, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.thread_info*, align 8
  store i32 %0, i32* %17, align 4
  store i32* %1, i32** %18, align 8
  store i32* %2, i32** %19, align 8
  store %struct.breakpoint** %3, %struct.breakpoint*** %20, align 8
  store %struct.breakpoint** %4, %struct.breakpoint*** %21, align 8
  store i32* %5, i32** %22, align 8
  store i32* %6, i32** %23, align 8
  store %struct.frame_id* %7, %struct.frame_id** %24, align 8
  store i32* %8, i32** %25, align 8
  store i32* %9, i32** %26, align 8
  store i32* %10, i32** %27, align 8
  store i32* %11, i32** %28, align 8
  store i32* %12, i32** %29, align 8
  store i32* %13, i32** %30, align 8
  store %struct.symtab** %14, %struct.symtab*** %31, align 8
  store i32* %15, i32** %32, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @pid_to_thread_id(i32 %34)
  %36 = call %struct.thread_info* @find_thread_id(i32 %35)
  store %struct.thread_info* %36, %struct.thread_info** %33, align 8
  %37 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %38 = icmp eq %struct.thread_info* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  br label %102

40:                                               ; preds = %16
  %41 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %42 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %41, i32 0, i32 14
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %18, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %46 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %19, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %50 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %49, i32 0, i32 13
  %51 = load %struct.breakpoint*, %struct.breakpoint** %50, align 8
  %52 = load %struct.breakpoint**, %struct.breakpoint*** %20, align 8
  store %struct.breakpoint* %51, %struct.breakpoint** %52, align 8
  %53 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %54 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %53, i32 0, i32 12
  %55 = load %struct.breakpoint*, %struct.breakpoint** %54, align 8
  %56 = load %struct.breakpoint**, %struct.breakpoint*** %21, align 8
  store %struct.breakpoint* %55, %struct.breakpoint** %56, align 8
  %57 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %58 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %22, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %62 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %23, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.frame_id*, %struct.frame_id** %24, align 8
  %66 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %67 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %66, i32 0, i32 9
  %68 = bitcast %struct.frame_id* %65 to i8*
  %69 = bitcast %struct.frame_id* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  %70 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %71 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %25, align 8
  store i32 %72, i32* %73, align 4
  %74 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %75 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %26, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %79 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %27, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %83 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %28, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %87 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %29, align 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %91 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %30, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %95 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %94, i32 0, i32 7
  %96 = load %struct.symtab*, %struct.symtab** %95, align 8
  %97 = load %struct.symtab**, %struct.symtab*** %31, align 8
  store %struct.symtab* %96, %struct.symtab** %97, align 8
  %98 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %99 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %32, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %40, %39
  ret void
}

declare dso_local %struct.thread_info* @find_thread_id(i32) #1

declare dso_local i32 @pid_to_thread_id(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
