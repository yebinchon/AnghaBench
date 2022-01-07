; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_dup_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_dup_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.suj_ino = type { i32 }
%struct.jrefrec = type { i32, i32 }
%struct.suj_rec = type { %union.jrec* }
%union.jrec = type { i32 }

@JOP_ADDREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.suj_ino*, %struct.jrefrec*, i32)* @ino_dup_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ino_dup_ref(%struct.suj_ino* %0, %struct.jrefrec* %1, i32 %2) #0 {
  %4 = alloca %struct.suj_ino*, align 8
  %5 = alloca %struct.jrefrec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jrefrec*, align 8
  %8 = alloca %struct.suj_rec*, align 8
  store %struct.suj_ino* %0, %struct.suj_ino** %4, align 8
  store %struct.jrefrec* %1, %struct.jrefrec** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i8* @errmalloc(i32 8)
  %10 = bitcast i8* %9 to %struct.jrefrec*
  store %struct.jrefrec* %10, %struct.jrefrec** %7, align 8
  %11 = load %struct.jrefrec*, %struct.jrefrec** %7, align 8
  %12 = load %struct.jrefrec*, %struct.jrefrec** %5, align 8
  %13 = bitcast %struct.jrefrec* %11 to i8*
  %14 = bitcast %struct.jrefrec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  %15 = load i32, i32* @JOP_ADDREF, align 4
  %16 = load %struct.jrefrec*, %struct.jrefrec** %7, align 8
  %17 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.jrefrec*, %struct.jrefrec** %7, align 8
  %20 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = call i8* @errmalloc(i32 8)
  %22 = bitcast i8* %21 to %struct.suj_rec*
  store %struct.suj_rec* %22, %struct.suj_rec** %8, align 8
  %23 = load %struct.jrefrec*, %struct.jrefrec** %7, align 8
  %24 = bitcast %struct.jrefrec* %23 to %union.jrec*
  %25 = load %struct.suj_rec*, %struct.suj_rec** %8, align 8
  %26 = getelementptr inbounds %struct.suj_rec, %struct.suj_rec* %25, i32 0, i32 0
  store %union.jrec* %24, %union.jrec** %26, align 8
  %27 = load %struct.suj_ino*, %struct.suj_ino** %4, align 8
  %28 = load %struct.suj_rec*, %struct.suj_rec** %8, align 8
  %29 = call i32 @ino_add_ref(%struct.suj_ino* %27, %struct.suj_rec* %28)
  ret void
}

declare dso_local i8* @errmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ino_add_ref(%struct.suj_ino*, %struct.suj_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
