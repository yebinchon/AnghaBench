; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_reconst_pq_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_reconst_pq_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reconst_pq_struct = type { i32*, i32*, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*)* @vdev_raidz_reconst_pq_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_raidz_reconst_pq_func(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.reconst_pq_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.reconst_pq_struct*
  store %struct.reconst_pq_struct* %14, %struct.reconst_pq_struct** %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %66, %4
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %19
  %25 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %9, align 8
  %26 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %9, align 8
  %30 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %28, %32
  %34 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %9, align 8
  %35 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vdev_raidz_exp2(i32 %33, i32 %36)
  %38 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %9, align 8
  %39 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %9, align 8
  %43 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %41, %45
  %47 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %9, align 8
  %48 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @vdev_raidz_exp2(i32 %46, i32 %49)
  %51 = xor i32 %37, %50
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %9, align 8
  %54 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %9, align 8
  %58 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %56, %60
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %61, %63
  %65 = load i32*, i32** %11, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %24
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  %69 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %9, align 8
  %70 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %70, align 8
  %73 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %9, align 8
  %74 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %74, align 8
  %77 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %9, align 8
  %78 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %78, align 8
  %81 = load %struct.reconst_pq_struct*, %struct.reconst_pq_struct** %9, align 8
  %82 = getelementptr inbounds %struct.reconst_pq_struct, %struct.reconst_pq_struct* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %82, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %10, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %11, align 8
  br label %19

89:                                               ; preds = %19
  ret i32 0
}

declare dso_local i32 @vdev_raidz_exp2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
