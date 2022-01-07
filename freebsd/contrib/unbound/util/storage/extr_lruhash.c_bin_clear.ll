; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_bin_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_bin_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { i32, i32 (i8*, i32)*, i32 (i32, i32)*, i32 (i32)* }
%struct.lruhash_bin = type { i32, %struct.lruhash_entry* }
%struct.lruhash_entry = type { i32, i32, i8*, %struct.lruhash_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lruhash*, %struct.lruhash_bin*)* @bin_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bin_clear(%struct.lruhash* %0, %struct.lruhash_bin* %1) #0 {
  %3 = alloca %struct.lruhash*, align 8
  %4 = alloca %struct.lruhash_bin*, align 8
  %5 = alloca %struct.lruhash_entry*, align 8
  %6 = alloca %struct.lruhash_entry*, align 8
  %7 = alloca i8*, align 8
  store %struct.lruhash* %0, %struct.lruhash** %3, align 8
  store %struct.lruhash_bin* %1, %struct.lruhash_bin** %4, align 8
  %8 = load %struct.lruhash_bin*, %struct.lruhash_bin** %4, align 8
  %9 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %8, i32 0, i32 0
  %10 = call i32 @lock_quick_lock(i32* %9)
  %11 = load %struct.lruhash_bin*, %struct.lruhash_bin** %4, align 8
  %12 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %11, i32 0, i32 1
  %13 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  store %struct.lruhash_entry* %13, %struct.lruhash_entry** %5, align 8
  br label %14

14:                                               ; preds = %39, %2
  %15 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %16 = icmp ne %struct.lruhash_entry* %15, null
  br i1 %16, label %17, label %62

17:                                               ; preds = %14
  %18 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %19 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %18, i32 0, i32 1
  %20 = call i32 @lock_rw_wrlock(i32* %19)
  %21 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %22 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %21, i32 0, i32 3
  %23 = load %struct.lruhash_entry*, %struct.lruhash_entry** %22, align 8
  store %struct.lruhash_entry* %23, %struct.lruhash_entry** %6, align 8
  %24 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %25 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %28 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %27, i32 0, i32 3
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = icmp ne i32 (i32)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %17
  %32 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %33 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %32, i32 0, i32 3
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %36 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i32 %37)
  br label %39

39:                                               ; preds = %31, %17
  %40 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %41 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %40, i32 0, i32 1
  %42 = call i32 @lock_rw_unlock(i32* %41)
  %43 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %44 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %43, i32 0, i32 2
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %47 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %50 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %45(i32 %48, i32 %51)
  %53 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %54 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %53, i32 0, i32 1
  %55 = load i32 (i8*, i32)*, i32 (i8*, i32)** %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.lruhash*, %struct.lruhash** %3, align 8
  %58 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %55(i8* %56, i32 %59)
  %61 = load %struct.lruhash_entry*, %struct.lruhash_entry** %6, align 8
  store %struct.lruhash_entry* %61, %struct.lruhash_entry** %5, align 8
  br label %14

62:                                               ; preds = %14
  %63 = load %struct.lruhash_bin*, %struct.lruhash_bin** %4, align 8
  %64 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %63, i32 0, i32 1
  store %struct.lruhash_entry* null, %struct.lruhash_entry** %64, align 8
  %65 = load %struct.lruhash_bin*, %struct.lruhash_bin** %4, align 8
  %66 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %65, i32 0, i32 0
  %67 = call i32 @lock_quick_unlock(i32* %66)
  ret void
}

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
