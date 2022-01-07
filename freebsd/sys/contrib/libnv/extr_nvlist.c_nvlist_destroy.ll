; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvlist_destroy(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = icmp eq %struct.TYPE_7__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %41

7:                                                ; preds = %1
  %8 = call i32 (...) @ERRNO_SAVE()
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = call i32 @NVLIST_ASSERT(%struct.TYPE_7__* %9)
  br label %11

11:                                               ; preds = %15, %7
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = call i32* @nvlist_first_nvpair(%struct.TYPE_7__* %12)
  store i32* %13, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @nvlist_remove_nvpair(%struct.TYPE_7__* %16, i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @nvpair_free(i32* %19)
  br label %11

21:                                               ; preds = %11
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @nvpair_free_structure(i32* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = call i32 @nv_free(%struct.TYPE_7__* %38)
  %40 = call i32 (...) @ERRNO_RESTORE()
  br label %41

41:                                               ; preds = %31, %6
  ret void
}

declare dso_local i32 @ERRNO_SAVE(...) #1

declare dso_local i32 @NVLIST_ASSERT(%struct.TYPE_7__*) #1

declare dso_local i32* @nvlist_first_nvpair(%struct.TYPE_7__*) #1

declare dso_local i32 @nvlist_remove_nvpair(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @nvpair_free(i32*) #1

declare dso_local i32 @nvpair_free_structure(i32*) #1

declare dso_local i32 @nv_free(%struct.TYPE_7__*) #1

declare dso_local i32 @ERRNO_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
