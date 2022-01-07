; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_handle_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_handle_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libworker = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ctx_query = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libworker*, i32*, i32)* @handle_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cancel(%struct.libworker* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.libworker*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctx_query*, align 8
  store %struct.libworker* %0, %struct.libworker** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.libworker*, %struct.libworker** %4, align 8
  %9 = getelementptr inbounds %struct.libworker, %struct.libworker* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.libworker*, %struct.libworker** %4, align 8
  %14 = getelementptr inbounds %struct.libworker, %struct.libworker* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @lock_basic_lock(i32* %16)
  %18 = load %struct.libworker*, %struct.libworker** %4, align 8
  %19 = getelementptr inbounds %struct.libworker, %struct.libworker* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.ctx_query* @context_deserialize_cancel(%struct.TYPE_2__* %20, i32* %21, i32 %22)
  store %struct.ctx_query* %23, %struct.ctx_query** %7, align 8
  %24 = load %struct.libworker*, %struct.libworker** %4, align 8
  %25 = getelementptr inbounds %struct.libworker, %struct.libworker* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @lock_basic_unlock(i32* %27)
  br label %36

29:                                               ; preds = %3
  %30 = load %struct.libworker*, %struct.libworker** %4, align 8
  %31 = getelementptr inbounds %struct.libworker, %struct.libworker* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.ctx_query* @context_deserialize_cancel(%struct.TYPE_2__* %32, i32* %33, i32 %34)
  store %struct.ctx_query* %35, %struct.ctx_query** %7, align 8
  br label %36

36:                                               ; preds = %29, %12
  %37 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %38 = icmp ne %struct.ctx_query* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %45

40:                                               ; preds = %36
  %41 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %42 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @free(i32* %43)
  br label %45

45:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local %struct.ctx_query* @context_deserialize_cancel(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
