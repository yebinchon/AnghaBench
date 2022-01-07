; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_set_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@UB_AFTERFINAL = common dso_local global i32 0, align 4
@UB_SYNTAX = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_ctx_set_option(%struct.ub_ctx* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ub_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %8, i32 0, i32 0
  %10 = call i32 @lock_basic_lock(i32* %9)
  %11 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %16, i32 0, i32 0
  %18 = call i32 @lock_basic_unlock(i32* %17)
  %19 = load i32, i32* @UB_AFTERFINAL, align 4
  store i32 %19, i32* %4, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @config_set_option(i32 %25, i8* %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %20
  %31 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %31, i32 0, i32 0
  %33 = call i32 @lock_basic_unlock(i32* %32)
  %34 = load i32, i32* @UB_SYNTAX, align 4
  store i32 %34, i32* %4, align 4
  br label %40

35:                                               ; preds = %20
  %36 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %36, i32 0, i32 0
  %38 = call i32 @lock_basic_unlock(i32* %37)
  %39 = load i32, i32* @UB_NOERROR, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %30, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @config_set_option(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
