; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lru_demote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lru_demote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { %struct.lruhash_entry*, %struct.lruhash_entry* }
%struct.lruhash_entry = type { %struct.lruhash_entry*, %struct.lruhash_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lru_demote(%struct.lruhash* %0, %struct.lruhash_entry* %1) #0 {
  %3 = alloca %struct.lruhash*, align 8
  %4 = alloca %struct.lruhash_entry*, align 8
  store %struct.lruhash* %0, %struct.lruhash** %3, align 8
  store %struct.lruhash_entry* %1, %struct.lruhash_entry** %4, align 8
  %5 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %6 = icmp ne %struct.lruhash* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.lruhash_entry*, %struct.lruhash_entry** %4, align 8
  %9 = icmp ne %struct.lruhash_entry* %8, null
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ false, %2 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @log_assert(i32 %12)
  %14 = load %struct.lruhash_entry*, %struct.lruhash_entry** %4, align 8
  %15 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %16 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %15, i32 0, i32 0
  %17 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %18 = icmp eq %struct.lruhash_entry* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %49

20:                                               ; preds = %10
  %21 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %22 = load %struct.lruhash_entry*, %struct.lruhash_entry** %4, align 8
  %23 = call i32 @lru_remove(%struct.lruhash* %21, %struct.lruhash_entry* %22)
  %24 = load %struct.lruhash_entry*, %struct.lruhash_entry** %4, align 8
  %25 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %24, i32 0, i32 0
  store %struct.lruhash_entry* null, %struct.lruhash_entry** %25, align 8
  %26 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %27 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %26, i32 0, i32 0
  %28 = load %struct.lruhash_entry*, %struct.lruhash_entry** %27, align 8
  %29 = load %struct.lruhash_entry*, %struct.lruhash_entry** %4, align 8
  %30 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %29, i32 0, i32 1
  store %struct.lruhash_entry* %28, %struct.lruhash_entry** %30, align 8
  %31 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %32 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %31, i32 0, i32 0
  %33 = load %struct.lruhash_entry*, %struct.lruhash_entry** %32, align 8
  %34 = icmp eq %struct.lruhash_entry* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = load %struct.lruhash_entry*, %struct.lruhash_entry** %4, align 8
  %37 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %38 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %37, i32 0, i32 1
  store %struct.lruhash_entry* %36, %struct.lruhash_entry** %38, align 8
  br label %45

39:                                               ; preds = %20
  %40 = load %struct.lruhash_entry*, %struct.lruhash_entry** %4, align 8
  %41 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %42 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %41, i32 0, i32 0
  %43 = load %struct.lruhash_entry*, %struct.lruhash_entry** %42, align 8
  %44 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %43, i32 0, i32 0
  store %struct.lruhash_entry* %40, %struct.lruhash_entry** %44, align 8
  br label %45

45:                                               ; preds = %39, %35
  %46 = load %struct.lruhash_entry*, %struct.lruhash_entry** %4, align 8
  %47 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %48 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %47, i32 0, i32 0
  store %struct.lruhash_entry* %46, %struct.lruhash_entry** %48, align 8
  br label %49

49:                                               ; preds = %45, %19
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @lru_remove(%struct.lruhash*, %struct.lruhash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
