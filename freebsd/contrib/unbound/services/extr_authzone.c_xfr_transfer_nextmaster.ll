; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_transfer_nextmaster.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_transfer_nextmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.TYPE_5__*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*)* @xfr_transfer_nextmaster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_transfer_nextmaster(%struct.auth_xfer* %0) #0 {
  %2 = alloca %struct.auth_xfer*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %2, align 8
  %3 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %4 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %3, i32 0, i32 0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %11 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %141

17:                                               ; preds = %9, %1
  %18 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %19 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %17
  %25 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %26 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %33 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %35, align 8
  %36 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %37 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  br label %141

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43, %17
  %45 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %46 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %93

51:                                               ; preds = %44
  %52 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %53 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  store i32* null, i32** %55, align 8
  %56 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %57 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %62 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %64, align 8
  %65 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %66 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = icmp ne %struct.TYPE_5__* %69, null
  br i1 %70, label %71, label %92

71:                                               ; preds = %51
  %72 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %73 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = icmp ne %struct.TYPE_4__* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %71
  %81 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %82 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %89 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store %struct.TYPE_4__* %87, %struct.TYPE_4__** %91, align 8
  br label %92

92:                                               ; preds = %80, %71, %51
  br label %141

93:                                               ; preds = %44
  %94 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %95 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = icmp ne %struct.TYPE_5__* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %141

101:                                              ; preds = %93
  %102 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %103 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %110 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store %struct.TYPE_5__* %108, %struct.TYPE_5__** %112, align 8
  %113 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %114 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = icmp ne %struct.TYPE_5__* %117, null
  br i1 %118, label %119, label %140

119:                                              ; preds = %101
  %120 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %121 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = icmp ne %struct.TYPE_4__* %126, null
  br i1 %127, label %128, label %140

128:                                              ; preds = %119
  %129 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %130 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load %struct.auth_xfer*, %struct.auth_xfer** %2, align 8
  %137 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  store %struct.TYPE_4__* %135, %struct.TYPE_4__** %139, align 8
  br label %140

140:                                              ; preds = %128, %119, %101
  br label %141

141:                                              ; preds = %140, %100, %92, %42, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
