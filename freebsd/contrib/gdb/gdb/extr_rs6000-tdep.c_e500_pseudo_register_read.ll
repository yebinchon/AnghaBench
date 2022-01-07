; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_e500_pseudo_register_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_e500_pseudo_register_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache = type { i32 }
%struct.gdbarch_tdep = type { i32, i32, i32 }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*, %struct.regcache*, i32, i8*)* @e500_pseudo_register_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e500_pseudo_register_read(%struct.gdbarch* %0, %struct.regcache* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca %struct.regcache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.gdbarch_tdep*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store %struct.regcache* %1, %struct.regcache** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %19 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %18)
  store %struct.gdbarch_tdep* %19, %struct.gdbarch_tdep** %13, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %13, align 8
  %22 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %13, align 8
  %28 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %26, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %13, align 8
  %34 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %13, align 8
  %38 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.regcache*, %struct.regcache** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @regcache_raw_read(%struct.regcache* %41, i32 %42, i8* %17)
  %44 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %45 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  store i32 4, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %17, i64 %51
  %53 = call i32 @memcpy(i8* %49, i8* %52, i32 4)
  br label %54

54:                                               ; preds = %48, %25, %4
  %55 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %55)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #2

declare dso_local i32 @regcache_raw_read(%struct.regcache*, i32, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
