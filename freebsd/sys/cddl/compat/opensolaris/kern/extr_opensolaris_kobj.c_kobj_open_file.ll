; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_kobj.c_kobj_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_kobj.c_kobj_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._buf = type { i32*, i64 }

@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._buf* @kobj_open_file(i8* %0) #0 {
  %2 = alloca %struct._buf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._buf*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @KM_SLEEP, align 4
  %6 = call %struct._buf* @kmem_alloc(i32 16, i32 %5)
  store %struct._buf* %6, %struct._buf** %4, align 8
  %7 = call i64 (...) @root_mounted()
  %8 = load %struct._buf*, %struct._buf** %4, align 8
  %9 = getelementptr inbounds %struct._buf, %struct._buf* %8, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  %10 = load %struct._buf*, %struct._buf** %4, align 8
  %11 = getelementptr inbounds %struct._buf, %struct._buf* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32* @kobj_open_file_vnode(i8* %15)
  %17 = load %struct._buf*, %struct._buf** %4, align 8
  %18 = getelementptr inbounds %struct._buf, %struct._buf* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  br label %24

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i32* @kobj_open_file_loader(i8* %20)
  %22 = load %struct._buf*, %struct._buf** %4, align 8
  %23 = getelementptr inbounds %struct._buf, %struct._buf* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct._buf*, %struct._buf** %4, align 8
  %26 = getelementptr inbounds %struct._buf, %struct._buf* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct._buf*, %struct._buf** %4, align 8
  %31 = call i32 @kmem_free(%struct._buf* %30, i32 16)
  store %struct._buf* inttoptr (i64 -1 to %struct._buf*), %struct._buf** %2, align 8
  br label %34

32:                                               ; preds = %24
  %33 = load %struct._buf*, %struct._buf** %4, align 8
  store %struct._buf* %33, %struct._buf** %2, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load %struct._buf*, %struct._buf** %2, align 8
  ret %struct._buf* %35
}

declare dso_local %struct._buf* @kmem_alloc(i32, i32) #1

declare dso_local i64 @root_mounted(...) #1

declare dso_local i32* @kobj_open_file_vnode(i8*) #1

declare dso_local i32* @kobj_open_file_loader(i8*) #1

declare dso_local i32 @kmem_free(%struct._buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
