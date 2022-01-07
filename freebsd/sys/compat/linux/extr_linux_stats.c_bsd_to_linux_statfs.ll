; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_bsd_to_linux_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_bsd_to_linux_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.l_statfs = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }

@MAXNAMLEN = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@LINUX_HIBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.statfs*, %struct.l_statfs*)* @bsd_to_linux_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_to_linux_statfs(%struct.statfs* %0, %struct.l_statfs* %1) #0 {
  %3 = alloca %struct.statfs*, align 8
  %4 = alloca %struct.l_statfs*, align 8
  store %struct.statfs* %0, %struct.statfs** %3, align 8
  store %struct.l_statfs* %1, %struct.l_statfs** %4, align 8
  %5 = load %struct.statfs*, %struct.statfs** %3, align 8
  %6 = getelementptr inbounds %struct.statfs, %struct.statfs* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @bsd_to_linux_ftype(i32 %7)
  %9 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %10 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %9, i32 0, i32 11
  store i32 %8, i32* %10, align 8
  %11 = load %struct.statfs*, %struct.statfs** %3, align 8
  %12 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %15 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.statfs*, %struct.statfs** %3, align 8
  %17 = getelementptr inbounds %struct.statfs, %struct.statfs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %20 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.statfs*, %struct.statfs** %3, align 8
  %22 = getelementptr inbounds %struct.statfs, %struct.statfs* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %25 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.statfs*, %struct.statfs** %3, align 8
  %27 = getelementptr inbounds %struct.statfs, %struct.statfs* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %30 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.statfs*, %struct.statfs** %3, align 8
  %32 = getelementptr inbounds %struct.statfs, %struct.statfs* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %35 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.statfs*, %struct.statfs** %3, align 8
  %37 = getelementptr inbounds %struct.statfs, %struct.statfs* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %40 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.statfs*, %struct.statfs** %3, align 8
  %42 = getelementptr inbounds %struct.statfs, %struct.statfs* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %48 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %47, i32 0, i32 10
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %46, i32* %51, align 4
  %52 = load %struct.statfs*, %struct.statfs** %3, align 8
  %53 = getelementptr inbounds %struct.statfs, %struct.statfs* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %59 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* @MAXNAMLEN, align 4
  %64 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %65 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 8
  %66 = load %struct.statfs*, %struct.statfs** %3, align 8
  %67 = getelementptr inbounds %struct.statfs, %struct.statfs* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %70 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %72 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %71, i32 0, i32 8
  store i64 0, i64* %72, align 8
  %73 = load %struct.l_statfs*, %struct.l_statfs** %4, align 8
  %74 = getelementptr inbounds %struct.l_statfs, %struct.l_statfs* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memset(i32 %75, i32 0, i32 4)
  ret i32 0
}

declare dso_local i32 @bsd_to_linux_ftype(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
