; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fopencookie.c_fopencookie.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fopencookie.c_fopencookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.fopencookie_thunk = type { i32, i8* }

@__SWR = common dso_local global i32 0, align 4
@__SRD = common dso_local global i32 0, align 4
@_fopencookie_seek = common dso_local global i32 0, align 4
@_fopencookie_close = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@__SAPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @fopencookie(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i8*, i32)*, align 8
  %9 = alloca i32 (i8*, i8*, i32)*, align 8
  %10 = alloca %struct.fopencookie_thunk*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @__sflags(i8* %14, i32* %13)
  store i32 %15, i32* %12, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %65

18:                                               ; preds = %3
  %19 = call %struct.fopencookie_thunk* @malloc(i32 16)
  store %struct.fopencookie_thunk* %19, %struct.fopencookie_thunk** %10, align 8
  %20 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %10, align 8
  %21 = icmp eq %struct.fopencookie_thunk* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %65

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %10, align 8
  %26 = getelementptr inbounds %struct.fopencookie_thunk, %struct.fopencookie_thunk* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %10, align 8
  %29 = getelementptr inbounds %struct.fopencookie_thunk, %struct.fopencookie_thunk* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  store i32 (i8*, i8*, i32)* @_fopencookie_read, i32 (i8*, i8*, i32)** %8, align 8
  store i32 (i8*, i8*, i32)* @_fopencookie_write, i32 (i8*, i8*, i32)** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @__SWR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 (i8*, i8*, i32)* null, i32 (i8*, i8*, i32)** %8, align 8
  br label %40

34:                                               ; preds = %23
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @__SRD, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 (i8*, i8*, i32)* null, i32 (i8*, i8*, i32)** %9, align 8
  br label %39

39:                                               ; preds = %38, %34
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %10, align 8
  %42 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %8, align 8
  %43 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %9, align 8
  %44 = load i32, i32* @_fopencookie_seek, align 4
  %45 = load i32, i32* @_fopencookie_close, align 4
  %46 = call %struct.TYPE_4__* @funopen(%struct.fopencookie_thunk* %41, i32 (i8*, i8*, i32)* %42, i32 (i8*, i8*, i32)* %43, i32 %44, i32 %45)
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %11, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = icmp eq %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %10, align 8
  %51 = call i32 @free(%struct.fopencookie_thunk* %50)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %65

52:                                               ; preds = %40
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @O_APPEND, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @__SAPP, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %4, align 8
  br label %65

65:                                               ; preds = %63, %49, %22, %17
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %66
}

declare dso_local i32 @__sflags(i8*, i32*) #1

declare dso_local %struct.fopencookie_thunk* @malloc(i32) #1

declare dso_local i32 @_fopencookie_read(i8*, i8*, i32) #1

declare dso_local i32 @_fopencookie_write(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @funopen(%struct.fopencookie_thunk*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32, i32) #1

declare dso_local i32 @free(%struct.fopencookie_thunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
