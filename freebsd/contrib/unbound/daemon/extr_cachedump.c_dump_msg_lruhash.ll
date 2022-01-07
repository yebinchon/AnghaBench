; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_dump_msg_lruhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_dump_msg_lruhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.lruhash = type { %struct.lruhash_entry* }
%struct.lruhash_entry = type { i32, %struct.lruhash_entry* }
%struct.query_info = type { i32 }
%struct.reply_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.worker*, %struct.lruhash*)* @dump_msg_lruhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_msg_lruhash(i32* %0, %struct.worker* %1, %struct.lruhash* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.worker*, align 8
  %7 = alloca %struct.lruhash*, align 8
  %8 = alloca %struct.lruhash_entry*, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca %struct.reply_info*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.worker* %1, %struct.worker** %6, align 8
  store %struct.lruhash* %2, %struct.lruhash** %7, align 8
  %11 = load %struct.lruhash*, %struct.lruhash** %7, align 8
  %12 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %11, i32 0, i32 0
  %13 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  store %struct.lruhash_entry* %13, %struct.lruhash_entry** %8, align 8
  br label %14

14:                                               ; preds = %51, %3
  %15 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %16 = icmp ne %struct.lruhash_entry* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = load %struct.worker*, %struct.worker** %6, align 8
  %19 = getelementptr inbounds %struct.worker, %struct.worker* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @regional_free_all(i32 %20)
  %22 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %23 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %22, i32 0, i32 0
  %24 = call i32 @lock_rw_rdlock(i32* %23)
  %25 = load %struct.worker*, %struct.worker** %6, align 8
  %26 = getelementptr inbounds %struct.worker, %struct.worker* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %29 = call i32 @copy_msg(i32 %27, %struct.lruhash_entry* %28, %struct.query_info** %9, %struct.reply_info** %10)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %17
  %32 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %33 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %32, i32 0, i32 0
  %34 = call i32 @lock_rw_unlock(i32* %33)
  store i32 0, i32* %4, align 4
  br label %56

35:                                               ; preds = %17
  %36 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %37 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %36, i32 0, i32 0
  %38 = call i32 @lock_rw_unlock(i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.query_info*, %struct.query_info** %9, align 8
  %41 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %42 = load %struct.worker*, %struct.worker** %6, align 8
  %43 = getelementptr inbounds %struct.worker, %struct.worker* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dump_msg(i32* %39, %struct.query_info* %40, %struct.reply_info* %41, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %56

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %53 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %52, i32 0, i32 1
  %54 = load %struct.lruhash_entry*, %struct.lruhash_entry** %53, align 8
  store %struct.lruhash_entry* %54, %struct.lruhash_entry** %8, align 8
  br label %14

55:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %49, %31
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @regional_free_all(i32) #1

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local i32 @copy_msg(i32, %struct.lruhash_entry*, %struct.query_info**, %struct.reply_info**) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @dump_msg(i32*, %struct.query_info*, %struct.reply_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
