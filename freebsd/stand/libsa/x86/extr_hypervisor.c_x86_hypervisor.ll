; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/x86/extr_hypervisor.c_x86_hypervisor.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/x86/extr_hypervisor.c_x86_hypervisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.anon }
%struct.anon = type { i32, [13 x i8] }

@x86_hypervisor.u = internal global %union.anon zeroinitializer, align 4
@CPUID2_HV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @x86_hypervisor() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @do_cpuid(i32 1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @x86_hypervisor.u to [4 x i32]*), i64 0, i64 0))
  %3 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @x86_hypervisor.u to [4 x i32]*), i64 0, i64 2), align 4
  %4 = load i32, i32* @CPUID2_HV, align 4
  %5 = and i32 %3, %4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %10

8:                                                ; preds = %0
  %9 = call i32 @do_cpuid(i32 1073741824, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @x86_hypervisor.u to [4 x i32]*), i64 0, i64 0))
  store i8* getelementptr inbounds (%union.anon, %union.anon* @x86_hypervisor.u, i32 0, i32 0, i32 1, i64 0), i8** %1, align 8
  br label %10

10:                                               ; preds = %8, %7
  %11 = load i8*, i8** %1, align 8
  ret i8* %11
}

declare dso_local i32 @do_cpuid(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
