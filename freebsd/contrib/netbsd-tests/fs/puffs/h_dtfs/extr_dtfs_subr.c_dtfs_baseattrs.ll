; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_baseattrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_subr.c_dtfs_baseattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vattr = type { i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i64, i32, i32, i64, i32, i64, i64 }
%struct.timespec = type { i32 }
%struct.timeval = type { i32 }

@VDIR = common dso_local global i32 0, align 4
@PUFFS_VNOVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtfs_baseattrs(%struct.vattr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vattr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timespec, align 4
  store %struct.vattr* %0, %struct.vattr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  %10 = call i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval* %7, %struct.timespec* %8)
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.vattr*, %struct.vattr** %4, align 8
  %13 = getelementptr inbounds %struct.vattr, %struct.vattr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @VDIR, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.vattr*, %struct.vattr** %4, align 8
  %19 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 1
  store i32 511, i32* %19, align 4
  %20 = load %struct.vattr*, %struct.vattr** %4, align 8
  %21 = getelementptr inbounds %struct.vattr, %struct.vattr* %20, i32 0, i32 2
  store i32 1, i32* %21, align 8
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.vattr*, %struct.vattr** %4, align 8
  %24 = getelementptr inbounds %struct.vattr, %struct.vattr* %23, i32 0, i32 1
  store i32 438, i32* %24, align 4
  %25 = load %struct.vattr*, %struct.vattr** %4, align 8
  %26 = getelementptr inbounds %struct.vattr, %struct.vattr* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.vattr*, %struct.vattr** %4, align 8
  %29 = getelementptr inbounds %struct.vattr, %struct.vattr* %28, i32 0, i32 17
  store i64 0, i64* %29, align 8
  %30 = load %struct.vattr*, %struct.vattr** %4, align 8
  %31 = getelementptr inbounds %struct.vattr, %struct.vattr* %30, i32 0, i32 16
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.vattr*, %struct.vattr** %4, align 8
  %34 = getelementptr inbounds %struct.vattr, %struct.vattr* %33, i32 0, i32 15
  store i32 %32, i32* %34, align 8
  %35 = load %struct.vattr*, %struct.vattr** %4, align 8
  %36 = getelementptr inbounds %struct.vattr, %struct.vattr* %35, i32 0, i32 14
  store i64 0, i64* %36, align 8
  %37 = call i32 (...) @getpagesize()
  %38 = load %struct.vattr*, %struct.vattr** %4, align 8
  %39 = getelementptr inbounds %struct.vattr, %struct.vattr* %38, i32 0, i32 13
  store i32 %37, i32* %39, align 4
  %40 = call i32 (...) @random()
  %41 = load %struct.vattr*, %struct.vattr** %4, align 8
  %42 = getelementptr inbounds %struct.vattr, %struct.vattr* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vattr*, %struct.vattr** %4, align 8
  %44 = getelementptr inbounds %struct.vattr, %struct.vattr* %43, i32 0, i32 11
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @PUFFS_VNOVAL, align 4
  %46 = load %struct.vattr*, %struct.vattr** %4, align 8
  %47 = getelementptr inbounds %struct.vattr, %struct.vattr* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  %48 = load %struct.vattr*, %struct.vattr** %4, align 8
  %49 = getelementptr inbounds %struct.vattr, %struct.vattr* %48, i32 0, i32 9
  store i64 0, i64* %49, align 8
  %50 = load %struct.vattr*, %struct.vattr** %4, align 8
  %51 = getelementptr inbounds %struct.vattr, %struct.vattr* %50, i32 0, i32 3
  store i32 1, i32* %51, align 4
  %52 = load %struct.vattr*, %struct.vattr** %4, align 8
  %53 = getelementptr inbounds %struct.vattr, %struct.vattr* %52, i32 0, i32 8
  store i64 0, i64* %53, align 8
  %54 = load %struct.vattr*, %struct.vattr** %4, align 8
  %55 = getelementptr inbounds %struct.vattr, %struct.vattr* %54, i32 0, i32 7
  %56 = load %struct.vattr*, %struct.vattr** %4, align 8
  %57 = getelementptr inbounds %struct.vattr, %struct.vattr* %56, i32 0, i32 6
  %58 = load %struct.vattr*, %struct.vattr** %4, align 8
  %59 = getelementptr inbounds %struct.vattr, %struct.vattr* %58, i32 0, i32 5
  %60 = load %struct.vattr*, %struct.vattr** %4, align 8
  %61 = getelementptr inbounds %struct.vattr, %struct.vattr* %60, i32 0, i32 4
  %62 = bitcast %struct.timespec* %61 to i8*
  %63 = bitcast %struct.timespec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = bitcast %struct.timespec* %59 to i8*
  %65 = bitcast %struct.timespec* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 8 %65, i64 4, i1 false)
  %66 = bitcast %struct.timespec* %57 to i8*
  %67 = bitcast %struct.timespec* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 4 %67, i64 4, i1 false)
  %68 = bitcast %struct.timespec* %55 to i8*
  %69 = bitcast %struct.timespec* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 8 %69, i64 4, i1 false)
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @random(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
