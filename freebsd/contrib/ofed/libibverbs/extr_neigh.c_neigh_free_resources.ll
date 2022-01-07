; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_neigh_free_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_neigh_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_neigh_handler = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @neigh_free_resources(%struct.get_neigh_handler* %0) #0 {
  %2 = alloca %struct.get_neigh_handler*, align 8
  store %struct.get_neigh_handler* %0, %struct.get_neigh_handler** %2, align 8
  %3 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %4 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %3, i32 0, i32 7
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %9 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %8, i32 0, i32 7
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @rtnl_neigh_put(i32* %10)
  %12 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %13 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %12, i32 0, i32 7
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %16 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %21 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @nl_addr_put(i32* %22)
  %24 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %25 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %24, i32 0, i32 6
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %28 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %33 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @nl_addr_put(i32* %34)
  %36 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %37 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %36, i32 0, i32 5
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %40 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %45 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @nl_addr_put(i32* %46)
  %48 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %49 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %48, i32 0, i32 4
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %52 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %57 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @nl_cache_mngt_unprovide(i32* %58)
  %60 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %61 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @nl_cache_free(i32* %62)
  %64 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %65 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %64, i32 0, i32 3
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %55, %50
  %67 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %68 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %73 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @nl_cache_mngt_unprovide(i32* %74)
  %76 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %77 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @nl_cache_free(i32* %78)
  %80 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %81 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %80, i32 0, i32 2
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %71, %66
  %83 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %84 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %89 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @nl_cache_mngt_unprovide(i32* %90)
  %92 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %93 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @nl_cache_free(i32* %94)
  %96 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %97 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %96, i32 0, i32 1
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %87, %82
  %99 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %100 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %105 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @nl_close(i32* %106)
  %108 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %109 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @nl_socket_free(i32* %110)
  %112 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %2, align 8
  %113 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %112, i32 0, i32 0
  store i32* null, i32** %113, align 8
  br label %114

114:                                              ; preds = %103, %98
  ret void
}

declare dso_local i32 @rtnl_neigh_put(i32*) #1

declare dso_local i32 @nl_addr_put(i32*) #1

declare dso_local i32 @nl_cache_mngt_unprovide(i32*) #1

declare dso_local i32 @nl_cache_free(i32*) #1

declare dso_local i32 @nl_close(i32*) #1

declare dso_local i32 @nl_socket_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
