; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper_service.c_service_register_core.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper_service.c_service_register_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.casper_service = type { i32 }
%struct.service_connection = type { i32 }

@CORE_CASPER_NAME = common dso_local global i32 0, align 4
@casper_limit = common dso_local global i32 0, align 4
@casper_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @service_register_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_register_core(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.casper_service*, align 8
  %4 = alloca %struct.service_connection*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @CORE_CASPER_NAME, align 4
  %6 = load i32, i32* @casper_limit, align 4
  %7 = load i32, i32* @casper_command, align 4
  %8 = call %struct.casper_service* @service_register(i32 %5, i32 %6, i32 %7, i32 0)
  store %struct.casper_service* %8, %struct.casper_service** %3, align 8
  %9 = load %struct.casper_service*, %struct.casper_service** %3, align 8
  %10 = getelementptr inbounds %struct.casper_service, %struct.casper_service* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.service_connection* @service_connection_add(i32 %11, i32 %12, i32* null)
  store %struct.service_connection* %13, %struct.service_connection** %4, align 8
  %14 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %15 = icmp eq %struct.service_connection* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @close(i32 %17)
  %19 = call i32 (...) @abort() #3
  unreachable

20:                                               ; preds = %1
  ret void
}

declare dso_local %struct.casper_service* @service_register(i32, i32, i32, i32) #1

declare dso_local %struct.service_connection* @service_connection_add(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
