; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_copy_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_copy_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.stat32 = type { i32, i64, i64, i64, i64, i64, i64 }

@st_dev = common dso_local global i32 0, align 4
@st_ino = common dso_local global i32 0, align 4
@st_mode = common dso_local global i32 0, align 4
@st_nlink = common dso_local global i32 0, align 4
@st_uid = common dso_local global i32 0, align 4
@st_gid = common dso_local global i32 0, align 4
@st_rdev = common dso_local global i32 0, align 4
@st_atim = common dso_local global i32 0, align 4
@st_mtim = common dso_local global i32 0, align 4
@st_ctim = common dso_local global i32 0, align 4
@st_size = common dso_local global i32 0, align 4
@st_blocks = common dso_local global i32 0, align 4
@st_blksize = common dso_local global i32 0, align 4
@st_flags = common dso_local global i32 0, align 4
@st_gen = common dso_local global i32 0, align 4
@st_birthtim = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stat*, %struct.stat32*)* @copy_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_stat(%struct.stat* %0, %struct.stat32* %1) #0 {
  %3 = alloca %struct.stat*, align 8
  %4 = alloca %struct.stat32*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  store %struct.stat32* %1, %struct.stat32** %4, align 8
  %5 = load %struct.stat*, %struct.stat** %3, align 8
  %6 = load %struct.stat32*, %struct.stat32** %4, align 8
  %7 = load i32, i32* @st_dev, align 4
  %8 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @CP(i32 %9, %struct.stat32* byval(%struct.stat32) align 8 %6, i32 %7)
  %11 = load %struct.stat*, %struct.stat** %3, align 8
  %12 = load %struct.stat32*, %struct.stat32** %4, align 8
  %13 = load i32, i32* @st_ino, align 4
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CP(i32 %15, %struct.stat32* byval(%struct.stat32) align 8 %12, i32 %13)
  %17 = load %struct.stat*, %struct.stat** %3, align 8
  %18 = load %struct.stat32*, %struct.stat32** %4, align 8
  %19 = load i32, i32* @st_mode, align 4
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CP(i32 %21, %struct.stat32* byval(%struct.stat32) align 8 %18, i32 %19)
  %23 = load %struct.stat*, %struct.stat** %3, align 8
  %24 = load %struct.stat32*, %struct.stat32** %4, align 8
  %25 = load i32, i32* @st_nlink, align 4
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CP(i32 %27, %struct.stat32* byval(%struct.stat32) align 8 %24, i32 %25)
  %29 = load %struct.stat*, %struct.stat** %3, align 8
  %30 = load %struct.stat32*, %struct.stat32** %4, align 8
  %31 = load i32, i32* @st_uid, align 4
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CP(i32 %33, %struct.stat32* byval(%struct.stat32) align 8 %30, i32 %31)
  %35 = load %struct.stat*, %struct.stat** %3, align 8
  %36 = load %struct.stat32*, %struct.stat32** %4, align 8
  %37 = load i32, i32* @st_gid, align 4
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %35, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CP(i32 %39, %struct.stat32* byval(%struct.stat32) align 8 %36, i32 %37)
  %41 = load %struct.stat*, %struct.stat** %3, align 8
  %42 = load %struct.stat32*, %struct.stat32** %4, align 8
  %43 = load i32, i32* @st_rdev, align 4
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %41, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CP(i32 %45, %struct.stat32* byval(%struct.stat32) align 8 %42, i32 %43)
  %47 = load %struct.stat*, %struct.stat** %3, align 8
  %48 = load %struct.stat32*, %struct.stat32** %4, align 8
  %49 = load i32, i32* @st_atim, align 4
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %47, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @TS_CP(i32 %51, %struct.stat32* byval(%struct.stat32) align 8 %48, i32 %49)
  %53 = load %struct.stat*, %struct.stat** %3, align 8
  %54 = load %struct.stat32*, %struct.stat32** %4, align 8
  %55 = load i32, i32* @st_mtim, align 4
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %53, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TS_CP(i32 %57, %struct.stat32* byval(%struct.stat32) align 8 %54, i32 %55)
  %59 = load %struct.stat*, %struct.stat** %3, align 8
  %60 = load %struct.stat32*, %struct.stat32** %4, align 8
  %61 = load i32, i32* @st_ctim, align 4
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %59, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @TS_CP(i32 %63, %struct.stat32* byval(%struct.stat32) align 8 %60, i32 %61)
  %65 = load %struct.stat*, %struct.stat** %3, align 8
  %66 = load %struct.stat32*, %struct.stat32** %4, align 8
  %67 = load i32, i32* @st_size, align 4
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %65, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CP(i32 %69, %struct.stat32* byval(%struct.stat32) align 8 %66, i32 %67)
  %71 = load %struct.stat*, %struct.stat** %3, align 8
  %72 = load %struct.stat32*, %struct.stat32** %4, align 8
  %73 = load i32, i32* @st_blocks, align 4
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %71, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @CP(i32 %75, %struct.stat32* byval(%struct.stat32) align 8 %72, i32 %73)
  %77 = load %struct.stat*, %struct.stat** %3, align 8
  %78 = load %struct.stat32*, %struct.stat32** %4, align 8
  %79 = load i32, i32* @st_blksize, align 4
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %77, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @CP(i32 %81, %struct.stat32* byval(%struct.stat32) align 8 %78, i32 %79)
  %83 = load %struct.stat*, %struct.stat** %3, align 8
  %84 = load %struct.stat32*, %struct.stat32** %4, align 8
  %85 = load i32, i32* @st_flags, align 4
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %83, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @CP(i32 %87, %struct.stat32* byval(%struct.stat32) align 8 %84, i32 %85)
  %89 = load %struct.stat*, %struct.stat** %3, align 8
  %90 = load %struct.stat32*, %struct.stat32** %4, align 8
  %91 = load i32, i32* @st_gen, align 4
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %89, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @CP(i32 %93, %struct.stat32* byval(%struct.stat32) align 8 %90, i32 %91)
  %95 = load %struct.stat*, %struct.stat** %3, align 8
  %96 = load %struct.stat32*, %struct.stat32** %4, align 8
  %97 = load i32, i32* @st_birthtim, align 4
  %98 = getelementptr inbounds %struct.stat, %struct.stat* %95, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @TS_CP(i32 %99, %struct.stat32* byval(%struct.stat32) align 8 %96, i32 %97)
  %101 = load %struct.stat32*, %struct.stat32** %4, align 8
  %102 = getelementptr inbounds %struct.stat32, %struct.stat32* %101, i32 0, i32 6
  store i64 0, i64* %102, align 8
  %103 = load %struct.stat32*, %struct.stat32** %4, align 8
  %104 = getelementptr inbounds %struct.stat32, %struct.stat32* %103, i32 0, i32 5
  store i64 0, i64* %104, align 8
  %105 = load %struct.stat32*, %struct.stat32** %4, align 8
  %106 = getelementptr inbounds %struct.stat32, %struct.stat32* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @bzero(i32 %107, i32 4)
  ret void
}

declare dso_local i32 @CP(i32, %struct.stat32* byval(%struct.stat32) align 8, i32) #1

declare dso_local i32 @TS_CP(i32, %struct.stat32* byval(%struct.stat32) align 8, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
