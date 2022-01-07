; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_empty_nonterminal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_empty_nonterminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.query_info = type { i32 }
%struct.auth_data = type { i32, i32, i32* }

@RBTREE_NULL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.query_info*, %struct.auth_data*)* @az_empty_nonterminal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_empty_nonterminal(%struct.auth_zone* %0, %struct.query_info* %1, %struct.auth_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_zone*, align 8
  %6 = alloca %struct.query_info*, align 8
  %7 = alloca %struct.auth_data*, align 8
  %8 = alloca %struct.auth_data*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %5, align 8
  store %struct.query_info* %1, %struct.query_info** %6, align 8
  store %struct.auth_data* %2, %struct.auth_data** %7, align 8
  %9 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %10 = icmp ne %struct.auth_data* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  %13 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %12, i32 0, i32 0
  %14 = call i64 @rbtree_first(i32* %13)
  %15 = inttoptr i64 %14 to %struct.auth_data*
  store %struct.auth_data* %15, %struct.auth_data** %8, align 8
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %18 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %17, i32 0, i32 1
  %19 = call i64 @rbtree_next(i32* %18)
  %20 = inttoptr i64 %19 to %struct.auth_data*
  store %struct.auth_data* %20, %struct.auth_data** %8, align 8
  br label %21

21:                                               ; preds = %16, %11
  br label %22

22:                                               ; preds = %37, %21
  %23 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %24 = icmp ne %struct.auth_data* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %27 = bitcast %struct.auth_data* %26 to i32*
  %28 = load i32*, i32** @RBTREE_NULL, align 8
  %29 = icmp ne i32* %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %32 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br label %35

35:                                               ; preds = %30, %25, %22
  %36 = phi i1 [ false, %25 ], [ false, %22 ], [ %34, %30 ]
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %39 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %38, i32 0, i32 1
  %40 = call i64 @rbtree_next(i32* %39)
  %41 = inttoptr i64 %40 to %struct.auth_data*
  store %struct.auth_data* %41, %struct.auth_data** %8, align 8
  br label %22

42:                                               ; preds = %35
  %43 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %44 = bitcast %struct.auth_data* %43 to i32*
  %45 = load i32*, i32** @RBTREE_NULL, align 8
  %46 = icmp eq i32* %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %49 = icmp ne %struct.auth_data* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %42
  store i32 0, i32* %4, align 4
  br label %62

51:                                               ; preds = %47
  %52 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %53 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.query_info*, %struct.query_info** %6, align 8
  %56 = getelementptr inbounds %struct.query_info, %struct.query_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @dname_strict_subdomain_c(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %62

61:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60, %50
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @rbtree_first(i32*) #1

declare dso_local i64 @rbtree_next(i32*) #1

declare dso_local i64 @dname_strict_subdomain_c(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
