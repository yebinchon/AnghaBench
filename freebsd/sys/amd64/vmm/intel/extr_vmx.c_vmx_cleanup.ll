; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pirvec = common dso_local global i64 0, align 8
@vpid_unr = common dso_local global i32* null, align 8
@nmi_flush_l1d_sw = common dso_local global i32 0, align 4
@vmx_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmx_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_cleanup() #0 {
  %1 = load i64, i64* @pirvec, align 8
  %2 = icmp sge i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* @pirvec, align 8
  %5 = call i32 @lapic_ipi_free(i64 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32*, i32** @vpid_unr, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32*, i32** @vpid_unr, align 8
  %11 = call i32 @delete_unrhdr(i32* %10)
  store i32* null, i32** @vpid_unr, align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* @nmi_flush_l1d_sw, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* @nmi_flush_l1d_sw, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* @vmx_disable, align 4
  %18 = call i32 @smp_rendezvous(i32* null, i32 %17, i32* null, i32* null)
  ret i32 0
}

declare dso_local i32 @lapic_ipi_free(i64) #1

declare dso_local i32 @delete_unrhdr(i32*) #1

declare dso_local i32 @smp_rendezvous(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
