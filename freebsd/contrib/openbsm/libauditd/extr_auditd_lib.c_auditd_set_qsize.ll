; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_auditd_set_qsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_auditd_set_qsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ADE_PARSE = common dso_local global i32 0, align 4
@ADE_AUDITON = common dso_local global i32 0, align 4
@USE_DEFAULT_QSZ = common dso_local global i32 0, align 4
@ADE_NOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auditd_set_qsize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = call i64 @getacqsize(i32* %2)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @ADE_PARSE, align 4
  store i32 %7, i32* %1, align 4
  br label %27

8:                                                ; preds = %0
  %9 = call i64 @audit_get_qctrl(%struct.TYPE_4__* %3, i32 4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @ADE_AUDITON, align 4
  store i32 %12, i32* %1, align 4
  br label %27

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @USE_DEFAULT_QSZ, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = call i64 @audit_set_qctrl(%struct.TYPE_4__* %3, i32 4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @ADE_AUDITON, align 4
  store i32 %24, i32* %1, align 4
  br label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @ADE_NOERR, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %23, %11, %6
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i64 @getacqsize(i32*) #1

declare dso_local i64 @audit_get_qctrl(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @audit_set_qctrl(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
