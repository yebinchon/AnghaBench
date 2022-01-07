; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_delete_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_delete_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libworker = type { i32, i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libworker*)* @libworker_delete_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libworker_delete_env(%struct.libworker* %0) #0 {
  %2 = alloca %struct.libworker*, align 8
  store %struct.libworker* %0, %struct.libworker** %2, align 8
  %3 = load %struct.libworker*, %struct.libworker** %2, align 8
  %4 = getelementptr inbounds %struct.libworker, %struct.libworker* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %73

7:                                                ; preds = %1
  %8 = load %struct.libworker*, %struct.libworker** %2, align 8
  %9 = getelementptr inbounds %struct.libworker, %struct.libworker* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @outside_network_quit_prepare(i32 %10)
  %12 = load %struct.libworker*, %struct.libworker** %2, align 8
  %13 = getelementptr inbounds %struct.libworker, %struct.libworker* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mesh_delete(i32 %16)
  %18 = load %struct.libworker*, %struct.libworker** %2, align 8
  %19 = getelementptr inbounds %struct.libworker, %struct.libworker* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.libworker*, %struct.libworker** %2, align 8
  %22 = getelementptr inbounds %struct.libworker, %struct.libworker* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.libworker*, %struct.libworker** %2, align 8
  %27 = getelementptr inbounds %struct.libworker, %struct.libworker* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = load %struct.libworker*, %struct.libworker** %2, align 8
  %32 = getelementptr inbounds %struct.libworker, %struct.libworker* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %7
  %36 = phi i1 [ true, %7 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @context_release_alloc(i32 %20, i32 %25, i32 %37)
  %39 = load %struct.libworker*, %struct.libworker** %2, align 8
  %40 = getelementptr inbounds %struct.libworker, %struct.libworker* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sldns_buffer_free(i32 %43)
  %45 = load %struct.libworker*, %struct.libworker** %2, align 8
  %46 = getelementptr inbounds %struct.libworker, %struct.libworker* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regional_destroy(i32 %49)
  %51 = load %struct.libworker*, %struct.libworker** %2, align 8
  %52 = getelementptr inbounds %struct.libworker, %struct.libworker* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @forwards_delete(i32 %55)
  %57 = load %struct.libworker*, %struct.libworker** %2, align 8
  %58 = getelementptr inbounds %struct.libworker, %struct.libworker* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @hints_delete(i32 %61)
  %63 = load %struct.libworker*, %struct.libworker** %2, align 8
  %64 = getelementptr inbounds %struct.libworker, %struct.libworker* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ub_randfree(i32 %67)
  %69 = load %struct.libworker*, %struct.libworker** %2, align 8
  %70 = getelementptr inbounds %struct.libworker, %struct.libworker* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = call i32 @free(%struct.TYPE_2__* %71)
  br label %73

73:                                               ; preds = %35, %1
  %74 = load %struct.libworker*, %struct.libworker** %2, align 8
  %75 = getelementptr inbounds %struct.libworker, %struct.libworker* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @outside_network_delete(i32 %76)
  ret void
}

declare dso_local i32 @outside_network_quit_prepare(i32) #1

declare dso_local i32 @mesh_delete(i32) #1

declare dso_local i32 @context_release_alloc(i32, i32, i32) #1

declare dso_local i32 @sldns_buffer_free(i32) #1

declare dso_local i32 @regional_destroy(i32) #1

declare dso_local i32 @forwards_delete(i32) #1

declare dso_local i32 @hints_delete(i32) #1

declare dso_local i32 @ub_randfree(i32) #1

declare dso_local i32 @free(%struct.TYPE_2__*) #1

declare dso_local i32 @outside_network_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
