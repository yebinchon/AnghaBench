; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_lookup_internalvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_lookup_internalvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internalvar = type { %struct.internalvar*, i32, i32 }

@internalvars = common dso_local global %struct.internalvar* null, align 8
@builtin_type_void = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.internalvar* @lookup_internalvar(i8* %0) #0 {
  %2 = alloca %struct.internalvar*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.internalvar*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.internalvar*, %struct.internalvar** @internalvars, align 8
  store %struct.internalvar* %5, %struct.internalvar** %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.internalvar*, %struct.internalvar** %4, align 8
  %8 = icmp ne %struct.internalvar* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.internalvar*, %struct.internalvar** %4, align 8
  %11 = getelementptr inbounds %struct.internalvar, %struct.internalvar* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strcmp(i32 %12, i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load %struct.internalvar*, %struct.internalvar** %4, align 8
  store %struct.internalvar* %17, %struct.internalvar** %2, align 8
  br label %43

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.internalvar*, %struct.internalvar** %4, align 8
  %21 = getelementptr inbounds %struct.internalvar, %struct.internalvar* %20, i32 0, i32 0
  %22 = load %struct.internalvar*, %struct.internalvar** %21, align 8
  store %struct.internalvar* %22, %struct.internalvar** %4, align 8
  br label %6

23:                                               ; preds = %6
  %24 = call i64 @xmalloc(i32 16)
  %25 = inttoptr i64 %24 to %struct.internalvar*
  store %struct.internalvar* %25, %struct.internalvar** %4, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @concat(i8* %26, i32* null)
  %28 = load %struct.internalvar*, %struct.internalvar** %4, align 8
  %29 = getelementptr inbounds %struct.internalvar, %struct.internalvar* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @builtin_type_void, align 4
  %31 = call i32 @allocate_value(i32 %30)
  %32 = load %struct.internalvar*, %struct.internalvar** %4, align 8
  %33 = getelementptr inbounds %struct.internalvar, %struct.internalvar* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.internalvar*, %struct.internalvar** %4, align 8
  %35 = getelementptr inbounds %struct.internalvar, %struct.internalvar* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @release_value(i32 %36)
  %38 = load %struct.internalvar*, %struct.internalvar** @internalvars, align 8
  %39 = load %struct.internalvar*, %struct.internalvar** %4, align 8
  %40 = getelementptr inbounds %struct.internalvar, %struct.internalvar* %39, i32 0, i32 0
  store %struct.internalvar* %38, %struct.internalvar** %40, align 8
  %41 = load %struct.internalvar*, %struct.internalvar** %4, align 8
  store %struct.internalvar* %41, %struct.internalvar** @internalvars, align 8
  %42 = load %struct.internalvar*, %struct.internalvar** %4, align 8
  store %struct.internalvar* %42, %struct.internalvar** %2, align 8
  br label %43

43:                                               ; preds = %23, %16
  %44 = load %struct.internalvar*, %struct.internalvar** %2, align 8
  ret %struct.internalvar* %44
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @concat(i8*, i32*) #1

declare dso_local i32 @allocate_value(i32) #1

declare dso_local i32 @release_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
