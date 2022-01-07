; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_rtld.c_proc_rdagent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_rtld.c_proc_rdagent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i64, i32, i32*, i32* }

@PS_UNDEAD = common dso_local global i64 0, align 8
@PS_IDLE = common dso_local global i64 0, align 8
@map_iter = common dso_local global i32 0, align 4
@RD_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @proc_rdagent(%struct.proc_handle* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.proc_handle*, align 8
  store %struct.proc_handle* %0, %struct.proc_handle** %3, align 8
  %4 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %5 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %55

8:                                                ; preds = %1
  %9 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %10 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PS_UNDEAD, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %8
  %15 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %16 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PS_IDLE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %22 = call i32* @rd_new(%struct.proc_handle* %21)
  %23 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %24 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = icmp eq i32* %22, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32* null, i32** %2, align 8
  br label %59

27:                                               ; preds = %20
  %28 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %29 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %28, i32 0, i32 1
  store i32 64, i32* %29, align 8
  %30 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %31 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @calloc(i32 %32, i32 4)
  %34 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %35 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %37 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %42 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %2, align 8
  br label %59

44:                                               ; preds = %27
  %45 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %46 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @map_iter, align 4
  %49 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %50 = call i64 @rd_loadobj_iter(i32* %47, i32 %48, %struct.proc_handle* %49)
  %51 = load i64, i64* @RD_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32* null, i32** %2, align 8
  br label %59

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %14, %8, %1
  %56 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %57 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %2, align 8
  br label %59

59:                                               ; preds = %55, %53, %40, %26
  %60 = load i32*, i32** %2, align 8
  ret i32* %60
}

declare dso_local i32* @rd_new(%struct.proc_handle*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i64 @rd_loadobj_iter(i32*, i32, %struct.proc_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
