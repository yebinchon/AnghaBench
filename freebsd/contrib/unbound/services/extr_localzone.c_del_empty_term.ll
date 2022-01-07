; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_del_empty_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_del_empty_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i32 }
%struct.local_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.local_zone*, %struct.local_data*, i32*, i64, i32)* @del_empty_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_empty_term(%struct.local_zone* %0, %struct.local_data* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.local_zone*, align 8
  %7 = alloca %struct.local_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.local_zone* %0, %struct.local_zone** %6, align 8
  store %struct.local_data* %1, %struct.local_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  br label %11

11:                                               ; preds = %34, %5
  %12 = load %struct.local_data*, %struct.local_data** %7, align 8
  %13 = icmp ne %struct.local_data* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.local_data*, %struct.local_data** %7, align 8
  %16 = getelementptr inbounds %struct.local_data, %struct.local_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.local_data*, %struct.local_data** %7, align 8
  %21 = call i64 @is_terminal(%struct.local_data* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %14, %11
  %24 = phi i1 [ false, %14 ], [ false, %11 ], [ %22, %19 ]
  br i1 %24, label %25, label %43

25:                                               ; preds = %23
  %26 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %27 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %26, i32 0, i32 0
  %28 = load %struct.local_data*, %struct.local_data** %7, align 8
  %29 = call i32 @rbtree_delete(i32* %27, %struct.local_data* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @dname_is_root(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %43

34:                                               ; preds = %25
  %35 = call i32 @dname_remove_label(i32** %8, i64* %9)
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %10, align 4
  %38 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call %struct.local_data* @lz_find_node(%struct.local_zone* %38, i32* %39, i64 %40, i32 %41)
  store %struct.local_data* %42, %struct.local_data** %7, align 8
  br label %11

43:                                               ; preds = %33, %23
  ret void
}

declare dso_local i64 @is_terminal(%struct.local_data*) #1

declare dso_local i32 @rbtree_delete(i32*, %struct.local_data*) #1

declare dso_local i64 @dname_is_root(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local %struct.local_data* @lz_find_node(%struct.local_zone*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
