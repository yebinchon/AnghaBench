; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_array.c_ck_array_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_array.c_ck_array_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_array = type { %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ck_array_deinit(%struct.ck_array* %0, i32 %1) #0 {
  %3 = alloca %struct.ck_array*, align 8
  %4 = alloca i32, align 4
  store %struct.ck_array* %0, %struct.ck_array** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ck_array*, %struct.ck_array** %3, align 8
  %6 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %8, align 8
  %10 = load %struct.ck_array*, %struct.ck_array** %3, align 8
  %11 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load %struct.ck_array*, %struct.ck_array** %3, align 8
  %14 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = add i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %4, align 4
  %23 = call i32 %9(%struct.TYPE_5__* %12, i32 %21, i32 %22)
  %24 = load %struct.ck_array*, %struct.ck_array** %3, align 8
  %25 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %2
  %29 = load %struct.ck_array*, %struct.ck_array** %3, align 8
  %30 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %32, align 8
  %34 = load %struct.ck_array*, %struct.ck_array** %3, align 8
  %35 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load %struct.ck_array*, %struct.ck_array** %3, align 8
  %38 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = add i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %4, align 4
  %47 = call i32 %33(%struct.TYPE_5__* %36, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %28, %2
  %49 = load %struct.ck_array*, %struct.ck_array** %3, align 8
  %50 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %49, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %50, align 8
  %51 = load %struct.ck_array*, %struct.ck_array** %3, align 8
  %52 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %51, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %52, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
