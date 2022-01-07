; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.ifix_mapping = type { i32 }
%struct.ifix_status = type { i32, i32 }
%struct.pt_section = type { i32, i32 }
%struct.pt_image = type { i32 }
%struct.pt_asid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fini() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.ifix_mapping, align 4
  %3 = alloca %struct.ifix_status, align 4
  %4 = alloca %struct.pt_section, align 4
  %5 = alloca %struct.pt_image, align 4
  %6 = alloca %struct.pt_asid, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @pt_asid_init(%struct.pt_asid* %6)
  %9 = call i32 @ifix_init_section(%struct.pt_section* %4, i32* null, %struct.ifix_status* %3, %struct.ifix_mapping* %2, i32* null)
  %10 = call i32 @pt_image_init(%struct.pt_image* %5, i32* null)
  %11 = call i32 @pt_image_add(%struct.pt_image* %5, %struct.pt_section* %4, %struct.pt_asid* %6, i32 0, i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ptu_int_eq(i32 %12, i32 0)
  %14 = call i32 @pt_image_fini(%struct.pt_image* %5)
  %15 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ptu_int_eq(i32 %16, i32 0)
  %18 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ptu_int_eq(i32 %19, i32 0)
  %21 = getelementptr inbounds %struct.ifix_status, %struct.ifix_status* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ptu_int_eq(i32 %22, i32 1)
  %24 = getelementptr inbounds %struct.ifix_status, %struct.ifix_status* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ptu_int_eq(i32 %25, i32 0)
  %27 = call i32 (...) @ptu_passed()
  %28 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  ret i32 %30
}

declare dso_local i32 @pt_asid_init(%struct.pt_asid*) #1

declare dso_local i32 @ifix_init_section(%struct.pt_section*, i32*, %struct.ifix_status*, %struct.ifix_mapping*, i32*) #1

declare dso_local i32 @pt_image_init(%struct.pt_image*, i32*) #1

declare dso_local i32 @pt_image_add(%struct.pt_image*, %struct.pt_section*, %struct.pt_asid*, i32, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_image_fini(%struct.pt_image*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
