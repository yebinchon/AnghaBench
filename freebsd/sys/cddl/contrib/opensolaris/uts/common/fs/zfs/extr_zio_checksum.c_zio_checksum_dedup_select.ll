; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio_checksum.c_zio_checksum_dedup_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio_checksum.c_zio_checksum_dedup_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ZIO_CHECKSUM_MASK = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_FUNCTIONS = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_INHERIT = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_ON = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_VERIFY = common dso_local global i32 0, align 4
@zio_checksum_table = common dso_local global %struct.TYPE_2__* null, align 8
@ZCHECKSUM_FLAG_DEDUP = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zio_checksum_dedup_select(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @ZIO_CHECKSUM_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @ZIO_CHECKSUM_FUNCTIONS, align 4
  %12 = icmp ult i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ZIO_CHECKSUM_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @ZIO_CHECKSUM_FUNCTIONS, align 4
  %19 = icmp ult i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ZIO_CHECKSUM_INHERIT, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ZIO_CHECKSUM_ON, align 4
  %28 = icmp ne i32 %26, %27
  br label %29

29:                                               ; preds = %25, %3
  %30 = phi i1 [ false, %3 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ZIO_CHECKSUM_INHERIT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %4, align 4
  br label %82

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ZIO_CHECKSUM_ON, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @spa_dedup_checksum(i32* %43)
  store i32 %44, i32* %4, align 4
  br label %82

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ZIO_CHECKSUM_ON, align 4
  %48 = load i32, i32* @ZIO_CHECKSUM_VERIFY, align 4
  %49 = or i32 %47, %48
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @spa_dedup_checksum(i32* %52)
  %54 = load i32, i32* @ZIO_CHECKSUM_VERIFY, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %4, align 4
  br label %82

56:                                               ; preds = %45
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zio_checksum_table, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ZIO_CHECKSUM_MASK, align 4
  %60 = and i32 %58, %59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ZCHECKSUM_FLAG_DEDUP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @ZIO_CHECKSUM_VERIFY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @ZIO_CHECKSUM_OFF, align 4
  %76 = icmp eq i32 %74, %75
  br label %77

77:                                               ; preds = %73, %68, %56
  %78 = phi i1 [ true, %68 ], [ true, %56 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @ASSERT(i32 %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %77, %51, %42, %36
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_dedup_checksum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
