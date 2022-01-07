; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_cmd_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_cmd_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_cmd_sbuf(%struct.ata_cmd* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.ata_cmd*, align 8
  %4 = alloca %struct.sbuf*, align 8
  store %struct.ata_cmd* %0, %struct.ata_cmd** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %5 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %6 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %6, i32 0, i32 11
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %22 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %34 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41)
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
