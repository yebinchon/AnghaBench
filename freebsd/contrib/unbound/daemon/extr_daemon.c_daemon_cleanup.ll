; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon = type { i32, i32*, i32*, i32*, i32, i32*, i32, %struct.TYPE_4__*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daemon_cleanup(%struct.daemon* %0) #0 {
  %2 = alloca %struct.daemon*, align 8
  %3 = alloca i32, align 4
  store %struct.daemon* %0, %struct.daemon** %2, align 8
  %4 = load %struct.daemon*, %struct.daemon** %2, align 8
  %5 = call i32 @log_assert(%struct.daemon* %4)
  %6 = call i32 (...) @signal_handling_record()
  %7 = call i32 @log_thread_set(i32* null)
  %8 = load %struct.daemon*, %struct.daemon** %2, align 8
  %9 = getelementptr inbounds %struct.daemon, %struct.daemon* %8, i32 0, i32 7
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @slabhash_clear(i32* %13)
  %15 = load %struct.daemon*, %struct.daemon** %2, align 8
  %16 = getelementptr inbounds %struct.daemon, %struct.daemon* %15, i32 0, i32 7
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @slabhash_clear(i32* %19)
  %21 = load %struct.daemon*, %struct.daemon** %2, align 8
  %22 = getelementptr inbounds %struct.daemon, %struct.daemon* %21, i32 0, i32 10
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @local_zones_delete(i32* %23)
  %25 = load %struct.daemon*, %struct.daemon** %2, align 8
  %26 = getelementptr inbounds %struct.daemon, %struct.daemon* %25, i32 0, i32 10
  store i32* null, i32** %26, align 8
  %27 = load %struct.daemon*, %struct.daemon** %2, align 8
  %28 = getelementptr inbounds %struct.daemon, %struct.daemon* %27, i32 0, i32 9
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @respip_set_delete(i32* %29)
  %31 = load %struct.daemon*, %struct.daemon** %2, align 8
  %32 = getelementptr inbounds %struct.daemon, %struct.daemon* %31, i32 0, i32 9
  store i32* null, i32** %32, align 8
  %33 = load %struct.daemon*, %struct.daemon** %2, align 8
  %34 = getelementptr inbounds %struct.daemon, %struct.daemon* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @views_delete(i32* %35)
  %37 = load %struct.daemon*, %struct.daemon** %2, align 8
  %38 = getelementptr inbounds %struct.daemon, %struct.daemon* %37, i32 0, i32 8
  store i32* null, i32** %38, align 8
  %39 = load %struct.daemon*, %struct.daemon** %2, align 8
  %40 = getelementptr inbounds %struct.daemon, %struct.daemon* %39, i32 0, i32 7
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %1
  %46 = load %struct.daemon*, %struct.daemon** %2, align 8
  %47 = getelementptr inbounds %struct.daemon, %struct.daemon* %46, i32 0, i32 7
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @auth_zones_cleanup(i64 %50)
  br label %52

52:                                               ; preds = %45, %1
  %53 = load %struct.daemon*, %struct.daemon** %2, align 8
  %54 = getelementptr inbounds %struct.daemon, %struct.daemon* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @daemon_remote_clear(i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %72, %52
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.daemon*, %struct.daemon** %2, align 8
  %60 = getelementptr inbounds %struct.daemon, %struct.daemon* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.daemon*, %struct.daemon** %2, align 8
  %65 = getelementptr inbounds %struct.daemon, %struct.daemon* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @worker_delete(i32 %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %57

75:                                               ; preds = %57
  %76 = load %struct.daemon*, %struct.daemon** %2, align 8
  %77 = getelementptr inbounds %struct.daemon, %struct.daemon* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @free(i32* %78)
  %80 = load %struct.daemon*, %struct.daemon** %2, align 8
  %81 = getelementptr inbounds %struct.daemon, %struct.daemon* %80, i32 0, i32 5
  store i32* null, i32** %81, align 8
  %82 = load %struct.daemon*, %struct.daemon** %2, align 8
  %83 = getelementptr inbounds %struct.daemon, %struct.daemon* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load %struct.daemon*, %struct.daemon** %2, align 8
  %85 = getelementptr inbounds %struct.daemon, %struct.daemon* %84, i32 0, i32 4
  %86 = call i32 @alloc_clear_special(i32* %85)
  %87 = load %struct.daemon*, %struct.daemon** %2, align 8
  %88 = getelementptr inbounds %struct.daemon, %struct.daemon* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  ret void
}

declare dso_local i32 @log_assert(%struct.daemon*) #1

declare dso_local i32 @signal_handling_record(...) #1

declare dso_local i32 @log_thread_set(i32*) #1

declare dso_local i32 @slabhash_clear(i32*) #1

declare dso_local i32 @local_zones_delete(i32*) #1

declare dso_local i32 @respip_set_delete(i32*) #1

declare dso_local i32 @views_delete(i32*) #1

declare dso_local i32 @auth_zones_cleanup(i64) #1

declare dso_local i32 @daemon_remote_clear(i32) #1

declare dso_local i32 @worker_delete(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @alloc_clear_special(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
