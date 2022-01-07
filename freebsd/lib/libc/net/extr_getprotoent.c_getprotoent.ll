; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getprotoent.c_getprotoent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getprotoent.c_getprotoent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i32 }
%struct.protodata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.protoent* @getprotoent() #0 {
  %1 = alloca %struct.protoent*, align 8
  %2 = alloca %struct.protodata*, align 8
  %3 = alloca %struct.protoent*, align 8
  %4 = call %struct.protodata* (...) @__protodata_init()
  store %struct.protodata* %4, %struct.protodata** %2, align 8
  %5 = icmp eq %struct.protodata* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.protoent* null, %struct.protoent** %1, align 8
  br label %18

7:                                                ; preds = %0
  %8 = load %struct.protodata*, %struct.protodata** %2, align 8
  %9 = getelementptr inbounds %struct.protodata, %struct.protodata* %8, i32 0, i32 1
  %10 = load %struct.protodata*, %struct.protodata** %2, align 8
  %11 = getelementptr inbounds %struct.protodata, %struct.protodata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @getprotoent_r(i32* %9, i32 %12, i32 4, %struct.protoent** %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  store %struct.protoent* null, %struct.protoent** %1, align 8
  br label %18

16:                                               ; preds = %7
  %17 = load %struct.protoent*, %struct.protoent** %3, align 8
  store %struct.protoent* %17, %struct.protoent** %1, align 8
  br label %18

18:                                               ; preds = %16, %15, %6
  %19 = load %struct.protoent*, %struct.protoent** %1, align 8
  ret %struct.protoent* %19
}

declare dso_local %struct.protodata* @__protodata_init(...) #1

declare dso_local i64 @getprotoent_r(i32*, i32, i32, %struct.protoent**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
