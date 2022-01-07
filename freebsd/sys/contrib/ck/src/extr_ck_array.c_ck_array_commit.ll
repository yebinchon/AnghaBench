; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_array.c_ck_array_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_array.c_ck_array_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct._ck_array*, %struct._ck_array*, %struct.TYPE_4__* }
%struct._ck_array = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct._ck_array*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_array_commit(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct._ck_array*, align 8
  %5 = alloca %struct._ck_array*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %8 = load %struct._ck_array*, %struct._ck_array** %7, align 8
  store %struct._ck_array* %8, %struct._ck_array** %4, align 8
  %9 = load %struct._ck_array*, %struct._ck_array** %4, align 8
  %10 = icmp ne %struct._ck_array* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct._ck_array*, %struct._ck_array** %4, align 8
  %16 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = call i32 (...) @ck_pr_fence_store()
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct._ck_array*, %struct._ck_array** %19, align 8
  store %struct._ck_array* %20, %struct._ck_array** %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct._ck_array*, %struct._ck_array** %4, align 8
  %24 = call i32 @ck_pr_store_ptr(%struct._ck_array** %22, %struct._ck_array* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct._ck_array*, i32, i32)*, i32 (%struct._ck_array*, i32, i32)** %28, align 8
  %30 = load %struct._ck_array*, %struct._ck_array** %5, align 8
  %31 = load %struct._ck_array*, %struct._ck_array** %5, align 8
  %32 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = add i64 8, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 %29(%struct._ck_array* %30, i32 %37, i32 1)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store %struct._ck_array* null, %struct._ck_array** %40, align 8
  store i32 1, i32* %2, align 4
  br label %51

41:                                               ; preds = %1
  %42 = call i32 (...) @ck_pr_fence_store()
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct._ck_array*, %struct._ck_array** %44, align 8
  %46 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ck_pr_store_uint(i32* %46, i32 %49)
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %41, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ck_pr_fence_store(...) #1

declare dso_local i32 @ck_pr_store_ptr(%struct._ck_array**, %struct._ck_array*) #1

declare dso_local i32 @ck_pr_store_uint(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
