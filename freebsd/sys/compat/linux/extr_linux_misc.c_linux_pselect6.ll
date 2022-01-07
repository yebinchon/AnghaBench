; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_pselect6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_pselect6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64* }
%struct.linux_pselect6_args = type { i32*, i32, i32, i32, i32, i32* }
%struct.timeval = type { i64 }
%struct.l_pselect6arg = type { i32, i64 }
%struct.l_timespec = type { i32, i64 }
%struct.timespec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LINUX_NFDBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_pselect6(%struct.thread* %0, %struct.linux_pselect6_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_pselect6_args*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca %struct.l_pselect6arg, align 8
  %11 = alloca %struct.l_timespec, align 8
  %12 = alloca %struct.timespec, align 4
  %13 = alloca %struct.l_timespec, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_pselect6_args* %1, %struct.linux_pselect6_args** %5, align 8
  store i32* null, i32** %14, align 8
  %17 = load %struct.linux_pselect6_args*, %struct.linux_pselect6_args** %5, align 8
  %18 = getelementptr inbounds %struct.linux_pselect6_args, %struct.linux_pselect6_args* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %54

21:                                               ; preds = %2
  %22 = load %struct.linux_pselect6_args*, %struct.linux_pselect6_args** %5, align 8
  %23 = getelementptr inbounds %struct.linux_pselect6_args, %struct.linux_pselect6_args* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast %struct.l_pselect6arg* %10 to %struct.l_timespec*
  %26 = call i32 @copyin(i32* %24, %struct.l_timespec* %25, i32 16)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %3, align 4
  br label %140

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.l_pselect6arg, %struct.l_pselect6arg* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 16
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %140

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.l_pselect6arg, %struct.l_pselect6arg* %10, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.l_pselect6arg, %struct.l_pselect6arg* %10, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32* @PTRIN(i64 %44)
  %46 = call i32 @copyin(i32* %45, %struct.l_timespec* %13, i32 16)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %3, align 4
  br label %140

51:                                               ; preds = %42
  %52 = call i32 @linux_to_bsd_sigset(%struct.l_timespec* %13, i32* %15)
  store i32* %15, i32** %14, align 8
  br label %53

53:                                               ; preds = %51, %38
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.linux_pselect6_args*, %struct.linux_pselect6_args** %5, align 8
  %56 = getelementptr inbounds %struct.linux_pselect6_args, %struct.linux_pselect6_args* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load %struct.linux_pselect6_args*, %struct.linux_pselect6_args** %5, align 8
  %61 = getelementptr inbounds %struct.linux_pselect6_args, %struct.linux_pselect6_args* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @copyin(i32* %62, %struct.l_timespec* %11, i32 16)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %3, align 4
  br label %140

68:                                               ; preds = %59
  %69 = call i32 @linux_to_native_timespec(%struct.timespec* %12, %struct.l_timespec* %11)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %3, align 4
  br label %140

74:                                               ; preds = %68
  %75 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %6, %struct.timespec* %12)
  %76 = call i64 @itimerfix(%struct.timeval* %6)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %3, align 4
  br label %140

80:                                               ; preds = %74
  %81 = call i32 @microtime(%struct.timeval* %7)
  store %struct.timeval* %6, %struct.timeval** %9, align 8
  br label %83

82:                                               ; preds = %54
  store %struct.timeval* null, %struct.timeval** %9, align 8
  br label %83

83:                                               ; preds = %82, %80
  %84 = load %struct.thread*, %struct.thread** %4, align 8
  %85 = load %struct.linux_pselect6_args*, %struct.linux_pselect6_args** %5, align 8
  %86 = getelementptr inbounds %struct.linux_pselect6_args, %struct.linux_pselect6_args* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.linux_pselect6_args*, %struct.linux_pselect6_args** %5, align 8
  %89 = getelementptr inbounds %struct.linux_pselect6_args, %struct.linux_pselect6_args* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.linux_pselect6_args*, %struct.linux_pselect6_args** %5, align 8
  %92 = getelementptr inbounds %struct.linux_pselect6_args, %struct.linux_pselect6_args* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.linux_pselect6_args*, %struct.linux_pselect6_args** %5, align 8
  %95 = getelementptr inbounds %struct.linux_pselect6_args, %struct.linux_pselect6_args* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.timeval*, %struct.timeval** %9, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* @LINUX_NFDBITS, align 4
  %100 = call i32 @kern_pselect(%struct.thread* %84, i32 %87, i32 %90, i32 %93, i32 %96, %struct.timeval* %97, i32* %98, i32 %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %138

103:                                              ; preds = %83
  %104 = load %struct.linux_pselect6_args*, %struct.linux_pselect6_args** %5, align 8
  %105 = getelementptr inbounds %struct.linux_pselect6_args, %struct.linux_pselect6_args* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %138

108:                                              ; preds = %103
  %109 = load %struct.thread*, %struct.thread** %4, align 8
  %110 = getelementptr inbounds %struct.thread, %struct.thread* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %108
  %116 = call i32 @microtime(%struct.timeval* %8)
  %117 = call i32 @timevalsub(%struct.timeval* %8, %struct.timeval* %7)
  %118 = call i32 @timevalsub(%struct.timeval* %6, %struct.timeval* %8)
  %119 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = call i32 @timevalclear(%struct.timeval* %6)
  br label %124

124:                                              ; preds = %122, %115
  br label %127

125:                                              ; preds = %108
  %126 = call i32 @timevalclear(%struct.timeval* %6)
  br label %127

127:                                              ; preds = %125, %124
  %128 = call i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval* %6, %struct.timespec* %12)
  %129 = call i32 @native_to_linux_timespec(%struct.l_timespec* %11, %struct.timespec* %12)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.linux_pselect6_args*, %struct.linux_pselect6_args** %5, align 8
  %134 = getelementptr inbounds %struct.linux_pselect6_args, %struct.linux_pselect6_args* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @copyout(%struct.l_timespec* %11, i32* %135, i32 16)
  store i32 %136, i32* %16, align 4
  br label %137

137:                                              ; preds = %132, %127
  br label %138

138:                                              ; preds = %137, %103, %83
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %78, %72, %66, %49, %36, %29
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @copyin(i32*, %struct.l_timespec*, i32) #1

declare dso_local i32* @PTRIN(i64) #1

declare dso_local i32 @linux_to_bsd_sigset(%struct.l_timespec*, i32*) #1

declare dso_local i32 @linux_to_native_timespec(%struct.timespec*, %struct.l_timespec*) #1

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.timespec*) #1

declare dso_local i64 @itimerfix(%struct.timeval*) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i32 @kern_pselect(%struct.thread*, i32, i32, i32, i32, %struct.timeval*, i32*, i32) #1

declare dso_local i32 @timevalsub(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @timevalclear(%struct.timeval*) #1

declare dso_local i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @native_to_linux_timespec(%struct.l_timespec*, %struct.timespec*) #1

declare dso_local i32 @copyout(%struct.l_timespec*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
