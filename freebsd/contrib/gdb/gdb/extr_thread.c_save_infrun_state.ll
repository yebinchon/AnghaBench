; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_save_infrun_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_save_infrun_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i32 }
%struct.frame_id = type { i32 }
%struct.symtab = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, i32, i32, i8*, %struct.symtab*, i32, %struct.frame_id, i8*, i8*, %struct.breakpoint*, %struct.breakpoint*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_infrun_state(i32 %0, i8* %1, i32 %2, %struct.breakpoint* %3, %struct.breakpoint* %4, i8* %5, i8* %6, %struct.frame_id* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, %struct.symtab* %14, i8* %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.breakpoint*, align 8
  %21 = alloca %struct.breakpoint*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.frame_id*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.symtab*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.thread_info*, align 8
  store i32 %0, i32* %17, align 4
  store i8* %1, i8** %18, align 8
  store i32 %2, i32* %19, align 4
  store %struct.breakpoint* %3, %struct.breakpoint** %20, align 8
  store %struct.breakpoint* %4, %struct.breakpoint** %21, align 8
  store i8* %5, i8** %22, align 8
  store i8* %6, i8** %23, align 8
  store %struct.frame_id* %7, %struct.frame_id** %24, align 8
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store i32 %11, i32* %28, align 4
  store i32 %12, i32* %29, align 4
  store i32 %13, i32* %30, align 4
  store %struct.symtab* %14, %struct.symtab** %31, align 8
  store i8* %15, i8** %32, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @pid_to_thread_id(i32 %34)
  %36 = call %struct.thread_info* @find_thread_id(i32 %35)
  store %struct.thread_info* %36, %struct.thread_info** %33, align 8
  %37 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %38 = icmp eq %struct.thread_info* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  br label %88

40:                                               ; preds = %16
  %41 = load i8*, i8** %18, align 8
  %42 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %43 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %42, i32 0, i32 14
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %19, align 4
  %45 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %46 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.breakpoint*, %struct.breakpoint** %20, align 8
  %48 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %49 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %48, i32 0, i32 13
  store %struct.breakpoint* %47, %struct.breakpoint** %49, align 8
  %50 = load %struct.breakpoint*, %struct.breakpoint** %21, align 8
  %51 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %52 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %51, i32 0, i32 12
  store %struct.breakpoint* %50, %struct.breakpoint** %52, align 8
  %53 = load i8*, i8** %22, align 8
  %54 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %55 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %54, i32 0, i32 11
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %23, align 8
  %57 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %58 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %57, i32 0, i32 10
  store i8* %56, i8** %58, align 8
  %59 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %60 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %59, i32 0, i32 9
  %61 = load %struct.frame_id*, %struct.frame_id** %24, align 8
  %62 = bitcast %struct.frame_id* %60 to i8*
  %63 = bitcast %struct.frame_id* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load i32, i32* %25, align 4
  %65 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %66 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %26, align 4
  %68 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %69 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %27, align 4
  %71 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %72 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %28, align 4
  %74 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %75 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %29, align 4
  %77 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %78 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %30, align 4
  %80 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %81 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.symtab*, %struct.symtab** %31, align 8
  %83 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %84 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %83, i32 0, i32 7
  store %struct.symtab* %82, %struct.symtab** %84, align 8
  %85 = load i8*, i8** %32, align 8
  %86 = load %struct.thread_info*, %struct.thread_info** %33, align 8
  %87 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %86, i32 0, i32 6
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %40, %39
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
