; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_buf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_buf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@zfs_arc_average_blocksize = common dso_local global i32 0, align 4
@physmem = common dso_local global i64 0, align 8
@PAGESIZE = common dso_local global i32 0, align 4
@buf_hash_table = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@KM_NOSLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"arc_buf_hdr_t_full\00", align 1
@HDR_FULL_SIZE = common dso_local global i32 0, align 4
@hdr_full_cons = common dso_local global i32 0, align 4
@hdr_full_dest = common dso_local global i32 0, align 4
@hdr_recl = common dso_local global i32* null, align 8
@hdr_full_cache = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"arc_buf_hdr_t_l2only\00", align 1
@HDR_L2ONLY_SIZE = common dso_local global i32 0, align 4
@hdr_l2only_cons = common dso_local global i32 0, align 4
@hdr_l2only_dest = common dso_local global i32 0, align 4
@hdr_l2only_cache = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"arc_buf_t\00", align 1
@buf_cons = common dso_local global i32 0, align 4
@buf_dest = common dso_local global i32 0, align 4
@buf_cache = common dso_local global i8* null, align 8
@zfs_crc64_table = common dso_local global i32* null, align 8
@ZFS_CRC64_POLY = common dso_local global i32 0, align 4
@BUF_LOCKS = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @buf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 4096, i32* %2, align 4
  br label %5

5:                                                ; preds = %14, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @zfs_arc_average_blocksize, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load i64, i64* @physmem, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @PAGESIZE, align 4
  %12 = mul nsw i32 %10, %11
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i32, i32* %2, align 4
  %16 = shl i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %5

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %29, %17
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buf_hash_table, i32 0, i32 0), align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @KM_NOSLEEP, align 4
  %26 = call i32* @kmem_zalloc(i32 %24, i32 %25)
  store i32* %26, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buf_hash_table, i32 0, i32 2), align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buf_hash_table, i32 0, i32 2), align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ugt i64 %31, 256
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load i32, i32* @HDR_FULL_SIZE, align 4
  %39 = load i32, i32* @hdr_full_cons, align 4
  %40 = load i32, i32* @hdr_full_dest, align 4
  %41 = load i32*, i32** @hdr_recl, align 8
  %42 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %38, i32 0, i32 %39, i32 %40, i32* %41, i32* null, i32* null, i32 0)
  store i8* %42, i8** @hdr_full_cache, align 8
  %43 = load i32, i32* @HDR_L2ONLY_SIZE, align 4
  %44 = load i32, i32* @hdr_l2only_cons, align 4
  %45 = load i32, i32* @hdr_l2only_dest, align 4
  %46 = load i32*, i32** @hdr_recl, align 8
  %47 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 0, i32 %44, i32 %45, i32* %46, i32* null, i32* null, i32 0)
  store i8* %47, i8** @hdr_l2only_cache, align 8
  %48 = load i32, i32* @buf_cons, align 4
  %49 = load i32, i32* @buf_dest, align 4
  %50 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 0, i32 %48, i32 %49, i32* null, i32* null, i32* null, i32 0)
  store i8* %50, i8** @buf_cache, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %80, %37
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 256
  br i1 %53, label %54, label %83

54:                                               ; preds = %51
  %55 = load i32*, i32** @zfs_crc64_table, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %1, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32*, i32** %1, align 8
  store i32 %59, i32* %60, align 4
  store i32 8, i32* %4, align 4
  br label %61

61:                                               ; preds = %76, %54
  %62 = load i32, i32* %4, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i32*, i32** %1, align 8
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 1
  %68 = load i32*, i32** %1, align 8
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 1
  %71 = sub nsw i32 0, %70
  %72 = load i32, i32* @ZFS_CRC64_POLY, align 4
  %73 = and i32 %71, %72
  %74 = xor i32 %67, %73
  %75 = load i32*, i32** %1, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %4, align 4
  br label %61

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %51

83:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %96, %83
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @BUF_LOCKS, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buf_hash_table, i32 0, i32 1), align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* @MUTEX_DEFAULT, align 4
  %95 = call i32 @mutex_init(i32* %93, i32* null, i32 %94, i32* null)
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %84

99:                                               ; preds = %84
  ret void
}

declare dso_local i32* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
