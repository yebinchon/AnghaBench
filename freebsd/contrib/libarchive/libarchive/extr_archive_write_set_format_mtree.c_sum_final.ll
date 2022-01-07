; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_sum_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_sum_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_writer = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reg_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@F_CKSUM = common dso_local global i32 0, align 4
@F_MD5 = common dso_local global i32 0, align 4
@F_RMD160 = common dso_local global i32 0, align 4
@F_SHA1 = common dso_local global i32 0, align 4
@F_SHA256 = common dso_local global i32 0, align 4
@F_SHA384 = common dso_local global i32 0, align 4
@F_SHA512 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtree_writer*, %struct.reg_info*)* @sum_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sum_final(%struct.mtree_writer* %0, %struct.reg_info* %1) #0 {
  %3 = alloca %struct.mtree_writer*, align 8
  %4 = alloca %struct.reg_info*, align 8
  %5 = alloca i32, align 4
  store %struct.mtree_writer* %0, %struct.mtree_writer** %3, align 8
  store %struct.reg_info* %1, %struct.reg_info** %4, align 8
  %6 = load %struct.mtree_writer*, %struct.mtree_writer** %3, align 8
  %7 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @F_CKSUM, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.mtree_writer*, %struct.mtree_writer** %3, align 8
  %14 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %26, %12
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.mtree_writer*, %struct.mtree_writer** %3, align 8
  %21 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 255
  %25 = call i32 @COMPUTE_CRC(i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 8
  store i32 %28, i32* %5, align 4
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.mtree_writer*, %struct.mtree_writer** %3, align 8
  %31 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.reg_info*, %struct.reg_info** %4, align 8
  %35 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %2
  %37 = load %struct.mtree_writer*, %struct.mtree_writer** %3, align 8
  %38 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.reg_info*, %struct.reg_info** %4, align 8
  %41 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @COMPUTE_CRC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
