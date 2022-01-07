; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_prlimit64.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_prlimit64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.linux_prlimit64_args = type { i64, i64, i32*, i32* }
%struct.rlimit = type { i64, i64 }
%struct.linux_rlimit64 = type { i64, i64 }

@LINUX_RLIM_NLIMITS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@linux_to_bsd_resource = common dso_local global i32* null, align 8
@PGET_HOLD = common dso_local global i32 0, align 4
@PGET_NOTWEXIT = common dso_local global i32 0, align 4
@PGET_CANDEBUG = common dso_local global i32 0, align 4
@PGET_CANSEE = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@LINUX_RLIM_INFINITY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_prlimit64(%struct.thread* %0, %struct.linux_prlimit64_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_prlimit64_args*, align 8
  %6 = alloca %struct.rlimit, align 8
  %7 = alloca %struct.rlimit, align 8
  %8 = alloca %struct.linux_rlimit64, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_prlimit64_args* %1, %struct.linux_prlimit64_args** %5, align 8
  %13 = load %struct.linux_prlimit64_args*, %struct.linux_prlimit64_args** %5, align 8
  %14 = getelementptr inbounds %struct.linux_prlimit64_args, %struct.linux_prlimit64_args* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LINUX_RLIM_NLIMITS, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %146

20:                                               ; preds = %2
  %21 = load i32*, i32** @linux_to_bsd_resource, align 8
  %22 = load %struct.linux_prlimit64_args*, %struct.linux_prlimit64_args** %5, align 8
  %23 = getelementptr inbounds %struct.linux_prlimit64_args, %struct.linux_prlimit64_args* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %146

31:                                               ; preds = %20
  %32 = load %struct.linux_prlimit64_args*, %struct.linux_prlimit64_args** %5, align 8
  %33 = getelementptr inbounds %struct.linux_prlimit64_args, %struct.linux_prlimit64_args* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.linux_prlimit64_args*, %struct.linux_prlimit64_args** %5, align 8
  %38 = getelementptr inbounds %struct.linux_prlimit64_args, %struct.linux_prlimit64_args* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @copyin(i32* %39, %struct.rlimit* %7, i32 16)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %3, align 4
  br label %146

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* @PGET_HOLD, align 4
  %48 = load i32, i32* @PGET_NOTWEXIT, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.linux_prlimit64_args*, %struct.linux_prlimit64_args** %5, align 8
  %51 = getelementptr inbounds %struct.linux_prlimit64_args, %struct.linux_prlimit64_args* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @PGET_CANDEBUG, align 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %62

58:                                               ; preds = %46
  %59 = load i32, i32* @PGET_CANSEE, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.linux_prlimit64_args*, %struct.linux_prlimit64_args** %5, align 8
  %64 = getelementptr inbounds %struct.linux_prlimit64_args, %struct.linux_prlimit64_args* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.thread*, %struct.thread** %4, align 8
  %69 = getelementptr inbounds %struct.thread, %struct.thread* %68, i32 0, i32 0
  %70 = load %struct.proc*, %struct.proc** %69, align 8
  store %struct.proc* %70, %struct.proc** %9, align 8
  %71 = load %struct.proc*, %struct.proc** %9, align 8
  %72 = call i32 @PHOLD(%struct.proc* %71)
  br label %84

73:                                               ; preds = %62
  %74 = load %struct.linux_prlimit64_args*, %struct.linux_prlimit64_args** %5, align 8
  %75 = getelementptr inbounds %struct.linux_prlimit64_args, %struct.linux_prlimit64_args* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @pget(i64 %76, i32 %77, %struct.proc** %9)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %3, align 4
  br label %146

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %67
  %85 = load %struct.linux_prlimit64_args*, %struct.linux_prlimit64_args** %5, align 8
  %86 = getelementptr inbounds %struct.linux_prlimit64_args, %struct.linux_prlimit64_args* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %131

89:                                               ; preds = %84
  %90 = load %struct.proc*, %struct.proc** %9, align 8
  %91 = call i32 @PROC_LOCK(%struct.proc* %90)
  %92 = load %struct.proc*, %struct.proc** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @lim_rlimit_proc(%struct.proc* %92, i32 %93, %struct.rlimit* %6)
  %95 = load %struct.proc*, %struct.proc** %9, align 8
  %96 = call i32 @PROC_UNLOCK(%struct.proc* %95)
  %97 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RLIM_INFINITY, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = load i8*, i8** @LINUX_RLIM_INFINITY, align 8
  %103 = ptrtoint i8* %102 to i64
  %104 = getelementptr inbounds %struct.linux_rlimit64, %struct.linux_rlimit64* %8, i32 0, i32 0
  store i64 %103, i64* %104, align 8
  br label %109

105:                                              ; preds = %89
  %106 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.linux_rlimit64, %struct.linux_rlimit64* %8, i32 0, i32 0
  store i64 %107, i64* %108, align 8
  br label %109

109:                                              ; preds = %105, %101
  %110 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @RLIM_INFINITY, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i8*, i8** @LINUX_RLIM_INFINITY, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = getelementptr inbounds %struct.linux_rlimit64, %struct.linux_rlimit64* %8, i32 0, i32 1
  store i64 %116, i64* %117, align 8
  br label %122

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.linux_rlimit64, %struct.linux_rlimit64* %8, i32 0, i32 1
  store i64 %120, i64* %121, align 8
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.linux_prlimit64_args*, %struct.linux_prlimit64_args** %5, align 8
  %124 = getelementptr inbounds %struct.linux_prlimit64_args, %struct.linux_prlimit64_args* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @copyout(%struct.linux_rlimit64* %8, i32* %125, i32 16)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %142

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130, %84
  %132 = load %struct.linux_prlimit64_args*, %struct.linux_prlimit64_args** %5, align 8
  %133 = getelementptr inbounds %struct.linux_prlimit64_args, %struct.linux_prlimit64_args* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.thread*, %struct.thread** %4, align 8
  %138 = load %struct.proc*, %struct.proc** %9, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @kern_proc_setrlimit(%struct.thread* %137, %struct.proc* %138, i32 %139, %struct.rlimit* %7)
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %136, %131
  br label %142

142:                                              ; preds = %141, %129
  %143 = load %struct.proc*, %struct.proc** %9, align 8
  %144 = call i32 @PRELE(%struct.proc* %143)
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %142, %81, %43, %29, %18
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @copyin(i32*, %struct.rlimit*, i32) #1

declare dso_local i32 @PHOLD(%struct.proc*) #1

declare dso_local i32 @pget(i64, i32, %struct.proc**) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @lim_rlimit_proc(%struct.proc*, i32, %struct.rlimit*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @copyout(%struct.linux_rlimit64*, i32*, i32) #1

declare dso_local i32 @kern_proc_setrlimit(%struct.thread*, %struct.proc*, i32, %struct.rlimit*) #1

declare dso_local i32 @PRELE(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
