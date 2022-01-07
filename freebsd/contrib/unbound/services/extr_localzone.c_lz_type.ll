; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_lz_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_reply = type { i32, i32 }
%struct.rbtree_type = type { i32 }
%struct.local_zone_override = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"local zone override to type %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, i32*, i64, i32, %struct.comm_reply*, %struct.rbtree_type*, i32*, i8**, i32)* @lz_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz_type(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32 %6, %struct.comm_reply* %7, %struct.rbtree_type* %8, i32* %9, i8** %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.comm_reply*, align 8
  %22 = alloca %struct.rbtree_type*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.local_zone_override*, align 8
  store i32* %0, i32** %14, align 8
  store i64 %1, i64* %15, align 8
  store i32* %2, i32** %16, align 8
  store i64 %3, i64* %17, align 8
  store i32* %4, i32** %18, align 8
  store i64 %5, i64* %19, align 8
  store i32 %6, i32* %20, align 4
  store %struct.comm_reply* %7, %struct.comm_reply** %21, align 8
  store %struct.rbtree_type* %8, %struct.rbtree_type** %22, align 8
  store i32* %9, i32** %23, align 8
  store i8** %10, i8*** %24, align 8
  store i32 %11, i32* %25, align 4
  %27 = load %struct.comm_reply*, %struct.comm_reply** %21, align 8
  %28 = icmp ne %struct.comm_reply* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %12
  %30 = load %struct.rbtree_type*, %struct.rbtree_type** %22, align 8
  %31 = icmp ne %struct.rbtree_type* %30, null
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load %struct.rbtree_type*, %struct.rbtree_type** %22, align 8
  %34 = load %struct.comm_reply*, %struct.comm_reply** %21, align 8
  %35 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %34, i32 0, i32 1
  %36 = load %struct.comm_reply*, %struct.comm_reply** %21, align 8
  %37 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @addr_tree_lookup(%struct.rbtree_type* %33, i32* %35, i32 %38)
  %40 = inttoptr i64 %39 to %struct.local_zone_override*
  store %struct.local_zone_override* %40, %struct.local_zone_override** %26, align 8
  %41 = load %struct.local_zone_override*, %struct.local_zone_override** %26, align 8
  %42 = icmp ne %struct.local_zone_override* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %32
  %44 = load %struct.local_zone_override*, %struct.local_zone_override** %26, align 8
  %45 = getelementptr inbounds %struct.local_zone_override, %struct.local_zone_override* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i32, i32* @VERB_ALGO, align 4
  %50 = load %struct.local_zone_override*, %struct.local_zone_override** %26, align 8
  %51 = getelementptr inbounds %struct.local_zone_override, %struct.local_zone_override* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @local_zone_type2str(i32 %52)
  %54 = call i32 @verbose(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.local_zone_override*, %struct.local_zone_override** %26, align 8
  %56 = getelementptr inbounds %struct.local_zone_override, %struct.local_zone_override* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  br label %79

58:                                               ; preds = %43, %32
  br label %59

59:                                               ; preds = %58, %29, %12
  %60 = load i32*, i32** %14, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** %16, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %20, align 4
  store i32 %66, i32* %13, align 4
  br label %79

67:                                               ; preds = %62
  %68 = load i32*, i32** %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i32*, i32** %18, align 8
  %73 = load i64, i64* %19, align 8
  %74 = load i32, i32* %20, align 4
  %75 = load i32*, i32** %23, align 8
  %76 = load i8**, i8*** %24, align 8
  %77 = load i32, i32* %25, align 4
  %78 = call i32 @local_data_find_tag_action(i32* %68, i64 %69, i32* %70, i64 %71, i32* %72, i64 %73, i32 %74, i32* %75, i8** %76, i32 %77)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %67, %65, %48
  %80 = load i32, i32* %13, align 4
  ret i32 %80
}

declare dso_local i64 @addr_tree_lookup(%struct.rbtree_type*, i32*, i32) #1

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @local_zone_type2str(i32) #1

declare dso_local i32 @local_data_find_tag_action(i32*, i64, i32*, i64, i32*, i64, i32, i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
