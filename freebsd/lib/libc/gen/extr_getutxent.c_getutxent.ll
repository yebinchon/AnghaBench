; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getutxent.c_getutxent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getutxent.c_getutxent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32 }
%struct.futx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.utmpx* @getutxent() #0 {
  %1 = alloca %struct.utmpx*, align 8
  %2 = alloca %struct.futx, align 4
  %3 = call i64 @getfutxent(%struct.futx* %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.utmpx* null, %struct.utmpx** %1, align 8
  br label %8

6:                                                ; preds = %0
  %7 = call %struct.utmpx* @futx_to_utx(%struct.futx* %2)
  store %struct.utmpx* %7, %struct.utmpx** %1, align 8
  br label %8

8:                                                ; preds = %6, %5
  %9 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  ret %struct.utmpx* %9
}

declare dso_local i64 @getfutxent(%struct.futx*) #1

declare dso_local %struct.utmpx* @futx_to_utx(%struct.futx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
