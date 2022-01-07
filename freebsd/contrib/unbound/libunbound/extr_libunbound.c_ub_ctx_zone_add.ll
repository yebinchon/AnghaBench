; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_zone_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_zone_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.local_zone = type { i32, i32 }

@UB_SYNTAX = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4
@UB_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_ctx_zone_add(%struct.ub_ctx* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ub_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.local_zone*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %15 = call i32 @ub_ctx_finalize(%struct.ub_ctx* %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %4, align 4
  br label %90

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @local_zone_str2type(i8* %21, i32* %8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @UB_SYNTAX, align 4
  store i32 %25, i32* %4, align 4
  br label %90

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @parse_dname(i8* %27, i32** %10, i64* %12, i32* %11)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @UB_SYNTAX, align 4
  store i32 %31, i32* %4, align 4
  br label %90

32:                                               ; preds = %26
  %33 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @lock_rw_wrlock(i32* %36)
  %38 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %45 = call %struct.local_zone* @local_zones_find(%struct.TYPE_3__* %40, i32* %41, i64 %42, i32 %43, i32 %44)
  store %struct.local_zone* %45, %struct.local_zone** %9, align 8
  %46 = icmp ne %struct.local_zone* %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %32
  %48 = load %struct.local_zone*, %struct.local_zone** %9, align 8
  %49 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %48, i32 0, i32 1
  %50 = call i32 @lock_rw_wrlock(i32* %49)
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.local_zone*, %struct.local_zone** %9, align 8
  %53 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.local_zone*, %struct.local_zone** %9, align 8
  %55 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %54, i32 0, i32 1
  %56 = call i32 @lock_rw_unlock(i32* %55)
  %57 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @lock_rw_unlock(i32* %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @free(i32* %62)
  %64 = load i32, i32* @UB_NOERROR, align 4
  store i32 %64, i32* %4, align 4
  br label %90

65:                                               ; preds = %32
  %66 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @local_zones_add_zone(%struct.TYPE_3__* %68, i32* %69, i64 %70, i32 %71, i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %65
  %77 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i32 @lock_rw_unlock(i32* %80)
  %82 = load i32, i32* @UB_NOMEM, align 4
  store i32 %82, i32* %4, align 4
  br label %90

83:                                               ; preds = %65
  %84 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = call i32 @lock_rw_unlock(i32* %87)
  %89 = load i32, i32* @UB_NOERROR, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %83, %76, %47, %30, %24, %18
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @ub_ctx_finalize(%struct.ub_ctx*) #1

declare dso_local i32 @local_zone_str2type(i8*, i32*) #1

declare dso_local i32 @parse_dname(i8*, i32**, i64*, i32*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local %struct.local_zone* @local_zones_find(%struct.TYPE_3__*, i32*, i64, i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @local_zones_add_zone(%struct.TYPE_3__*, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
