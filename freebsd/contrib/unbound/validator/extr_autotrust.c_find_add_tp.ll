; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_find_add_tp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_find_add_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { i32, i32 }
%struct.val_anchors = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"anchor cannot be with and without autotrust\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trust_anchor* (%struct.val_anchors*, i32*, i64, i64)* @find_add_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trust_anchor* @find_add_tp(%struct.val_anchors* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.trust_anchor*, align 8
  %6 = alloca %struct.val_anchors*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.trust_anchor*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @dname_count_labels(i32* %13)
  %15 = load i64, i64* %9, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @sldns_wirerr_get_class(i32* %16, i64 %17, i64 %18)
  %20 = call %struct.trust_anchor* @anchor_find(%struct.val_anchors* %11, i32* %12, i32 %14, i64 %15, i32 %19)
  store %struct.trust_anchor* %20, %struct.trust_anchor** %10, align 8
  %21 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %22 = icmp ne %struct.trust_anchor* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %25 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = call i32 @log_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %31 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %30, i32 0, i32 0
  %32 = call i32 @lock_basic_unlock(i32* %31)
  store %struct.trust_anchor* null, %struct.trust_anchor** %5, align 8
  br label %52

33:                                               ; preds = %23
  %34 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  store %struct.trust_anchor* %34, %struct.trust_anchor** %5, align 8
  br label %52

35:                                               ; preds = %4
  %36 = load %struct.val_anchors*, %struct.val_anchors** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @sldns_wirerr_get_class(i32* %39, i64 %40, i64 %41)
  %43 = call %struct.trust_anchor* @autr_tp_create(%struct.val_anchors* %36, i32* %37, i64 %38, i32 %42)
  store %struct.trust_anchor* %43, %struct.trust_anchor** %10, align 8
  %44 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %45 = icmp ne %struct.trust_anchor* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  store %struct.trust_anchor* null, %struct.trust_anchor** %5, align 8
  br label %52

47:                                               ; preds = %35
  %48 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %49 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %48, i32 0, i32 0
  %50 = call i32 @lock_basic_lock(i32* %49)
  %51 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  store %struct.trust_anchor* %51, %struct.trust_anchor** %5, align 8
  br label %52

52:                                               ; preds = %47, %46, %33, %28
  %53 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  ret %struct.trust_anchor* %53
}

declare dso_local %struct.trust_anchor* @anchor_find(%struct.val_anchors*, i32*, i32, i64, i32) #1

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @sldns_wirerr_get_class(i32*, i64, i64) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local %struct.trust_anchor* @autr_tp_create(%struct.val_anchors*, i32*, i64, i32) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
