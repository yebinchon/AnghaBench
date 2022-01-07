; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_get_hostkey_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_get_hostkey_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.sshkey**, %struct.sshkey**, %struct.sshkey** }
%struct.sshkey = type { i32 }
%struct.ssh = type { i32 }

@options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@sensitive_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hostkey_index(%struct.sshkey* %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssh*, align 8
  %8 = alloca i64, align 8
  store %struct.sshkey* %0, %struct.sshkey** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ssh* %2, %struct.ssh** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %101, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %104

13:                                               ; preds = %9
  %14 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %15 = call i64 @sshkey_is_cert(%struct.sshkey* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %19 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 2), align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %19, i64 %20
  %22 = load %struct.sshkey*, %struct.sshkey** %21, align 8
  %23 = icmp eq %struct.sshkey* %18, %22
  br i1 %23, label %41, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 2), align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %28, i64 %29
  %31 = load %struct.sshkey*, %struct.sshkey** %30, align 8
  %32 = icmp ne %struct.sshkey* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %35 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 2), align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %35, i64 %36
  %38 = load %struct.sshkey*, %struct.sshkey** %37, align 8
  %39 = call i64 @sshkey_equal(%struct.sshkey* %34, %struct.sshkey* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %17
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  br label %105

44:                                               ; preds = %33, %27, %24
  br label %100

45:                                               ; preds = %13
  %46 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %47 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 1), align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %47, i64 %48
  %50 = load %struct.sshkey*, %struct.sshkey** %49, align 8
  %51 = icmp eq %struct.sshkey* %46, %50
  br i1 %51, label %69, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 1), align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %56, i64 %57
  %59 = load %struct.sshkey*, %struct.sshkey** %58, align 8
  %60 = icmp ne %struct.sshkey* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %63 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 1), align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %63, i64 %64
  %66 = load %struct.sshkey*, %struct.sshkey** %65, align 8
  %67 = call i64 @sshkey_equal(%struct.sshkey* %62, %struct.sshkey* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61, %45
  %70 = load i64, i64* %8, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %105

72:                                               ; preds = %61, %55, %52
  %73 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %74 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %74, i64 %75
  %77 = load %struct.sshkey*, %struct.sshkey** %76, align 8
  %78 = icmp eq %struct.sshkey* %73, %77
  br i1 %78, label %96, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %83, i64 %84
  %86 = load %struct.sshkey*, %struct.sshkey** %85, align 8
  %87 = icmp ne %struct.sshkey* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %90 = load %struct.sshkey**, %struct.sshkey*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensitive_data, i32 0, i32 0), align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.sshkey*, %struct.sshkey** %90, i64 %91
  %93 = load %struct.sshkey*, %struct.sshkey** %92, align 8
  %94 = call i64 @sshkey_equal(%struct.sshkey* %89, %struct.sshkey* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88, %72
  %97 = load i64, i64* %8, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %105

99:                                               ; preds = %88, %82, %79
  br label %100

100:                                              ; preds = %99, %44
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %8, align 8
  br label %9

104:                                              ; preds = %9
  store i32 -1, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %96, %69, %41
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i64 @sshkey_equal(%struct.sshkey*, %struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
