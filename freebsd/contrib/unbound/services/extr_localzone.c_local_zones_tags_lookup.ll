; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_tags_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_tags_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i64, i64, i32, %struct.local_zone*, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.local_zone* }
%struct.local_zones = type { i32 }

@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.local_zone* @local_zones_tags_lookup(%struct.local_zones* %0, i32* %1, i64 %2, i32 %3, i64 %4, i64 %5, i32* %6, i64 %7, i32 %8) #0 {
  %10 = alloca %struct.local_zone*, align 8
  %11 = alloca %struct.local_zones*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.local_zone*, align 8
  %22 = alloca %struct.local_zone, align 8
  %23 = alloca i32, align 4
  store %struct.local_zones* %0, %struct.local_zones** %11, align 8
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  store i32* null, i32** %20, align 8
  %24 = load i64, i64* %16, align 8
  %25 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %9
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @dname_is_root(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = call i32 @dname_remove_label(i32** %12, i64* %13)
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %31, %27, %9
  %36 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %22, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.local_zone* %22, %struct.local_zone** %37, align 8
  %38 = load i64, i64* %15, align 8
  %39 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %22, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %22, i32 0, i32 6
  store i32* %40, i32** %41, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %22, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* %14, align 4
  %45 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %22, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = load %struct.local_zones*, %struct.local_zones** %11, align 8
  %47 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %46, i32 0, i32 0
  %48 = call i32 @rbtree_find_less_equal(i32* %47, %struct.local_zone* %22, i32** %20)
  %49 = load i32*, i32** %20, align 8
  %50 = bitcast i32* %49 to %struct.local_zone*
  store %struct.local_zone* %50, %struct.local_zone** %21, align 8
  %51 = load %struct.local_zone*, %struct.local_zone** %21, align 8
  %52 = icmp ne %struct.local_zone* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %35
  %54 = load %struct.local_zone*, %struct.local_zone** %21, align 8
  %55 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %15, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %35
  store %struct.local_zone* null, %struct.local_zone** %10, align 8
  br label %108

60:                                               ; preds = %53
  %61 = load %struct.local_zone*, %struct.local_zone** %21, align 8
  %62 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.local_zone*, %struct.local_zone** %21, align 8
  %65 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %22, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %22, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dname_lab_cmp(i32* %63, i32 %66, i32* %68, i32 %70, i32* %23)
  br label %72

72:                                               ; preds = %102, %60
  %73 = load %struct.local_zone*, %struct.local_zone** %21, align 8
  %74 = icmp ne %struct.local_zone* %73, null
  br i1 %74, label %75, label %106

75:                                               ; preds = %72
  %76 = load %struct.local_zone*, %struct.local_zone** %21, align 8
  %77 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %23, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %75
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %81
  %85 = load %struct.local_zone*, %struct.local_zone** %21, align 8
  %86 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.local_zone*, %struct.local_zone** %21, align 8
  %91 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.local_zone*, %struct.local_zone** %21, align 8
  %94 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %17, align 8
  %97 = load i64, i64* %18, align 8
  %98 = call i64 @taglist_intersect(i32 %92, i32 %95, i32* %96, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89, %84, %81
  br label %106

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %75
  %103 = load %struct.local_zone*, %struct.local_zone** %21, align 8
  %104 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %103, i32 0, i32 3
  %105 = load %struct.local_zone*, %struct.local_zone** %104, align 8
  store %struct.local_zone* %105, %struct.local_zone** %21, align 8
  br label %72

106:                                              ; preds = %100, %72
  %107 = load %struct.local_zone*, %struct.local_zone** %21, align 8
  store %struct.local_zone* %107, %struct.local_zone** %10, align 8
  br label %108

108:                                              ; preds = %106, %59
  %109 = load %struct.local_zone*, %struct.local_zone** %10, align 8
  ret %struct.local_zone* %109
}

declare dso_local i32 @dname_is_root(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local i32 @rbtree_find_less_equal(i32*, %struct.local_zone*, i32**) #1

declare dso_local i32 @dname_lab_cmp(i32*, i32, i32*, i32, i32*) #1

declare dso_local i64 @taglist_intersect(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
