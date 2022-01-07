; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/systrace/extr_systrace.c_systrace_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/systrace/extr_systrace.c_systrace_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.syscall_args = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 (i32, i32, i32*, i32*)*, i32 }

@SYSTRACE_ENTRY = common dso_local global i32 0, align 4
@DTRACE_IDNONE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.syscall_args*, i32, i32)* @systrace_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @systrace_probe(%struct.syscall_args* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.syscall_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.syscall_args* %0, %struct.syscall_args** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %14 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @nitems(i32 %15)
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %21 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = mul nuw i64 4, %17
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(i32* %19, i32 0, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SYSTRACE_ENTRY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %3
  %30 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %31 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @DTRACE_IDNONE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 1, i32* %12, align 4
  br label %93

38:                                               ; preds = %29
  %39 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %40 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32 (i32, i32, i32*, i32*)*, i32 (i32, i32, i32*, i32*)** %42, align 8
  %44 = icmp ne i32 (i32, i32, i32*, i32*)* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %47 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32 (i32, i32, i32*, i32*)*, i32 (i32, i32, i32*, i32*)** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %53 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %50(i32 %51, i32 %54, i32* %19, i32* %10)
  br label %62

56:                                               ; preds = %38
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %59 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @systrace_args(i32 %57, i32 %60, i32* %19, i32* %10)
  br label %62

62:                                               ; preds = %56, %45
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32* %19, i32** %64, align 8
  br label %80

65:                                               ; preds = %3
  %66 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %67 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @DTRACE_IDNONE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 1, i32* %12, align 4
  br label %93

74:                                               ; preds = %65
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %77, i32* %79, align 16
  br label %80

80:                                               ; preds = %74, %62
  %81 = load i32, i32* %9, align 4
  %82 = getelementptr inbounds i32, i32* %19, i64 0
  %83 = load i32, i32* %82, align 16
  %84 = getelementptr inbounds i32, i32* %19, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds i32, i32* %19, i64 2
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds i32, i32* %19, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds i32, i32* %19, i64 4
  %91 = load i32, i32* %90, align 16
  %92 = call i32 @dtrace_probe(i32 %81, i32 %83, i32 %85, i32 %87, i32 %89, i32 %91)
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %80, %73, %37
  %94 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %12, align 4
  switch i32 %95, label %97 [
    i32 0, label %96
    i32 1, label %96
  ]

96:                                               ; preds = %93, %93
  ret void

97:                                               ; preds = %93
  unreachable
}

declare dso_local i32 @nitems(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @systrace_args(i32, i32, i32*, i32*) #1

declare dso_local i32 @dtrace_probe(i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
