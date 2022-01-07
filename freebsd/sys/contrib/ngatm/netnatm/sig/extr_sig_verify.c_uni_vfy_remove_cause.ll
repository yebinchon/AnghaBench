; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_verify.c_uni_vfy_remove_cause.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_verify.c_uni_vfy_remove_cause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.uni_ierr* }
%struct.uni_ierr = type { i64 }

@UNI_IE_CAUSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_vfy_remove_cause(%struct.uni* %0) #0 {
  %2 = alloca %struct.uni*, align 8
  %3 = alloca %struct.uni_ierr*, align 8
  %4 = alloca %struct.uni_ierr*, align 8
  store %struct.uni* %0, %struct.uni** %2, align 8
  %5 = load %struct.uni*, %struct.uni** %2, align 8
  %6 = getelementptr inbounds %struct.uni, %struct.uni* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.uni_ierr*, %struct.uni_ierr** %7, align 8
  store %struct.uni_ierr* %8, %struct.uni_ierr** %3, align 8
  store %struct.uni_ierr* %8, %struct.uni_ierr** %4, align 8
  br label %9

9:                                                ; preds = %40, %1
  %10 = load %struct.uni_ierr*, %struct.uni_ierr** %3, align 8
  %11 = load %struct.uni*, %struct.uni** %2, align 8
  %12 = getelementptr inbounds %struct.uni, %struct.uni* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.uni_ierr*, %struct.uni_ierr** %13, align 8
  %15 = load %struct.uni*, %struct.uni** %2, align 8
  %16 = getelementptr inbounds %struct.uni, %struct.uni* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.uni_ierr, %struct.uni_ierr* %14, i64 %19
  %21 = icmp ult %struct.uni_ierr* %10, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %9
  %23 = load %struct.uni_ierr*, %struct.uni_ierr** %3, align 8
  %24 = getelementptr inbounds %struct.uni_ierr, %struct.uni_ierr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UNI_IE_CAUSE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.uni_ierr*, %struct.uni_ierr** %4, align 8
  %30 = load %struct.uni_ierr*, %struct.uni_ierr** %3, align 8
  %31 = icmp ne %struct.uni_ierr* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.uni_ierr*, %struct.uni_ierr** %4, align 8
  %34 = load %struct.uni_ierr*, %struct.uni_ierr** %3, align 8
  %35 = bitcast %struct.uni_ierr* %33 to i8*
  %36 = bitcast %struct.uni_ierr* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.uni_ierr*, %struct.uni_ierr** %4, align 8
  %39 = getelementptr inbounds %struct.uni_ierr, %struct.uni_ierr* %38, i32 1
  store %struct.uni_ierr* %39, %struct.uni_ierr** %4, align 8
  br label %40

40:                                               ; preds = %37, %22
  %41 = load %struct.uni_ierr*, %struct.uni_ierr** %3, align 8
  %42 = getelementptr inbounds %struct.uni_ierr, %struct.uni_ierr* %41, i32 1
  store %struct.uni_ierr* %42, %struct.uni_ierr** %3, align 8
  br label %9

43:                                               ; preds = %9
  %44 = load %struct.uni_ierr*, %struct.uni_ierr** %4, align 8
  %45 = load %struct.uni*, %struct.uni** %2, align 8
  %46 = getelementptr inbounds %struct.uni, %struct.uni* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.uni_ierr*, %struct.uni_ierr** %47, align 8
  %49 = ptrtoint %struct.uni_ierr* %44 to i64
  %50 = ptrtoint %struct.uni_ierr* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.uni*, %struct.uni** %2, align 8
  %55 = getelementptr inbounds %struct.uni, %struct.uni* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
