; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_audit_warn.c_audit_warn_allhard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_audit_warn.c_audit_warn_allhard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HARDLIM_ALL_WARN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_warn_allhard() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = load i8*, i8** @HARDLIM_ALL_WARN, align 8
  %3 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  store i8* %2, i8** %3, align 16
  %4 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 1
  store i8* null, i8** %4, align 8
  %5 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %6 = call i32 @auditwarnlog(i8** %5)
  ret i32 %6
}

declare dso_local i32 @auditwarnlog(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
