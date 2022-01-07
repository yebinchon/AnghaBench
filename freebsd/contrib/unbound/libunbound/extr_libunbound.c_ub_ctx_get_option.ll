; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_get_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_get_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UB_NOERROR = common dso_local global i32 0, align 4
@UB_SYNTAX = common dso_local global i32 0, align 4
@UB_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_ctx_get_option(%struct.ub_ctx* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %8, i32 0, i32 0
  %10 = call i32 @lock_basic_lock(i32* %9)
  %11 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = call i32 @config_get_option_collate(i32 %15, i8* %16, i8** %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %19, i32 0, i32 0
  %21 = call i32 @lock_basic_unlock(i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @UB_NOERROR, align 4
  store i32 %25, i32* %7, align 4
  br label %38

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @UB_SYNTAX, align 4
  store i32 %30, i32* %7, align 4
  br label %37

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @UB_NOMEM, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %29
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @config_get_option_collate(i32, i8*, i8**) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
