; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_bluetooth.c_bt_getprotobynumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_bluetooth.c_bt_getprotobynumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i32 }

@proto_stayopen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.protoent* @bt_getprotobynumber(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.protoent*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @proto_stayopen, align 4
  %5 = call i32 @bt_setprotoent(i32 %4)
  br label %6

6:                                                ; preds = %16, %1
  %7 = call %struct.protoent* (...) @bt_getprotoent()
  store %struct.protoent* %7, %struct.protoent** %3, align 8
  %8 = icmp ne %struct.protoent* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load %struct.protoent*, %struct.protoent** %3, align 8
  %11 = getelementptr inbounds %struct.protoent, %struct.protoent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %17

16:                                               ; preds = %9
  br label %6

17:                                               ; preds = %15, %6
  %18 = call i32 (...) @bt_endprotoent()
  %19 = load %struct.protoent*, %struct.protoent** %3, align 8
  ret %struct.protoent* %19
}

declare dso_local i32 @bt_setprotoent(i32) #1

declare dso_local %struct.protoent* @bt_getprotoent(...) #1

declare dso_local i32 @bt_endprotoent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
