; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32** }
%struct.iter_qstate = type { i64*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_clear(%struct.module_qstate* %0, i32 %1) #0 {
  %3 = alloca %struct.module_qstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iter_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %7 = icmp ne %struct.module_qstate* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %51

9:                                                ; preds = %2
  %10 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %11 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to %struct.iter_qstate*
  store %struct.iter_qstate* %17, %struct.iter_qstate** %5, align 8
  %18 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %19 = icmp ne %struct.iter_qstate* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %9
  %21 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %22 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %21, i32 0, i32 2
  %23 = call i32 @outbound_list_clear(i32* %22)
  %24 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %25 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %30 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %38 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = call i32 @free(i64* %39)
  br label %41

41:                                               ; preds = %36, %28, %20
  %42 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %43 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %9
  %45 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %46 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %8
  ret void
}

declare dso_local i32 @outbound_list_clear(i32*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
