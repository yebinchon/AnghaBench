; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mapper.c__citrus_mapper_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mapper.c__citrus_mapper_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_mapper = type { i64, i32 }

@cm_lock = common dso_local global i32 0, align 4
@REFCOUNT_PERSISTENT = common dso_local global i64 0, align 8
@cm_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_citrus_mapper_close(%struct._citrus_mapper* %0) #0 {
  %2 = alloca %struct._citrus_mapper*, align 8
  store %struct._citrus_mapper* %0, %struct._citrus_mapper** %2, align 8
  %3 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %4 = icmp ne %struct._citrus_mapper* %3, null
  br i1 %4, label %5, label %39

5:                                                ; preds = %1
  %6 = call i32 @WLOCK(i32* @cm_lock)
  %7 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %8 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @REFCOUNT_PERSISTENT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %37

13:                                               ; preds = %5
  %14 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %15 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %20 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %37

25:                                               ; preds = %18
  %26 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %27 = load i32, i32* @cm_entry, align 4
  %28 = call i32 @_CITRUS_HASH_REMOVE(%struct._citrus_mapper* %26, i32 %27)
  %29 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %30 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @free(i32 %31)
  br label %33

33:                                               ; preds = %25, %13
  %34 = call i32 @UNLOCK(i32* @cm_lock)
  %35 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %36 = call i32 @mapper_close(%struct._citrus_mapper* %35)
  br label %39

37:                                               ; preds = %24, %12
  %38 = call i32 @UNLOCK(i32* @cm_lock)
  br label %39

39:                                               ; preds = %33, %37, %1
  ret void
}

declare dso_local i32 @WLOCK(i32*) #1

declare dso_local i32 @_CITRUS_HASH_REMOVE(%struct._citrus_mapper*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @mapper_close(%struct._citrus_mapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
