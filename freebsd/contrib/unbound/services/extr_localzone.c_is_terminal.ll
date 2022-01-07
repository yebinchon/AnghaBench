; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_is_terminal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_is_terminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_data = type { i32, i32, i32 }

@RBTREE_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.local_data*)* @is_terminal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_terminal(%struct.local_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.local_data*, align 8
  %4 = alloca %struct.local_data*, align 8
  store %struct.local_data* %0, %struct.local_data** %3, align 8
  %5 = load %struct.local_data*, %struct.local_data** %3, align 8
  %6 = getelementptr inbounds %struct.local_data, %struct.local_data* %5, i32 0, i32 2
  %7 = call i64 @rbtree_next(i32* %6)
  %8 = inttoptr i64 %7 to %struct.local_data*
  store %struct.local_data* %8, %struct.local_data** %4, align 8
  %9 = load %struct.local_data*, %struct.local_data** %4, align 8
  %10 = load i64, i64* @RBTREE_NULL, align 8
  %11 = inttoptr i64 %10 to %struct.local_data*
  %12 = icmp eq %struct.local_data* %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.local_data*, %struct.local_data** %4, align 8
  %16 = getelementptr inbounds %struct.local_data, %struct.local_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.local_data*, %struct.local_data** %4, align 8
  %19 = getelementptr inbounds %struct.local_data, %struct.local_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.local_data*, %struct.local_data** %3, align 8
  %22 = getelementptr inbounds %struct.local_data, %struct.local_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.local_data*, %struct.local_data** %3, align 8
  %25 = getelementptr inbounds %struct.local_data, %struct.local_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @dname_strict_subdomain(i32 %17, i32 %20, i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @rbtree_next(i32*) #1

declare dso_local i64 @dname_strict_subdomain(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
