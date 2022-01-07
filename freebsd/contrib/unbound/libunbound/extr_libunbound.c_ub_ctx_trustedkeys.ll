; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_trustedkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_trustedkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@UB_NOMEM = common dso_local global i32 0, align 4
@UB_AFTERFINAL = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_ctx_trustedkeys(%struct.ub_ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i8* @strdup(i8* %7)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @UB_NOMEM, align 4
  store i32 %12, i32* %3, align 4
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %14, i32 0, i32 0
  %16 = call i32 @lock_basic_lock(i32* %15)
  %17 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %22, i32 0, i32 0
  %24 = call i32 @lock_basic_unlock(i32* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i32, i32* @UB_AFTERFINAL, align 4
  store i32 %27, i32* %3, align 4
  br label %48

28:                                               ; preds = %13
  %29 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @cfg_strlist_insert(i32* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %28
  %39 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %39, i32 0, i32 0
  %41 = call i32 @lock_basic_unlock(i32* %40)
  %42 = load i32, i32* @UB_NOMEM, align 4
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %28
  %44 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %44, i32 0, i32 0
  %46 = call i32 @lock_basic_unlock(i32* %45)
  %47 = load i32, i32* @UB_NOERROR, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %38, %21, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cfg_strlist_insert(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
