; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_sum_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_sum_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_writer = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@F_CKSUM = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@F_MD5 = common dso_local global i32 0, align 4
@F_RMD160 = common dso_local global i32 0, align 4
@F_SHA1 = common dso_local global i32 0, align 4
@F_SHA256 = common dso_local global i32 0, align 4
@F_SHA384 = common dso_local global i32 0, align 4
@F_SHA512 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtree_writer*)* @sum_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sum_init(%struct.mtree_writer* %0) #0 {
  %2 = alloca %struct.mtree_writer*, align 8
  store %struct.mtree_writer* %0, %struct.mtree_writer** %2, align 8
  %3 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %4 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %6 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @F_CKSUM, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @F_CKSUM, align 4
  %13 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %14 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %18 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %17, i32 0, i32 9
  store i64 0, i64* %18, align 8
  %19 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %20 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %19, i32 0, i32 8
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %11, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
