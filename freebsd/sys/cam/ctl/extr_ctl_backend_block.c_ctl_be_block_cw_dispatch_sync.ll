; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_cw_dispatch_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_cw_dispatch_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)*, %struct.ctl_be_lun }
%struct.ctl_be_block_io = type opaque
%struct.ctl_be_lun = type { i32 }
%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ctl_be_block_io.0 = type { i32, i32, i32, i32, i32 }
%struct.ctl_lba_len_flags = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@CTL_PRIV_LBA_LEN = common dso_local global i64 0, align 8
@SSC_IMMED = common dso_local global i32 0, align 4
@BIO_FLUSH = common dso_local global i32 0, align 4
@DEVSTAT_NO_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"SYNC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_lun*, %union.ctl_io*)* @ctl_be_block_cw_dispatch_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_cw_dispatch_sync(%struct.ctl_be_block_lun* %0, %union.ctl_io* %1) #0 {
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %union.ctl_io*, align 8
  %5 = alloca %struct.ctl_be_lun*, align 8
  %6 = alloca %struct.ctl_be_block_io.0*, align 8
  %7 = alloca %struct.ctl_lba_len_flags*, align 8
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %3, align 8
  store %union.ctl_io* %1, %union.ctl_io** %4, align 8
  %8 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %9 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %8, i32 0, i32 1
  store %struct.ctl_be_lun* %9, %struct.ctl_be_lun** %5, align 8
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %12 = call %struct.TYPE_4__* @PRIV(%union.ctl_io* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ctl_be_block_io.0*
  store %struct.ctl_be_block_io.0* %15, %struct.ctl_be_block_io.0** %6, align 8
  %16 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %17 = bitcast %union.ctl_io* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @CTL_PRIV_LBA_LEN, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = bitcast i32* %21 to %struct.ctl_lba_len_flags*
  store %struct.ctl_lba_len_flags* %22, %struct.ctl_lba_len_flags** %7, align 8
  %23 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %24 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %27 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %6, align 8
  %31 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %33 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %36 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %6, align 8
  %40 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %42 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SSC_IMMED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %6, align 8
  %49 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @BIO_FLUSH, align 4
  %51 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %6, align 8
  %52 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @DEVSTAT_NO_DATA, align 4
  %54 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %6, align 8
  %55 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = call i32 @DPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %58 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %57, i32 0, i32 0
  %59 = load i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)*, i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)** %58, align 8
  %60 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %61 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %6, align 8
  %62 = bitcast %struct.ctl_be_block_io.0* %61 to %struct.ctl_be_block_io*
  %63 = call i32 %59(%struct.ctl_be_block_lun* %60, %struct.ctl_be_block_io* %62)
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.TYPE_4__* @PRIV(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
