; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c___freehostent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c___freehostent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@use_ipnode_functions = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostent*)* @__freehostent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__freehostent(%struct.hostent* %0) #0 {
  %2 = alloca %struct.hostent*, align 8
  store %struct.hostent* %0, %struct.hostent** %2, align 8
  %3 = load i64, i64* @use_ipnode_functions, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.hostent*, %struct.hostent** %2, align 8
  %7 = icmp ne %struct.hostent* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load %struct.hostent*, %struct.hostent** %2, align 8
  %10 = call i32 @freehostent(%struct.hostent* %9)
  br label %11

11:                                               ; preds = %8, %5, %1
  ret void
}

declare dso_local i32 @freehostent(%struct.hostent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
