; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_resolve_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_resolve_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ctx_query = type { i32 }

@UB_INITFAIL = common dso_local global i32 0, align 4
@UB_NOMEM = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_resolve_event(%struct.ub_ctx* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ub_ctx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ctx_query*, align 8
  %17 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load i32*, i32** %15, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load i32*, i32** %15, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %7
  %23 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %24 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %23, i32 0, i32 2
  %25 = call i32 @lock_basic_lock(i32* %24)
  %26 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %22
  %31 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %32 = call i32 @context_finalize(%struct.ub_ctx* %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %36, i32 0, i32 2
  %38 = call i32 @lock_basic_unlock(i32* %37)
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %8, align 4
  br label %92

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %42, i32 0, i32 2
  %44 = call i32 @lock_basic_unlock(i32* %43)
  %45 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %41
  %50 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %51 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %52 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.TYPE_2__* @libworker_create_event(%struct.ub_ctx* %50, i32 %53)
  %55 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %56 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %55, i32 0, i32 0
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %56, align 8
  %57 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %58 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = icmp ne %struct.TYPE_2__* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* @UB_INITFAIL, align 4
  store i32 %62, i32* %8, align 4
  br label %92

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %41
  %65 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %66 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ub_comm_base_now(i32 %69)
  %71 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i8*, i8** %13, align 8
  %77 = call %struct.ctx_query* @context_new(%struct.ub_ctx* %71, i8* %72, i32 %73, i32 %74, i32* null, i32 %75, i8* %76)
  store %struct.ctx_query* %77, %struct.ctx_query** %16, align 8
  %78 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %79 = icmp ne %struct.ctx_query* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %64
  %81 = load i32, i32* @UB_NOMEM, align 4
  store i32 %81, i32* %8, align 4
  br label %92

82:                                               ; preds = %64
  %83 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %84 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @libworker_attach_mesh(%struct.ub_ctx* %83, %struct.ctx_query* %84, i32* %85)
  store i32 %86, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %17, align 4
  store i32 %89, i32* %8, align 4
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @UB_NOERROR, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %90, %88, %80, %61, %35
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @context_finalize(%struct.ub_ctx*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local %struct.TYPE_2__* @libworker_create_event(%struct.ub_ctx*, i32) #1

declare dso_local i32 @ub_comm_base_now(i32) #1

declare dso_local %struct.ctx_query* @context_new(%struct.ub_ctx*, i8*, i32, i32, i32*, i32, i8*) #1

declare dso_local i32 @libworker_attach_mesh(%struct.ub_ctx*, %struct.ctx_query*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
