; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afssys.c_k_setpag.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afssys.c_k_setpag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.devdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@afs_entry_point = common dso_local global i32 0, align 4
@AFSCALL_SETPAG = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIGSYS = common dso_local global i32 0, align 4
@afs_syscalls = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @k_setpag() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.procdata, align 4
  %3 = alloca %struct.devdata, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @afs_entry_point, align 4
  switch i32 %5, label %24 [
    i32 133, label %6
    i32 132, label %11
  ]

6:                                                ; preds = %0
  %7 = bitcast %struct.procdata* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 36, i1 false)
  %8 = getelementptr inbounds %struct.procdata, %struct.procdata* %2, i32 0, i32 4
  %9 = load i32, i32* @AFSCALL_SETPAG, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @do_ioctl(%struct.procdata* %2)
  store i32 %10, i32* %1, align 4
  br label %26

11:                                               ; preds = %0
  %12 = bitcast %struct.devdata* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 36, i1 false)
  %13 = getelementptr inbounds %struct.devdata, %struct.devdata* %3, i32 0, i32 0
  %14 = load i32, i32* @AFSCALL_SETPAG, align 4
  store i32 %14, i32* %13, align 4
  %15 = bitcast %struct.devdata* %3 to %struct.procdata*
  %16 = call i32 @do_ioctl(%struct.procdata* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %1, align 4
  br label %26

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.devdata, %struct.devdata* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %1, align 4
  br label %26

24:                                               ; preds = %0
  %25 = load i32, i32* @ENOSYS, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %1, align 4
  br label %26

26:                                               ; preds = %24, %21, %19, %6
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @do_ioctl(%struct.procdata*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
