; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/ofw/extr_ofwfdt.c_fdt_platform_load_dtb.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/ofw/extr_ofwfdt.c_fdt_platform_load_dtb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_platform_load_dtb() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  store i64 409600, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i8* @malloc(i64 %3)
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i32 @fdt_create_empty_tree(i8* %5, i64 %6)
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 @OF_peer(i32 0)
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @fdt_path_offset(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @add_node_to_fdt(i8* %8, i32 %9, i32 %11)
  %13 = load i8*, i8** %1, align 8
  %14 = call i32 @ofwfdt_fixups(i8* %13)
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @fdt_pack(i8* %15)
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 @fdt_load_dtb_addr(i8* %17)
  %19 = load i8*, i8** %1, align 8
  %20 = call i32 @free(i8* %19)
  ret i32 0
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fdt_create_empty_tree(i8*, i64) #1

declare dso_local i32 @add_node_to_fdt(i8*, i32, i32) #1

declare dso_local i32 @OF_peer(i32) #1

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i32 @ofwfdt_fixups(i8*) #1

declare dso_local i32 @fdt_pack(i8*) #1

declare dso_local i32 @fdt_load_dtb_addr(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
