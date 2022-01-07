; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_addrtree_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/edns-subnet/extr_addrtree.c_addrtree_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrnode = type { i64, i64, %struct.addredge**, i64 }
%struct.addredge = type { i64, %struct.addrnode*, i32 }
%struct.addrtree = type { %struct.addrnode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.addrnode* @addrtree_find(%struct.addrtree* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.addrnode*, align 8
  %6 = alloca %struct.addrtree*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.addrnode*, align 8
  %11 = alloca %struct.addredge*, align 8
  %12 = alloca i64, align 8
  store %struct.addrtree* %0, %struct.addrtree** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.addrtree*, %struct.addrtree** %6, align 8
  %14 = getelementptr inbounds %struct.addrtree, %struct.addrtree* %13, i32 0, i32 0
  %15 = load %struct.addrnode*, %struct.addrnode** %14, align 8
  store %struct.addrnode* %15, %struct.addrnode** %10, align 8
  store %struct.addredge* null, %struct.addredge** %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %17 = icmp ne %struct.addrnode* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @log_assert(i32 %18)
  br label %20

20:                                               ; preds = %4, %108
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp sle i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @log_assert(i32 %24)
  %26 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %27 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %20
  %31 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %32 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %30
  %37 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %38 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp sge i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @log_assert(i32 %42)
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %46 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %36
  %50 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %51 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55, %36
  %60 = load %struct.addrtree*, %struct.addrtree** %6, align 8
  %61 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %62 = call i32 @lru_update(%struct.addrtree* %60, %struct.addrnode* %61)
  %63 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  store %struct.addrnode* %63, %struct.addrnode** %5, align 8
  br label %122

64:                                               ; preds = %55, %49
  br label %65

65:                                               ; preds = %64, %30, %20
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store %struct.addrnode* null, %struct.addrnode** %5, align 8
  br label %122

70:                                               ; preds = %65
  %71 = load %struct.addrnode*, %struct.addrnode** %10, align 8
  %72 = getelementptr inbounds %struct.addrnode, %struct.addrnode* %71, i32 0, i32 2
  %73 = load %struct.addredge**, %struct.addredge*** %72, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call i64 @getbit(i32* %74, i64 %75, i64 %76)
  %78 = getelementptr inbounds %struct.addredge*, %struct.addredge** %73, i64 %77
  %79 = load %struct.addredge*, %struct.addredge** %78, align 8
  store %struct.addredge* %79, %struct.addredge** %11, align 8
  %80 = load %struct.addredge*, %struct.addredge** %11, align 8
  %81 = icmp ne %struct.addredge* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %70
  %83 = load %struct.addredge*, %struct.addredge** %11, align 8
  %84 = getelementptr inbounds %struct.addredge, %struct.addredge* %83, i32 0, i32 1
  %85 = load %struct.addrnode*, %struct.addrnode** %84, align 8
  %86 = icmp ne %struct.addrnode* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %82, %70
  store %struct.addrnode* null, %struct.addrnode** %5, align 8
  br label %122

88:                                               ; preds = %82
  %89 = load %struct.addredge*, %struct.addredge** %11, align 8
  %90 = getelementptr inbounds %struct.addredge, %struct.addredge* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store %struct.addrnode* null, %struct.addrnode** %5, align 8
  br label %122

95:                                               ; preds = %88
  %96 = load %struct.addredge*, %struct.addredge** %11, align 8
  %97 = getelementptr inbounds %struct.addredge, %struct.addredge* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.addredge*, %struct.addredge** %11, align 8
  %100 = getelementptr inbounds %struct.addredge, %struct.addredge* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @issub(i32 %98, i64 %101, i32* %102, i64 %103, i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %95
  store %struct.addrnode* null, %struct.addrnode** %5, align 8
  br label %122

108:                                              ; preds = %95
  %109 = load i64, i64* %12, align 8
  %110 = load %struct.addredge*, %struct.addredge** %11, align 8
  %111 = getelementptr inbounds %struct.addredge, %struct.addredge* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %109, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @log_assert(i32 %114)
  %116 = load %struct.addredge*, %struct.addredge** %11, align 8
  %117 = getelementptr inbounds %struct.addredge, %struct.addredge* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %12, align 8
  %119 = load %struct.addredge*, %struct.addredge** %11, align 8
  %120 = getelementptr inbounds %struct.addredge, %struct.addredge* %119, i32 0, i32 1
  %121 = load %struct.addrnode*, %struct.addrnode** %120, align 8
  store %struct.addrnode* %121, %struct.addrnode** %10, align 8
  br label %20

122:                                              ; preds = %107, %94, %87, %69, %59
  %123 = load %struct.addrnode*, %struct.addrnode** %5, align 8
  ret %struct.addrnode* %123
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @lru_update(%struct.addrtree*, %struct.addrnode*) #1

declare dso_local i64 @getbit(i32*, i64, i64) #1

declare dso_local i32 @issub(i32, i64, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
