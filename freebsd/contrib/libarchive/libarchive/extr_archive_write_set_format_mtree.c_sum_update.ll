; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_sum_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_sum_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_writer = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@F_CKSUM = common dso_local global i32 0, align 4
@F_MD5 = common dso_local global i32 0, align 4
@F_RMD160 = common dso_local global i32 0, align 4
@F_SHA1 = common dso_local global i32 0, align 4
@F_SHA256 = common dso_local global i32 0, align 4
@F_SHA384 = common dso_local global i32 0, align 4
@F_SHA512 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtree_writer*, i8*, i64)* @sum_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sum_update(%struct.mtree_writer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mtree_writer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.mtree_writer* %0, %struct.mtree_writer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %10 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @F_CKSUM, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %29, %15
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %8, align 8
  %21 = icmp ne i64 %19, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %24 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @COMPUTE_CRC(i32 %25, i8 zeroext %27)
  br label %29

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %7, align 8
  br label %18

32:                                               ; preds = %18
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %35 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, %33
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %32, %3
  ret void
}

declare dso_local i32 @COMPUTE_CRC(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
