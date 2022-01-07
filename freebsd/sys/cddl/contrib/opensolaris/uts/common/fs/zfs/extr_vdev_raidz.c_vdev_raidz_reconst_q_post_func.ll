; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_reconst_q_post_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_reconst_q_post_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reconst_q_struct = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @vdev_raidz_reconst_q_post_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_raidz_reconst_q_post_func(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.reconst_q_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.reconst_q_struct*
  store %struct.reconst_q_struct* %14, %struct.reconst_q_struct** %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = udiv i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %50, %3
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load %struct.reconst_q_struct*, %struct.reconst_q_struct** %7, align 8
  %26 = getelementptr inbounds %struct.reconst_q_struct, %struct.reconst_q_struct* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %30, %28
  store i32 %31, i32* %29, align 4
  store i32 0, i32* %11, align 4
  %32 = load i32*, i32** %8, align 8
  store i32* %32, i32** %12, align 8
  br label %33

33:                                               ; preds = %44, %24
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.reconst_q_struct*, %struct.reconst_q_struct** %7, align 8
  %40 = getelementptr inbounds %struct.reconst_q_struct, %struct.reconst_q_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @vdev_raidz_exp2(i32 %38, i32 %41)
  %43 = load i32*, i32** %12, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %12, align 8
  br label %33

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %8, align 8
  %55 = load %struct.reconst_q_struct*, %struct.reconst_q_struct** %7, align 8
  %56 = getelementptr inbounds %struct.reconst_q_struct, %struct.reconst_q_struct* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %56, align 8
  br label %20

59:                                               ; preds = %20
  ret i32 0
}

declare dso_local i32 @vdev_raidz_exp2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
