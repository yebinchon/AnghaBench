; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_global_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_global_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autr_global_data = type { i32 }

@probetree_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.autr_global_data* @autr_global_create() #0 {
  %1 = alloca %struct.autr_global_data*, align 8
  %2 = alloca %struct.autr_global_data*, align 8
  %3 = call i64 @malloc(i32 4)
  %4 = inttoptr i64 %3 to %struct.autr_global_data*
  store %struct.autr_global_data* %4, %struct.autr_global_data** %2, align 8
  %5 = load %struct.autr_global_data*, %struct.autr_global_data** %2, align 8
  %6 = icmp ne %struct.autr_global_data* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.autr_global_data* null, %struct.autr_global_data** %1, align 8
  br label %13

8:                                                ; preds = %0
  %9 = load %struct.autr_global_data*, %struct.autr_global_data** %2, align 8
  %10 = getelementptr inbounds %struct.autr_global_data, %struct.autr_global_data* %9, i32 0, i32 0
  %11 = call i32 @rbtree_init(i32* %10, i32* @probetree_cmp)
  %12 = load %struct.autr_global_data*, %struct.autr_global_data** %2, align 8
  store %struct.autr_global_data* %12, %struct.autr_global_data** %1, align 8
  br label %13

13:                                               ; preds = %8, %7
  %14 = load %struct.autr_global_data*, %struct.autr_global_data** %1, align 8
  ret %struct.autr_global_data* %14
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
