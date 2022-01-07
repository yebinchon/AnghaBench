; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_sys_machdep.c_sysarch_ldt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_sys_machdep.c_sysarch_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sysarch_args = type { i32, i32* }
%struct.i386_ldt_args = type { i32, i32* }
%struct.user_segment_descriptor = type { i32, i32* }

@UIO_USERSPACE = common dso_local global i32 0, align 4
@max_ldt_segment = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysarch_ldt(%struct.thread* %0, %struct.sysarch_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.sysarch_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i386_ldt_args*, align 8
  %9 = alloca %struct.i386_ldt_args, align 8
  %10 = alloca %struct.user_segment_descriptor*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.sysarch_args* %1, %struct.sysarch_args** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.sysarch_args*, %struct.sysarch_args** %6, align 8
  %13 = getelementptr inbounds %struct.sysarch_args, %struct.sysarch_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @AUDIT_ARG_CMD(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @UIO_USERSPACE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.sysarch_args*, %struct.sysarch_args** %6, align 8
  %21 = getelementptr inbounds %struct.sysarch_args, %struct.sysarch_args* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast %struct.i386_ldt_args* %9 to %struct.user_segment_descriptor*
  %24 = call i32 @copyin(i32* %22, %struct.user_segment_descriptor* %23, i32 16)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %108

29:                                               ; preds = %19
  store %struct.i386_ldt_args* %9, %struct.i386_ldt_args** %8, align 8
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.sysarch_args*, %struct.sysarch_args** %6, align 8
  %32 = getelementptr inbounds %struct.sysarch_args, %struct.sysarch_args* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast i32* %33 to %struct.i386_ldt_args*
  store %struct.i386_ldt_args* %34, %struct.i386_ldt_args** %8, align 8
  br label %35

35:                                               ; preds = %30, %29
  %36 = load %struct.sysarch_args*, %struct.sysarch_args** %6, align 8
  %37 = getelementptr inbounds %struct.sysarch_args, %struct.sysarch_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %106 [
    i32 129, label %39
    i32 128, label %44
  ]

39:                                               ; preds = %35
  %40 = load %struct.thread*, %struct.thread** %5, align 8
  %41 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %8, align 8
  %42 = bitcast %struct.i386_ldt_args* %41 to %struct.user_segment_descriptor*
  %43 = call i32 @amd64_get_ldt(%struct.thread* %40, %struct.user_segment_descriptor* %42)
  store i32 %43, i32* %11, align 4
  br label %106

44:                                               ; preds = %35
  %45 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %8, align 8
  %46 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %8, align 8
  %51 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @max_ldt_segment, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %4, align 4
  br label %108

57:                                               ; preds = %49, %44
  %58 = load %struct.thread*, %struct.thread** %5, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PCB_FULL_IRET, align 4
  %62 = call i32 @set_pcb_flags(i32 %60, i32 %61)
  %63 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %8, align 8
  %64 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %100

67:                                               ; preds = %57
  %68 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %8, align 8
  %69 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 16
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* @M_TEMP, align 4
  %75 = load i32, i32* @M_WAITOK, align 4
  %76 = call %struct.user_segment_descriptor* @malloc(i32 %73, i32 %74, i32 %75)
  store %struct.user_segment_descriptor* %76, %struct.user_segment_descriptor** %10, align 8
  %77 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %8, align 8
  %78 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %10, align 8
  %81 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %8, align 8
  %82 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 16
  %86 = trunc i64 %85 to i32
  %87 = call i32 @copyin(i32* %79, %struct.user_segment_descriptor* %80, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %67
  %91 = load %struct.thread*, %struct.thread** %5, align 8
  %92 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %8, align 8
  %93 = bitcast %struct.i386_ldt_args* %92 to %struct.user_segment_descriptor*
  %94 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %10, align 8
  %95 = call i32 @amd64_set_ldt(%struct.thread* %91, %struct.user_segment_descriptor* %93, %struct.user_segment_descriptor* %94)
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %90, %67
  %97 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %10, align 8
  %98 = load i32, i32* @M_TEMP, align 4
  %99 = call i32 @free(%struct.user_segment_descriptor* %97, i32 %98)
  br label %105

100:                                              ; preds = %57
  %101 = load %struct.thread*, %struct.thread** %5, align 8
  %102 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %8, align 8
  %103 = bitcast %struct.i386_ldt_args* %102 to %struct.user_segment_descriptor*
  %104 = call i32 @amd64_set_ldt(%struct.thread* %101, %struct.user_segment_descriptor* %103, %struct.user_segment_descriptor* null)
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %100, %96
  br label %106

106:                                              ; preds = %35, %105, %39
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %55, %27
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @AUDIT_ARG_CMD(i32) #1

declare dso_local i32 @copyin(i32*, %struct.user_segment_descriptor*, i32) #1

declare dso_local i32 @amd64_get_ldt(%struct.thread*, %struct.user_segment_descriptor*) #1

declare dso_local i32 @set_pcb_flags(i32, i32) #1

declare dso_local %struct.user_segment_descriptor* @malloc(i32, i32, i32) #1

declare dso_local i32 @amd64_set_ldt(%struct.thread*, %struct.user_segment_descriptor*, %struct.user_segment_descriptor*) #1

declare dso_local i32 @free(%struct.user_segment_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
