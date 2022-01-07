; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-sunos.c_allocate_rt_common_objfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-sunos.c_allocate_rt_common_objfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.objfile*, i32*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"rt_common\00", align 1
@object_files = common dso_local global %struct.objfile* null, align 8
@rt_common_objfile = common dso_local global %struct.objfile* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @allocate_rt_common_objfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_rt_common_objfile() #0 {
  %1 = alloca %struct.objfile*, align 8
  %2 = alloca %struct.objfile*, align 8
  %3 = call i64 @xmalloc(i32 40)
  %4 = inttoptr i64 %3 to %struct.objfile*
  store %struct.objfile* %4, %struct.objfile** %1, align 8
  %5 = load %struct.objfile*, %struct.objfile** %1, align 8
  %6 = call i32 @memset(%struct.objfile* %5, i32 0, i32 40)
  %7 = load %struct.objfile*, %struct.objfile** %1, align 8
  %8 = getelementptr inbounds %struct.objfile, %struct.objfile* %7, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = call i8* (...) @bcache_xmalloc()
  %10 = load %struct.objfile*, %struct.objfile** %1, align 8
  %11 = getelementptr inbounds %struct.objfile, %struct.objfile* %10, i32 0, i32 5
  store i8* %9, i8** %11, align 8
  %12 = call i8* (...) @bcache_xmalloc()
  %13 = load %struct.objfile*, %struct.objfile** %1, align 8
  %14 = getelementptr inbounds %struct.objfile, %struct.objfile* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct.objfile*, %struct.objfile** %1, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 3
  %17 = call i32 @obstack_init(i32* %16)
  %18 = load %struct.objfile*, %struct.objfile** %1, align 8
  %19 = getelementptr inbounds %struct.objfile, %struct.objfile* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @mstrsave(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.objfile*, %struct.objfile** %1, align 8
  %23 = getelementptr inbounds %struct.objfile, %struct.objfile* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.objfile*, %struct.objfile** %1, align 8
  %25 = getelementptr inbounds %struct.objfile, %struct.objfile* %24, i32 0, i32 0
  store %struct.objfile* null, %struct.objfile** %25, align 8
  %26 = load %struct.objfile*, %struct.objfile** @object_files, align 8
  %27 = icmp eq %struct.objfile* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %0
  %29 = load %struct.objfile*, %struct.objfile** %1, align 8
  store %struct.objfile* %29, %struct.objfile** @object_files, align 8
  br label %46

30:                                               ; preds = %0
  %31 = load %struct.objfile*, %struct.objfile** @object_files, align 8
  store %struct.objfile* %31, %struct.objfile** %2, align 8
  br label %32

32:                                               ; preds = %38, %30
  %33 = load %struct.objfile*, %struct.objfile** %2, align 8
  %34 = getelementptr inbounds %struct.objfile, %struct.objfile* %33, i32 0, i32 0
  %35 = load %struct.objfile*, %struct.objfile** %34, align 8
  %36 = icmp ne %struct.objfile* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.objfile*, %struct.objfile** %2, align 8
  %40 = getelementptr inbounds %struct.objfile, %struct.objfile* %39, i32 0, i32 0
  %41 = load %struct.objfile*, %struct.objfile** %40, align 8
  store %struct.objfile* %41, %struct.objfile** %2, align 8
  br label %32

42:                                               ; preds = %32
  %43 = load %struct.objfile*, %struct.objfile** %1, align 8
  %44 = load %struct.objfile*, %struct.objfile** %2, align 8
  %45 = getelementptr inbounds %struct.objfile, %struct.objfile* %44, i32 0, i32 0
  store %struct.objfile* %43, %struct.objfile** %45, align 8
  br label %46

46:                                               ; preds = %42, %28
  %47 = load %struct.objfile*, %struct.objfile** %1, align 8
  store %struct.objfile* %47, %struct.objfile** @rt_common_objfile, align 8
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.objfile*, i32, i32) #1

declare dso_local i8* @bcache_xmalloc(...) #1

declare dso_local i32 @obstack_init(i32*) #1

declare dso_local i32 @mstrsave(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
