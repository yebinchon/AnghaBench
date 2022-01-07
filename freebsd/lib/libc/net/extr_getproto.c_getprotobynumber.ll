; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getproto.c_getprotobynumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getproto.c_getprotobynumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i32 }
%struct.protodata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.protoent* @getprotobynumber(i32 %0) #0 {
  %2 = alloca %struct.protoent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.protodata*, align 8
  %5 = alloca %struct.protoent*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call %struct.protodata* (...) @__protodata_init()
  store %struct.protodata* %6, %struct.protodata** %4, align 8
  %7 = icmp eq %struct.protodata* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.protoent* null, %struct.protoent** %2, align 8
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.protodata*, %struct.protodata** %4, align 8
  %12 = getelementptr inbounds %struct.protodata, %struct.protodata* %11, i32 0, i32 1
  %13 = load %struct.protodata*, %struct.protodata** %4, align 8
  %14 = getelementptr inbounds %struct.protodata, %struct.protodata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @getprotobynumber_r(i32 %10, i32* %12, i32 %15, i32 4, %struct.protoent** %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store %struct.protoent* null, %struct.protoent** %2, align 8
  br label %21

19:                                               ; preds = %9
  %20 = load %struct.protoent*, %struct.protoent** %5, align 8
  store %struct.protoent* %20, %struct.protoent** %2, align 8
  br label %21

21:                                               ; preds = %19, %18, %8
  %22 = load %struct.protoent*, %struct.protoent** %2, align 8
  ret %struct.protoent* %22
}

declare dso_local %struct.protodata* @__protodata_init(...) #1

declare dso_local i64 @getprotobynumber_r(i32, i32*, i32, i32, %struct.protoent**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
