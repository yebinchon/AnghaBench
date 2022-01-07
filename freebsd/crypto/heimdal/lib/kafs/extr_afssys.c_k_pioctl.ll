; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afssys.c_k_pioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afssys.c_k_pioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ViceIoctl = type { i32 }
%struct.procdata = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.devdata = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@afs_entry_point = common dso_local global i32 0, align 4
@AFSCALL_PIOCTL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIGSYS = common dso_local global i32 0, align 4
@afs_syscalls = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @k_pioctl(i8* %0, i32 %1, %struct.ViceIoctl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ViceIoctl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.procdata, align 8
  %11 = alloca %struct.devdata, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ViceIoctl* %2, %struct.ViceIoctl** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @afs_entry_point, align 4
  switch i32 %13, label %79 [
    i32 133, label %14
    i32 132, label %42
  ]

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 4
  %20 = load i32, i32* @AFSCALL_PIOCTL, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 5
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 6
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 7
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 8
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 9
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 10
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 11
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 12
  store i32 0, i32* %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 1
  store i64 %33, i64* %34, align 8
  %35 = load %struct.ViceIoctl*, %struct.ViceIoctl** %8, align 8
  %36 = ptrtoint %struct.ViceIoctl* %35 to i64
  %37 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 2
  store i64 %36, i64* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 3
  store i64 %39, i64* %40, align 8
  %41 = call i32 @do_ioctl(%struct.procdata* %10)
  store i32 %41, i32* %5, align 4
  br label %81

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 0
  %44 = load i32, i32* @AFSCALL_PIOCTL, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 4
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 5
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 6
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 7
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 8
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 9
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 10
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 11
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 12
  store i32 0, i32* %57, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 1
  store i64 %62, i64* %63, align 8
  %64 = load %struct.ViceIoctl*, %struct.ViceIoctl** %8, align 8
  %65 = ptrtoint %struct.ViceIoctl* %64 to i64
  %66 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 2
  store i64 %65, i64* %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 3
  store i64 %68, i64* %69, align 8
  %70 = bitcast %struct.devdata* %11 to %struct.procdata*
  %71 = call i32 @do_ioctl(%struct.procdata* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %42
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %5, align 4
  br label %81

76:                                               ; preds = %42
  %77 = getelementptr inbounds %struct.devdata, %struct.devdata* %11, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %5, align 4
  br label %81

79:                                               ; preds = %4
  %80 = load i32, i32* @ENOSYS, align 4
  store i32 %80, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %76, %74, %14
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @do_ioctl(%struct.procdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
