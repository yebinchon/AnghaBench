; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_zone.c_ldns_dnssec_zone_hashed_names_from_nsec3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_zone.c_ldns_dnssec_zone_hashed_names_from_nsec3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32*, i32* }

@ldns_hashed_names_node_free = common dso_local global i32 0, align 4
@ldns_dname_compare_v = common dso_local global i32 0, align 4
@LDNS_RBTREE_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*)* @ldns_dnssec_zone_hashed_names_from_nsec3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldns_dnssec_zone_hashed_names_from_nsec3(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @ldns_hashed_names_node_free, align 4
  %24 = call i32 @ldns_traverse_postorder(i32* %22, i32 %23, i32* null)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @LDNS_FREE(i32* %27)
  br label %29

29:                                               ; preds = %19, %2
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load i32, i32* @ldns_dname_compare_v, align 4
  %34 = call i32* @ldns_rbtree_create(i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %63

42:                                               ; preds = %29
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_9__* @ldns_rbtree_first(i32 %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %5, align 8
  br label %47

47:                                               ; preds = %60, %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @LDNS_RBTREE_NULL, align 8
  %50 = icmp ne %struct.TYPE_9__* %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %6, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @ldns_dnssec_name_make_hashed_name(%struct.TYPE_10__* %56, i32* %57, i32* %58)
  br label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = call %struct.TYPE_9__* @ldns_rbtree_next(%struct.TYPE_9__* %61)
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %5, align 8
  br label %47

63:                                               ; preds = %41, %47
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ldns_traverse_postorder(i32*, i32, i32*) #1

declare dso_local i32 @LDNS_FREE(i32*) #1

declare dso_local i32* @ldns_rbtree_create(i32) #1

declare dso_local %struct.TYPE_9__* @ldns_rbtree_first(i32) #1

declare dso_local i32 @ldns_dnssec_name_make_hashed_name(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @ldns_rbtree_next(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
