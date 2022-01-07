; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_backchain_frame_unwind_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_backchain_frame_unwind_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.s390_unwind_cache = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.gdbarch = type { i32 }

@S390_SP_REGNUM = common dso_local global i64 0, align 8
@S390_RETADDR_REGNUM = common dso_local global i64 0, align 8
@S390_PC_REGNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, %struct.s390_unwind_cache*)* @s390_backchain_frame_unwind_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_backchain_frame_unwind_cache(%struct.frame_info* %0, %struct.s390_unwind_cache* %1) #0 {
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca %struct.s390_unwind_cache*, align 8
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  store %struct.s390_unwind_cache* %1, %struct.s390_unwind_cache** %4, align 8
  %10 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %11 = call %struct.gdbarch* @get_frame_arch(%struct.frame_info* %10)
  store %struct.gdbarch* %11, %struct.gdbarch** %5, align 8
  %12 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %13 = call i32 @gdbarch_ptr_bit(%struct.gdbarch* %12)
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %16 = load i64, i64* @S390_SP_REGNUM, align 8
  %17 = call i32 @frame_unwind_register_unsigned(%struct.frame_info* %15, i64 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @read_memory_unsigned_integer(i32 %18, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %82

23:                                               ; preds = %2
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 15, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @safe_read_memory_integer(i64 %28, i32 %29, i64* %9)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %82

32:                                               ; preds = %23
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 15, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %4, align 8
  %43 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* @S390_SP_REGNUM, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %41, i64* %47, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 14, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %4, align 8
  %54 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* @S390_RETADDR_REGNUM, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 %52, i64* %58, align 8
  %59 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %4, align 8
  %60 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* @S390_PC_REGNUM, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %4, align 8
  %65 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* @S390_RETADDR_REGNUM, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = bitcast %struct.TYPE_2__* %63 to i8*
  %70 = bitcast %struct.TYPE_2__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 8, i1 false)
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 16, %72
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = add nsw i64 %75, 32
  %77 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %4, align 8
  %78 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %4, align 8
  %81 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %36, %32, %23, %2
  %83 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %84 = call i32 @frame_pc_unwind(%struct.frame_info* %83)
  %85 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %4, align 8
  %86 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  ret void
}

declare dso_local %struct.gdbarch* @get_frame_arch(%struct.frame_info*) #1

declare dso_local i32 @gdbarch_ptr_bit(%struct.gdbarch*) #1

declare dso_local i32 @frame_unwind_register_unsigned(%struct.frame_info*, i64) #1

declare dso_local i64 @read_memory_unsigned_integer(i32, i32) #1

declare dso_local i64 @safe_read_memory_integer(i64, i32, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
