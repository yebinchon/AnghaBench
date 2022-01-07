; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_sys_machdep.c_amd64_get_ldt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_sys_machdep.c_amd64_get_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.proc_ldt* }
%struct.proc_ldt = type { i64 }
%struct.i386_ldt_args = type { i32, i32, i64 }
%struct.user_segment_descriptor = type { i32 }

@max_ldt_segment = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@dt_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd64_get_ldt(%struct.thread* %0, %struct.i386_ldt_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.i386_ldt_args*, align 8
  %6 = alloca %struct.proc_ldt*, align 8
  %7 = alloca %struct.user_segment_descriptor*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.i386_ldt_args* %1, %struct.i386_ldt_args** %5, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.proc_ldt*, %struct.proc_ldt** %16, align 8
  store %struct.proc_ldt* %17, %struct.proc_ldt** %6, align 8
  %18 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %19 = icmp eq %struct.proc_ldt* %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %2
  %21 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %5, align 8
  %22 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @max_ldt_segment, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %5, align 8
  %28 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26, %20, %2
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 0, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %106

36:                                               ; preds = %26
  %37 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %5, align 8
  %38 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* @max_ldt_segment, align 4
  %42 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %5, align 8
  %43 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %41, %44
  %46 = call i32 @min(i64 %40, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %48 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.user_segment_descriptor*
  %51 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %5, align 8
  %52 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %50, i64 %54
  store %struct.user_segment_descriptor* %55, %struct.user_segment_descriptor** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @M_TEMP, align 4
  %61 = load i32, i32* @M_WAITOK, align 4
  %62 = call i32* @malloc(i32 %59, i32 %60, i32 %61)
  store i32* %62, i32** %8, align 8
  %63 = call i32 @mtx_lock(i32* @dt_lock)
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %79, %36
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %7, align 8
  %70 = bitcast %struct.user_segment_descriptor* %69 to i32*
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load volatile i32, i32* %73, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %64

82:                                               ; preds = %64
  %83 = call i32 @mtx_unlock(i32* @dt_lock)
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %5, align 8
  %86 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i32 @copyout(i32* %84, i64 %87, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* @M_TEMP, align 4
  %95 = call i32 @free(i32* %93, i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %82
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.thread*, %struct.thread** %4, align 8
  %101 = getelementptr inbounds %struct.thread, %struct.thread* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %82
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %31
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @copyout(i32*, i64, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
