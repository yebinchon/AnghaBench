; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_create_qp_1_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_create_qp_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp_1_0 = type { %struct.ibv_qp*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.ibv_pd_1_0*, i32, i32 }
%struct.ibv_qp = type { %struct.ibv_qp_1_0*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ibv_pd_1_0 = type { i32, i32 }
%struct.ibv_qp_init_attr_1_0 = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32 }
%struct.ibv_qp_init_attr = type { i32, i32, i32, i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_qp_1_0* @__ibv_create_qp_1_0(%struct.ibv_pd_1_0* %0, %struct.ibv_qp_init_attr_1_0* %1) #0 {
  %3 = alloca %struct.ibv_qp_1_0*, align 8
  %4 = alloca %struct.ibv_pd_1_0*, align 8
  %5 = alloca %struct.ibv_qp_init_attr_1_0*, align 8
  %6 = alloca %struct.ibv_qp*, align 8
  %7 = alloca %struct.ibv_qp_1_0*, align 8
  %8 = alloca %struct.ibv_qp_init_attr, align 8
  store %struct.ibv_pd_1_0* %0, %struct.ibv_pd_1_0** %4, align 8
  store %struct.ibv_qp_init_attr_1_0* %1, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %9 = call %struct.ibv_qp_1_0* @malloc(i32 56)
  store %struct.ibv_qp_1_0* %9, %struct.ibv_qp_1_0** %7, align 8
  %10 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  %11 = icmp ne %struct.ibv_qp_1_0* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.ibv_qp_1_0* null, %struct.ibv_qp_1_0** %3, align 8
  br label %115

13:                                               ; preds = %2
  %14 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %15 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %8, i32 0, i32 6
  store i32 %16, i32* %17, align 8
  %18 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %19 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %18, i32 0, i32 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %8, i32 0, i32 5
  store i32 %22, i32* %23, align 4
  %24 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %25 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %8, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %31 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %13
  %35 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %36 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  br label %41

40:                                               ; preds = %13
  br label %41

41:                                               ; preds = %40, %34
  %42 = phi i32* [ %39, %34 ], [ null, %40 ]
  %43 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %8, i32 0, i32 3
  store i32* %42, i32** %43, align 8
  %44 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %45 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %8, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %49 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %8, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %53 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %8, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.ibv_pd_1_0*, %struct.ibv_pd_1_0** %4, align 8
  %57 = getelementptr inbounds %struct.ibv_pd_1_0, %struct.ibv_pd_1_0* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.ibv_qp* @ibv_create_qp(i32 %58, %struct.ibv_qp_init_attr* %8)
  store %struct.ibv_qp* %59, %struct.ibv_qp** %6, align 8
  %60 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %61 = icmp ne %struct.ibv_qp* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %41
  %63 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  %64 = call i32 @free(%struct.ibv_qp_1_0* %63)
  store %struct.ibv_qp_1_0* null, %struct.ibv_qp_1_0** %3, align 8
  br label %115

65:                                               ; preds = %41
  %66 = load %struct.ibv_pd_1_0*, %struct.ibv_pd_1_0** %4, align 8
  %67 = getelementptr inbounds %struct.ibv_pd_1_0, %struct.ibv_pd_1_0* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  %70 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %72 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  %75 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ibv_pd_1_0*, %struct.ibv_pd_1_0** %4, align 8
  %77 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  %78 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %77, i32 0, i32 6
  store %struct.ibv_pd_1_0* %76, %struct.ibv_pd_1_0** %78, align 8
  %79 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %80 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %79, i32 0, i32 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  %83 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %82, i32 0, i32 5
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %83, align 8
  %84 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %85 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %84, i32 0, i32 3
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  %88 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %87, i32 0, i32 4
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %88, align 8
  %89 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %90 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  %93 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %92, i32 0, i32 3
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %93, align 8
  %94 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %95 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  %98 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %100 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  %103 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %105 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  %106 = getelementptr inbounds %struct.ibv_qp_1_0, %struct.ibv_qp_1_0* %105, i32 0, i32 0
  store %struct.ibv_qp* %104, %struct.ibv_qp** %106, align 8
  %107 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %8, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ibv_qp_init_attr_1_0*, %struct.ibv_qp_init_attr_1_0** %5, align 8
  %110 = getelementptr inbounds %struct.ibv_qp_init_attr_1_0, %struct.ibv_qp_init_attr_1_0* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  %112 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %113 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %112, i32 0, i32 0
  store %struct.ibv_qp_1_0* %111, %struct.ibv_qp_1_0** %113, align 8
  %114 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %7, align 8
  store %struct.ibv_qp_1_0* %114, %struct.ibv_qp_1_0** %3, align 8
  br label %115

115:                                              ; preds = %65, %62, %12
  %116 = load %struct.ibv_qp_1_0*, %struct.ibv_qp_1_0** %3, align 8
  ret %struct.ibv_qp_1_0* %116
}

declare dso_local %struct.ibv_qp_1_0* @malloc(i32) #1

declare dso_local %struct.ibv_qp* @ibv_create_qp(i32, %struct.ibv_qp_init_attr*) #1

declare dso_local i32 @free(%struct.ibv_qp_1_0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
