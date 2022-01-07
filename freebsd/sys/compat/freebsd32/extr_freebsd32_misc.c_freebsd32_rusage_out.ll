; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_rusage_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_rusage_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { i32 }
%struct.rusage32 = type { i32 }

@ru_utime = common dso_local global i32 0, align 4
@ru_stime = common dso_local global i32 0, align 4
@ru_maxrss = common dso_local global i32 0, align 4
@ru_ixrss = common dso_local global i32 0, align 4
@ru_idrss = common dso_local global i32 0, align 4
@ru_isrss = common dso_local global i32 0, align 4
@ru_minflt = common dso_local global i32 0, align 4
@ru_majflt = common dso_local global i32 0, align 4
@ru_nswap = common dso_local global i32 0, align 4
@ru_inblock = common dso_local global i32 0, align 4
@ru_oublock = common dso_local global i32 0, align 4
@ru_msgsnd = common dso_local global i32 0, align 4
@ru_msgrcv = common dso_local global i32 0, align 4
@ru_nsignals = common dso_local global i32 0, align 4
@ru_nvcsw = common dso_local global i32 0, align 4
@ru_nivcsw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freebsd32_rusage_out(%struct.rusage* %0, %struct.rusage32* %1) #0 {
  %3 = alloca %struct.rusage*, align 8
  %4 = alloca %struct.rusage32*, align 8
  store %struct.rusage* %0, %struct.rusage** %3, align 8
  store %struct.rusage32* %1, %struct.rusage32** %4, align 8
  %5 = load %struct.rusage*, %struct.rusage** %3, align 8
  %6 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %7 = load i32, i32* @ru_utime, align 4
  %8 = getelementptr inbounds %struct.rusage, %struct.rusage* %5, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %6, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @TV_CP(i32 %9, i32 %11, i32 %7)
  %13 = load %struct.rusage*, %struct.rusage** %3, align 8
  %14 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %15 = load i32, i32* @ru_stime, align 4
  %16 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %14, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TV_CP(i32 %17, i32 %19, i32 %15)
  %21 = load %struct.rusage*, %struct.rusage** %3, align 8
  %22 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %23 = load i32, i32* @ru_maxrss, align 4
  %24 = getelementptr inbounds %struct.rusage, %struct.rusage* %21, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %22, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CP(i32 %25, i32 %27, i32 %23)
  %29 = load %struct.rusage*, %struct.rusage** %3, align 8
  %30 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %31 = load i32, i32* @ru_ixrss, align 4
  %32 = getelementptr inbounds %struct.rusage, %struct.rusage* %29, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %30, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CP(i32 %33, i32 %35, i32 %31)
  %37 = load %struct.rusage*, %struct.rusage** %3, align 8
  %38 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %39 = load i32, i32* @ru_idrss, align 4
  %40 = getelementptr inbounds %struct.rusage, %struct.rusage* %37, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %38, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @CP(i32 %41, i32 %43, i32 %39)
  %45 = load %struct.rusage*, %struct.rusage** %3, align 8
  %46 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %47 = load i32, i32* @ru_isrss, align 4
  %48 = getelementptr inbounds %struct.rusage, %struct.rusage* %45, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %46, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CP(i32 %49, i32 %51, i32 %47)
  %53 = load %struct.rusage*, %struct.rusage** %3, align 8
  %54 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %55 = load i32, i32* @ru_minflt, align 4
  %56 = getelementptr inbounds %struct.rusage, %struct.rusage* %53, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %54, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CP(i32 %57, i32 %59, i32 %55)
  %61 = load %struct.rusage*, %struct.rusage** %3, align 8
  %62 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %63 = load i32, i32* @ru_majflt, align 4
  %64 = getelementptr inbounds %struct.rusage, %struct.rusage* %61, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %62, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @CP(i32 %65, i32 %67, i32 %63)
  %69 = load %struct.rusage*, %struct.rusage** %3, align 8
  %70 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %71 = load i32, i32* @ru_nswap, align 4
  %72 = getelementptr inbounds %struct.rusage, %struct.rusage* %69, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %70, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @CP(i32 %73, i32 %75, i32 %71)
  %77 = load %struct.rusage*, %struct.rusage** %3, align 8
  %78 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %79 = load i32, i32* @ru_inblock, align 4
  %80 = getelementptr inbounds %struct.rusage, %struct.rusage* %77, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %78, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @CP(i32 %81, i32 %83, i32 %79)
  %85 = load %struct.rusage*, %struct.rusage** %3, align 8
  %86 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %87 = load i32, i32* @ru_oublock, align 4
  %88 = getelementptr inbounds %struct.rusage, %struct.rusage* %85, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %86, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @CP(i32 %89, i32 %91, i32 %87)
  %93 = load %struct.rusage*, %struct.rusage** %3, align 8
  %94 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %95 = load i32, i32* @ru_msgsnd, align 4
  %96 = getelementptr inbounds %struct.rusage, %struct.rusage* %93, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %94, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @CP(i32 %97, i32 %99, i32 %95)
  %101 = load %struct.rusage*, %struct.rusage** %3, align 8
  %102 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %103 = load i32, i32* @ru_msgrcv, align 4
  %104 = getelementptr inbounds %struct.rusage, %struct.rusage* %101, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %102, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @CP(i32 %105, i32 %107, i32 %103)
  %109 = load %struct.rusage*, %struct.rusage** %3, align 8
  %110 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %111 = load i32, i32* @ru_nsignals, align 4
  %112 = getelementptr inbounds %struct.rusage, %struct.rusage* %109, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %110, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @CP(i32 %113, i32 %115, i32 %111)
  %117 = load %struct.rusage*, %struct.rusage** %3, align 8
  %118 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %119 = load i32, i32* @ru_nvcsw, align 4
  %120 = getelementptr inbounds %struct.rusage, %struct.rusage* %117, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %118, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @CP(i32 %121, i32 %123, i32 %119)
  %125 = load %struct.rusage*, %struct.rusage** %3, align 8
  %126 = load %struct.rusage32*, %struct.rusage32** %4, align 8
  %127 = load i32, i32* @ru_nivcsw, align 4
  %128 = getelementptr inbounds %struct.rusage, %struct.rusage* %125, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.rusage32, %struct.rusage32* %126, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @CP(i32 %129, i32 %131, i32 %127)
  ret void
}

declare dso_local i32 @TV_CP(i32, i32, i32) #1

declare dso_local i32 @CP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
