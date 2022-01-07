; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostbyht.c_gethostent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostbyht.c_gethostent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }
%struct.hostdata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostent* @gethostent() #0 {
  %1 = alloca %struct.hostent*, align 8
  %2 = alloca %struct.hostdata*, align 8
  %3 = alloca %struct.hostent*, align 8
  %4 = alloca i32, align 4
  %5 = call %struct.hostdata* (...) @__hostdata_init()
  store %struct.hostdata* %5, %struct.hostdata** %2, align 8
  %6 = icmp eq %struct.hostdata* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.hostent* null, %struct.hostent** %1, align 8
  br label %19

8:                                                ; preds = %0
  %9 = load %struct.hostdata*, %struct.hostdata** %2, align 8
  %10 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %9, i32 0, i32 1
  %11 = load %struct.hostdata*, %struct.hostdata** %2, align 8
  %12 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @gethostent_r(i32* %10, i32 %13, i32 4, %struct.hostent** %3, i32* %4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store %struct.hostent* null, %struct.hostent** %1, align 8
  br label %19

17:                                               ; preds = %8
  %18 = load %struct.hostent*, %struct.hostent** %3, align 8
  store %struct.hostent* %18, %struct.hostent** %1, align 8
  br label %19

19:                                               ; preds = %17, %16, %7
  %20 = load %struct.hostent*, %struct.hostent** %1, align 8
  ret %struct.hostent* %20
}

declare dso_local %struct.hostdata* @__hostdata_init(...) #1

declare dso_local i64 @gethostent_r(i32*, i32, i32, %struct.hostent**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
