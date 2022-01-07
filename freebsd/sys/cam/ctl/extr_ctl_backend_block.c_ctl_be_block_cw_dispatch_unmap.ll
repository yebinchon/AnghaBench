; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_cw_dispatch_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_cw_dispatch_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)* }
%struct.ctl_be_block_io = type opaque
%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ctl_be_block_io.0 = type { i32, i32, i32, i64 }
%struct.ctl_ptr_len_flags = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@CTL_PRIV_LBA_LEN = common dso_local global i64 0, align 8
@SU_ANCHOR = common dso_local global i32 0, align 4
@BIO_DELETE = common dso_local global i32 0, align 4
@DEVSTAT_FREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"UNMAP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_lun*, %union.ctl_io*)* @ctl_be_block_cw_dispatch_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_cw_dispatch_unmap(%struct.ctl_be_block_lun* %0, %union.ctl_io* %1) #0 {
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %union.ctl_io*, align 8
  %5 = alloca %struct.ctl_be_block_io.0*, align 8
  %6 = alloca %struct.ctl_ptr_len_flags*, align 8
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %3, align 8
  store %union.ctl_io* %1, %union.ctl_io** %4, align 8
  %7 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %9 = call %struct.TYPE_4__* @PRIV(%union.ctl_io* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ctl_be_block_io.0*
  store %struct.ctl_be_block_io.0* %12, %struct.ctl_be_block_io.0** %5, align 8
  %13 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %14 = bitcast %union.ctl_io* %13 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @CTL_PRIV_LBA_LEN, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = bitcast i32* %18 to %struct.ctl_ptr_len_flags*
  store %struct.ctl_ptr_len_flags* %19, %struct.ctl_ptr_len_flags** %6, align 8
  %20 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %6, align 8
  %21 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SU_ANCHOR, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  %28 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %29 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %28, i32 0, i32 0
  %30 = load i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)*, i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)** %29, align 8
  %31 = icmp eq i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27, %2
  %33 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %34 = call i32 @ctl_free_beio(%struct.ctl_be_block_io.0* %33)
  %35 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %36 = bitcast %union.ctl_io* %35 to i32*
  %37 = call i32 @ctl_set_invalid_field(i32* %36, i32 0, i32 1, i32 0, i32 0, i32 0)
  %38 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %39 = call i32 @ctl_config_write_done(%union.ctl_io* %38)
  br label %59

40:                                               ; preds = %27
  %41 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %42 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %44 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load i32, i32* @BIO_DELETE, align 4
  %46 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %47 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @DEVSTAT_FREE, align 4
  %49 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %50 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %53 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %52, i32 0, i32 0
  %54 = load i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)*, i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)** %53, align 8
  %55 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %56 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %57 = bitcast %struct.ctl_be_block_io.0* %56 to %struct.ctl_be_block_io*
  %58 = call i32 %54(%struct.ctl_be_block_lun* %55, %struct.ctl_be_block_io* %57)
  br label %59

59:                                               ; preds = %40, %32
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.TYPE_4__* @PRIV(%union.ctl_io*) #1

declare dso_local i32 @ctl_free_beio(%struct.ctl_be_block_io.0*) #1

declare dso_local i32 @ctl_set_invalid_field(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_config_write_done(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
