; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_waitid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_waitid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, %struct.proc* }
%struct.proc = type { i32 }
%struct.linux_waitid_args = type { i32, i32*, i32*, i32, i32 }
%struct.__wrusage = type { i32 }
%struct.TYPE_4__ = type { i32 }

@WNOHANG = common dso_local global i32 0, align 4
@WNOWAIT = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@WUNTRACED = common dso_local global i32 0, align 4
@WCONTINUED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@P_ALL = common dso_local global i32 0, align 4
@P_PID = common dso_local global i32 0, align 4
@P_PGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_waitid(%struct.thread* %0, %struct.linux_waitid_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_waitid_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.__wrusage, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.proc*, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_waitid_args* %1, %struct.linux_waitid_args** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.linux_waitid_args*, %struct.linux_waitid_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_waitid_args, %struct.linux_waitid_args* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @linux_to_bsd_waitopts(i32 %17, i32* %7)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @WNOHANG, align 4
  %21 = load i32, i32* @WNOWAIT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @WEXITED, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @WUNTRACED, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @WCONTINUED, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %19, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %132

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @WEXITED, align 4
  %37 = load i32, i32* @WUNTRACED, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @WCONTINUED, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %35, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %132

45:                                               ; preds = %34
  %46 = load %struct.linux_waitid_args*, %struct.linux_waitid_args** %5, align 8
  %47 = getelementptr inbounds %struct.linux_waitid_args, %struct.linux_waitid_args* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %69 [
    i32 130, label %49
    i32 128, label %51
    i32 129, label %60
  ]

49:                                               ; preds = %45
  %50 = load i32, i32* @P_ALL, align 4
  store i32 %50, i32* %12, align 4
  br label %71

51:                                               ; preds = %45
  %52 = load %struct.linux_waitid_args*, %struct.linux_waitid_args** %5, align 8
  %53 = getelementptr inbounds %struct.linux_waitid_args, %struct.linux_waitid_args* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %3, align 4
  br label %132

58:                                               ; preds = %51
  %59 = load i32, i32* @P_PID, align 4
  store i32 %59, i32* %12, align 4
  br label %71

60:                                               ; preds = %45
  %61 = load %struct.linux_waitid_args*, %struct.linux_waitid_args** %5, align 8
  %62 = getelementptr inbounds %struct.linux_waitid_args, %struct.linux_waitid_args* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %3, align 4
  br label %132

67:                                               ; preds = %60
  %68 = load i32, i32* @P_PGID, align 4
  store i32 %68, i32* %12, align 4
  br label %71

69:                                               ; preds = %45
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %3, align 4
  br label %132

71:                                               ; preds = %67, %58, %49
  %72 = load %struct.thread*, %struct.thread** %4, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.linux_waitid_args*, %struct.linux_waitid_args** %5, align 8
  %75 = getelementptr inbounds %struct.linux_waitid_args, %struct.linux_waitid_args* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @kern_wait6(%struct.thread* %72, i32 %73, i32 %76, i32* %6, i32 %77, %struct.__wrusage* %9, %struct.TYPE_4__* %10)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %3, align 4
  br label %132

83:                                               ; preds = %71
  %84 = load %struct.linux_waitid_args*, %struct.linux_waitid_args** %5, align 8
  %85 = getelementptr inbounds %struct.linux_waitid_args, %struct.linux_waitid_args* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.__wrusage, %struct.__wrusage* %9, i32 0, i32 0
  %90 = load %struct.linux_waitid_args*, %struct.linux_waitid_args** %5, align 8
  %91 = getelementptr inbounds %struct.linux_waitid_args, %struct.linux_waitid_args* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @linux_copyout_rusage(i32* %89, i32* %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %3, align 4
  br label %132

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %83
  %100 = load %struct.linux_waitid_args*, %struct.linux_waitid_args** %5, align 8
  %101 = getelementptr inbounds %struct.linux_waitid_args, %struct.linux_waitid_args* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %126

104:                                              ; preds = %99
  %105 = load %struct.thread*, %struct.thread** %4, align 8
  %106 = getelementptr inbounds %struct.thread, %struct.thread* %105, i32 0, i32 1
  %107 = load %struct.proc*, %struct.proc** %106, align 8
  store %struct.proc* %107, %struct.proc** %13, align 8
  %108 = call i32 @bzero(i32* %11, i32 4)
  %109 = load %struct.thread*, %struct.thread** %4, align 8
  %110 = getelementptr inbounds %struct.thread, %struct.thread* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @bsd_to_linux_signal(i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @siginfo_to_lsiginfo(%struct.TYPE_4__* %10, i32* %11, i32 %119)
  br label %121

121:                                              ; preds = %115, %104
  %122 = load %struct.linux_waitid_args*, %struct.linux_waitid_args** %5, align 8
  %123 = getelementptr inbounds %struct.linux_waitid_args, %struct.linux_waitid_args* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @copyout(i32* %11, i32* %124, i32 4)
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %121, %99
  %127 = load %struct.thread*, %struct.thread** %4, align 8
  %128 = getelementptr inbounds %struct.thread, %struct.thread* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* %14, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %126, %96, %81, %69, %65, %56, %43, %32
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @linux_to_bsd_waitopts(i32, i32*) #1

declare dso_local i32 @kern_wait6(%struct.thread*, i32, i32, i32*, i32, %struct.__wrusage*, %struct.TYPE_4__*) #1

declare dso_local i32 @linux_copyout_rusage(i32*, i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bsd_to_linux_signal(i32) #1

declare dso_local i32 @siginfo_to_lsiginfo(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
