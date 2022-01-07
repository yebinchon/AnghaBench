; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_compat-ino64.h___statfs11_to_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_compat-ino64.h___statfs11_to_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freebsd11_statfs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statfs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@STATFS_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.freebsd11_statfs*, %struct.statfs*)* @__statfs11_to_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__statfs11_to_statfs(%struct.freebsd11_statfs* %0, %struct.statfs* %1) #0 {
  %3 = alloca %struct.freebsd11_statfs*, align 8
  %4 = alloca %struct.statfs*, align 8
  store %struct.freebsd11_statfs* %0, %struct.freebsd11_statfs** %3, align 8
  store %struct.statfs* %1, %struct.statfs** %4, align 8
  %5 = load i32, i32* @STATFS_VERSION, align 4
  %6 = load %struct.statfs*, %struct.statfs** %4, align 8
  %7 = getelementptr inbounds %struct.statfs, %struct.statfs* %6, i32 0, i32 21
  store i32 %5, i32* %7, align 4
  %8 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %9 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %8, i32 0, i32 18
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.statfs*, %struct.statfs** %4, align 8
  %12 = getelementptr inbounds %struct.statfs, %struct.statfs* %11, i32 0, i32 20
  store i32 %10, i32* %12, align 4
  %13 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %14 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %13, i32 0, i32 17
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.statfs*, %struct.statfs** %4, align 8
  %17 = getelementptr inbounds %struct.statfs, %struct.statfs* %16, i32 0, i32 19
  store i32 %15, i32* %17, align 4
  %18 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %19 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %18, i32 0, i32 16
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.statfs*, %struct.statfs** %4, align 8
  %22 = getelementptr inbounds %struct.statfs, %struct.statfs* %21, i32 0, i32 18
  store i32 %20, i32* %22, align 4
  %23 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %24 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %23, i32 0, i32 15
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.statfs*, %struct.statfs** %4, align 8
  %27 = getelementptr inbounds %struct.statfs, %struct.statfs* %26, i32 0, i32 17
  store i32 %25, i32* %27, align 4
  %28 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %29 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.statfs*, %struct.statfs** %4, align 8
  %32 = getelementptr inbounds %struct.statfs, %struct.statfs* %31, i32 0, i32 16
  store i32 %30, i32* %32, align 4
  %33 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %34 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.statfs*, %struct.statfs** %4, align 8
  %37 = getelementptr inbounds %struct.statfs, %struct.statfs* %36, i32 0, i32 15
  store i32 %35, i32* %37, align 4
  %38 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %39 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.statfs*, %struct.statfs** %4, align 8
  %42 = getelementptr inbounds %struct.statfs, %struct.statfs* %41, i32 0, i32 14
  store i32 %40, i32* %42, align 4
  %43 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %44 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.statfs*, %struct.statfs** %4, align 8
  %47 = getelementptr inbounds %struct.statfs, %struct.statfs* %46, i32 0, i32 13
  store i32 %45, i32* %47, align 4
  %48 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %49 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.statfs*, %struct.statfs** %4, align 8
  %52 = getelementptr inbounds %struct.statfs, %struct.statfs* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 4
  %53 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %54 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.statfs*, %struct.statfs** %4, align 8
  %57 = getelementptr inbounds %struct.statfs, %struct.statfs* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 4
  %58 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %59 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.statfs*, %struct.statfs** %4, align 8
  %62 = getelementptr inbounds %struct.statfs, %struct.statfs* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 4
  %63 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %64 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.statfs*, %struct.statfs** %4, align 8
  %67 = getelementptr inbounds %struct.statfs, %struct.statfs* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  %68 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %69 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.statfs*, %struct.statfs** %4, align 8
  %72 = getelementptr inbounds %struct.statfs, %struct.statfs* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  %73 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %74 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.statfs*, %struct.statfs** %4, align 8
  %77 = getelementptr inbounds %struct.statfs, %struct.statfs* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %79 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.statfs*, %struct.statfs** %4, align 8
  %82 = getelementptr inbounds %struct.statfs, %struct.statfs* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %84 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.statfs*, %struct.statfs** %4, align 8
  %87 = getelementptr inbounds %struct.statfs, %struct.statfs* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.statfs*, %struct.statfs** %4, align 8
  %89 = getelementptr inbounds %struct.statfs, %struct.statfs* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @memset(i32 %90, i32 0, i32 4)
  %92 = load %struct.statfs*, %struct.statfs** %4, align 8
  %93 = getelementptr inbounds %struct.statfs, %struct.statfs* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @memset(i32 %94, i32 0, i32 4)
  %96 = load %struct.statfs*, %struct.statfs** %4, align 8
  %97 = getelementptr inbounds %struct.statfs, %struct.statfs* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %100 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strlcpy(i32 %98, i32 %101, i32 4)
  %103 = load %struct.statfs*, %struct.statfs** %4, align 8
  %104 = getelementptr inbounds %struct.statfs, %struct.statfs* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %107 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @strlcpy(i32 %105, i32 %108, i32 4)
  %110 = load %struct.statfs*, %struct.statfs** %4, align 8
  %111 = getelementptr inbounds %struct.statfs, %struct.statfs* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %3, align 8
  %114 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @strlcpy(i32 %112, i32 %115, i32 4)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
