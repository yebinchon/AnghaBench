; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_dict.c__search.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_dict.c__search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashentry = type { i32, %struct.hashentry* }
%struct.TYPE_3__ = type { i64, %struct.hashentry** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hashentry* (%struct.TYPE_3__*, i32)* @_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hashentry* @_search(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.hashentry*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.hashentry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @heim_get_hash(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.hashentry**, %struct.hashentry*** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = urem i64 %13, %16
  %18 = getelementptr inbounds %struct.hashentry*, %struct.hashentry** %12, i64 %17
  %19 = load %struct.hashentry*, %struct.hashentry** %18, align 8
  store %struct.hashentry* %19, %struct.hashentry** %7, align 8
  br label %20

20:                                               ; preds = %33, %2
  %21 = load %struct.hashentry*, %struct.hashentry** %7, align 8
  %22 = icmp ne %struct.hashentry* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.hashentry*, %struct.hashentry** %7, align 8
  %26 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @heim_cmp(i32 %24, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load %struct.hashentry*, %struct.hashentry** %7, align 8
  store %struct.hashentry* %31, %struct.hashentry** %3, align 8
  br label %38

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.hashentry*, %struct.hashentry** %7, align 8
  %35 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %34, i32 0, i32 1
  %36 = load %struct.hashentry*, %struct.hashentry** %35, align 8
  store %struct.hashentry* %36, %struct.hashentry** %7, align 8
  br label %20

37:                                               ; preds = %20
  store %struct.hashentry* null, %struct.hashentry** %3, align 8
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.hashentry*, %struct.hashentry** %3, align 8
  ret %struct.hashentry* %39
}

declare dso_local i64 @heim_get_hash(i32) #1

declare dso_local i64 @heim_cmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
