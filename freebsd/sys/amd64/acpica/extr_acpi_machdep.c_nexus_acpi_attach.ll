; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/acpica/extr_acpi_machdep.c_nexus_acpi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/acpica/extr_acpi_machdep.c_nexus_acpi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to add acpi0 device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nexus_acpi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_acpi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @nexus_init_resources()
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @bus_generic_probe(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = call i32* @BUS_ADD_CHILD(i32 %6, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @bus_generic_attach(i32 %12)
  ret i32 %13
}

declare dso_local i32 @nexus_init_resources(...) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
