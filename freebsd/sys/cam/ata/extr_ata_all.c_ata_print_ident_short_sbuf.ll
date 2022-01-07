; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_print_ident_short_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_print_ident_short_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32, i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_print_ident_short_sbuf(%struct.ata_params* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.ata_params*, align 8
  %4 = alloca %struct.sbuf*, align 8
  store %struct.ata_params* %0, %struct.ata_params** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %5 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %6 = call i32 @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %8 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %9 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cam_strvis_sbuf(%struct.sbuf* %7, i32 %10, i32 4, i32 0)
  %12 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %13 = call i32 @sbuf_printf(%struct.sbuf* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %15 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %16 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cam_strvis_sbuf(%struct.sbuf* %14, i32 %17, i32 4, i32 0)
  %19 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %20 = call i32 @sbuf_printf(%struct.sbuf* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*) #1

declare dso_local i32 @cam_strvis_sbuf(%struct.sbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
