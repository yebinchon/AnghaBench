; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { %struct.ub_ctx*, i32, i32, i32, i32*, i32* }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ub_ctx* @ub_ctx_create() #0 {
  %1 = alloca %struct.ub_ctx*, align 8
  %2 = alloca %struct.ub_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call %struct.ub_ctx* (...) @ub_ctx_create_nopipe()
  store %struct.ub_ctx* %5, %struct.ub_ctx** %2, align 8
  %6 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %7 = icmp ne %struct.ub_ctx* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.ub_ctx* null, %struct.ub_ctx** %1, align 8
  br label %85

9:                                                ; preds = %0
  %10 = call i8* (...) @tube_create()
  %11 = bitcast i8* %10 to i32*
  %12 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %12, i32 0, i32 4
  store i32* %11, i32** %13, align 8
  %14 = icmp eq i32* %11, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %9
  %16 = load i32, i32* @errno, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ub_randfree(i32 %19)
  %21 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %21, i32 0, i32 0
  %23 = load %struct.ub_ctx*, %struct.ub_ctx** %22, align 8
  %24 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @config_delete(i32 %25)
  %27 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %27, i32 0, i32 1
  %29 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %29, i32 0, i32 0
  %31 = load %struct.ub_ctx*, %struct.ub_ctx** %30, align 8
  %32 = call i32 @modstack_desetup(i32* %28, %struct.ub_ctx* %31)
  %33 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %33, i32 0, i32 0
  %35 = load %struct.ub_ctx*, %struct.ub_ctx** %34, align 8
  %36 = call i32 @edns_known_options_delete(%struct.ub_ctx* %35)
  %37 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %37, i32 0, i32 0
  %39 = load %struct.ub_ctx*, %struct.ub_ctx** %38, align 8
  %40 = call i32 @free(%struct.ub_ctx* %39)
  %41 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %42 = call i32 @free(%struct.ub_ctx* %41)
  %43 = load i32, i32* %3, align 4
  store i32 %43, i32* @errno, align 4
  store %struct.ub_ctx* null, %struct.ub_ctx** %1, align 8
  br label %85

44:                                               ; preds = %9
  %45 = call i8* (...) @tube_create()
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %47, i32 0, i32 5
  store i32* %46, i32** %48, align 8
  %49 = icmp eq i32* %46, null
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = load i32, i32* @errno, align 4
  store i32 %51, i32* %4, align 4
  %52 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @tube_delete(i32* %54)
  %56 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %57 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ub_randfree(i32 %58)
  %60 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %60, i32 0, i32 0
  %62 = load %struct.ub_ctx*, %struct.ub_ctx** %61, align 8
  %63 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @config_delete(i32 %64)
  %66 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %67 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %66, i32 0, i32 1
  %68 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %69 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %68, i32 0, i32 0
  %70 = load %struct.ub_ctx*, %struct.ub_ctx** %69, align 8
  %71 = call i32 @modstack_desetup(i32* %67, %struct.ub_ctx* %70)
  %72 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %73 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %72, i32 0, i32 0
  %74 = load %struct.ub_ctx*, %struct.ub_ctx** %73, align 8
  %75 = call i32 @edns_known_options_delete(%struct.ub_ctx* %74)
  %76 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %76, i32 0, i32 0
  %78 = load %struct.ub_ctx*, %struct.ub_ctx** %77, align 8
  %79 = call i32 @free(%struct.ub_ctx* %78)
  %80 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %81 = call i32 @free(%struct.ub_ctx* %80)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* @errno, align 4
  store %struct.ub_ctx* null, %struct.ub_ctx** %1, align 8
  br label %85

83:                                               ; preds = %44
  %84 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  store %struct.ub_ctx* %84, %struct.ub_ctx** %1, align 8
  br label %85

85:                                               ; preds = %83, %50, %15, %8
  %86 = load %struct.ub_ctx*, %struct.ub_ctx** %1, align 8
  ret %struct.ub_ctx* %86
}

declare dso_local %struct.ub_ctx* @ub_ctx_create_nopipe(...) #1

declare dso_local i8* @tube_create(...) #1

declare dso_local i32 @ub_randfree(i32) #1

declare dso_local i32 @config_delete(i32) #1

declare dso_local i32 @modstack_desetup(i32*, %struct.ub_ctx*) #1

declare dso_local i32 @edns_known_options_delete(%struct.ub_ctx*) #1

declare dso_local i32 @free(%struct.ub_ctx*) #1

declare dso_local i32 @tube_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
