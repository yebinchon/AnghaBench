; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_dlclose_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_dlclose_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32* }

@UTRACE_DLCLOSE_START = common dso_local global i32 0, align 4
@list_fini = common dso_local global i32 0, align 4
@RT_DELETE = common dso_local global i32 0, align 4
@RT_CONSISTENT = common dso_local global i32 0, align 4
@UTRACE_DLCLOSE_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dlclose_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlclose_locked(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.TYPE_6__* @dlcheck(i8* %7)
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %52

12:                                               ; preds = %2
  %13 = load i32, i32* @UTRACE_DLCLOSE_START, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @LD_UTRACE(i32 %13, i8* %14, i32* null, i32 0, i32 %17, i32* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %45

30:                                               ; preds = %12
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @objlist_call_fini(i32* @list_fini, %struct.TYPE_6__* %31, i32* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = call i32 @unref_dag(%struct.TYPE_6__* %34)
  %36 = load i32, i32* @RT_DELETE, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = call i32 @GDB_STATE(i32 %36, i32* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @unload_object(%struct.TYPE_6__* %40, i32* %41)
  %43 = load i32, i32* @RT_CONSISTENT, align 4
  %44 = call i32 @GDB_STATE(i32 %43, i32* null)
  br label %48

45:                                               ; preds = %12
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = call i32 @unref_dag(%struct.TYPE_6__* %46)
  br label %48

48:                                               ; preds = %45, %30
  %49 = load i32, i32* @UTRACE_DLCLOSE_STOP, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @LD_UTRACE(i32 %49, i8* %50, i32* null, i32 0, i32 0, i32* null)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_6__* @dlcheck(i8*) #1

declare dso_local i32 @LD_UTRACE(i32, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @objlist_call_fini(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @unref_dag(%struct.TYPE_6__*) #1

declare dso_local i32 @GDB_STATE(i32, i32*) #1

declare dso_local i32 @unload_object(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
