; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_proc.c_kvm_deadprocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_proc.c_kvm_deadprocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.kinfo_proc* }
%struct.kinfo_proc = type { i32 }
%struct.proc = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"cannot read allproc\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot read zombproc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)* @kvm_deadprocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_deadprocs(%struct.TYPE_6__* %0, i32 %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.kinfo_proc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.proc*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.kinfo_proc*, %struct.kinfo_proc** %19, align 8
  store %struct.kinfo_proc* %20, %struct.kinfo_proc** %14, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @KREAD(%struct.TYPE_6__* %21, i64 %22, %struct.proc** %17)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @_kvm_err(%struct.TYPE_6__* %26, i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %78

31:                                               ; preds = %6
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.proc*, %struct.proc** %17, align 8
  %36 = load %struct.kinfo_proc*, %struct.kinfo_proc** %14, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @kvm_proclist(%struct.TYPE_6__* %32, i32 %33, i32 %34, %struct.proc* %35, %struct.kinfo_proc* %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %7, align 4
  br label %78

43:                                               ; preds = %31
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %43
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i64 @KREAD(%struct.TYPE_6__* %47, i64 %48, %struct.proc** %17)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @_kvm_err(%struct.TYPE_6__* %52, i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %78

57:                                               ; preds = %46
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.proc*, %struct.proc** %17, align 8
  %62 = load %struct.kinfo_proc*, %struct.kinfo_proc** %14, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %62, i64 %64
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %15, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i32 @kvm_proclist(%struct.TYPE_6__* %58, i32 %59, i32 %60, %struct.proc* %61, %struct.kinfo_proc* %65, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  store i32 0, i32* %16, align 4
  br label %73

73:                                               ; preds = %72, %57
  br label %74

74:                                               ; preds = %73, %43
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %74, %51, %41, %25
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i64 @KREAD(%struct.TYPE_6__*, i64, %struct.proc**) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @kvm_proclist(%struct.TYPE_6__*, i32, i32, %struct.proc*, %struct.kinfo_proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
