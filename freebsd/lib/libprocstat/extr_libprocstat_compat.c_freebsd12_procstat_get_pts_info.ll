; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat_compat.c_freebsd12_procstat_get_pts_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat_compat.c_freebsd12_procstat_get_pts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.filestat = type { i32 }
%struct.freebsd12_ptsstat = type { i32, i32 }
%struct.ptsstat = type { i32, i32 }

@trunc_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd12_procstat_get_pts_info(%struct.procstat* %0, %struct.filestat* %1, %struct.freebsd12_ptsstat* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.procstat*, align 8
  %7 = alloca %struct.filestat*, align 8
  %8 = alloca %struct.freebsd12_ptsstat*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ptsstat, align 4
  %11 = alloca i32, align 4
  store %struct.procstat* %0, %struct.procstat** %6, align 8
  store %struct.filestat* %1, %struct.filestat** %7, align 8
  store %struct.freebsd12_ptsstat* %2, %struct.freebsd12_ptsstat** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.procstat*, %struct.procstat** %6, align 8
  %13 = load %struct.filestat*, %struct.filestat** %7, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @procstat_get_pts_info(%struct.procstat* %12, %struct.filestat* %13, %struct.ptsstat* %10, i8* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %44

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.ptsstat, %struct.ptsstat* %10, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.freebsd12_ptsstat*, %struct.freebsd12_ptsstat** %8, align 8
  %24 = getelementptr inbounds %struct.freebsd12_ptsstat, %struct.freebsd12_ptsstat* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.ptsstat, %struct.ptsstat* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strlen(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 4
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.freebsd12_ptsstat*, %struct.freebsd12_ptsstat** %8, align 8
  %32 = getelementptr inbounds %struct.freebsd12_ptsstat, %struct.freebsd12_ptsstat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @trunc_name, align 4
  %35 = call i32 @strcpy(i32 %33, i32 %34)
  br label %43

36:                                               ; preds = %20
  %37 = load %struct.freebsd12_ptsstat*, %struct.freebsd12_ptsstat** %8, align 8
  %38 = getelementptr inbounds %struct.freebsd12_ptsstat, %struct.freebsd12_ptsstat* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ptsstat, %struct.ptsstat* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32 %39, i32 %41, i32 4)
  br label %43

43:                                               ; preds = %36, %30
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %18
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @procstat_get_pts_info(%struct.procstat*, %struct.filestat*, %struct.ptsstat*, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
