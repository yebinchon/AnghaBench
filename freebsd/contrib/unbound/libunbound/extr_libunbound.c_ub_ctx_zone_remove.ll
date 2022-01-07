; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_zone_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_zone_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.local_zone = type { i32 }

@UB_SYNTAX = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_ctx_zone_remove(%struct.ub_ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.local_zone*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %12 = call i32 @ub_ctx_finalize(%struct.ub_ctx* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @parse_dname(i8* %18, i32** %7, i64* %9, i32* %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @UB_SYNTAX, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %17
  %24 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @lock_rw_wrlock(i32* %27)
  %29 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %36 = call %struct.local_zone* @local_zones_find(%struct.TYPE_3__* %31, i32* %32, i64 %33, i32 %34, i32 %35)
  store %struct.local_zone* %36, %struct.local_zone** %6, align 8
  %37 = icmp ne %struct.local_zone* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %23
  %39 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %43 = call i32 @local_zones_del_zone(%struct.TYPE_3__* %41, %struct.local_zone* %42)
  br label %44

44:                                               ; preds = %38, %23
  %45 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @lock_rw_unlock(i32* %48)
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @free(i32* %50)
  %52 = load i32, i32* @UB_NOERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %44, %21, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ub_ctx_finalize(%struct.ub_ctx*) #1

declare dso_local i32 @parse_dname(i8*, i32**, i64*, i32*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local %struct.local_zone* @local_zones_find(%struct.TYPE_3__*, i32*, i64, i32, i32) #1

declare dso_local i32 @local_zones_del_zone(%struct.TYPE_3__*, %struct.local_zone*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
