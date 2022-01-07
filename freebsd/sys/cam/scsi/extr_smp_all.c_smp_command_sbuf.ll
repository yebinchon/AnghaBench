; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_smp_all.c_smp_command_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_smp_all.c_smp_command_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_smpio = type { i32, i32* }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s. \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_command_sbuf(%struct.ccb_smpio* %0, %struct.sbuf* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ccb_smpio*, align 8
  %7 = alloca %struct.sbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ccb_smpio* %0, %struct.ccb_smpio** %6, align 8
  store %struct.sbuf* %1, %struct.sbuf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %12 = load %struct.ccb_smpio*, %struct.ccb_smpio** %6, align 8
  %13 = getelementptr inbounds %struct.ccb_smpio, %struct.ccb_smpio* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @smp_command_desc(i32 %16)
  %18 = call i32 @sbuf_printf(%struct.sbuf* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ccb_smpio*, %struct.ccb_smpio** %6, align 8
  %20 = getelementptr inbounds %struct.ccb_smpio, %struct.ccb_smpio* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @smp_command_desc(i32 %23)
  %25 = call i64 @strlen(i32 %24)
  %26 = add nsw i64 %25, 2
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load %struct.ccb_smpio*, %struct.ccb_smpio** %6, align 8
  %32 = getelementptr inbounds %struct.ccb_smpio, %struct.ccb_smpio* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.ccb_smpio*, %struct.ccb_smpio** %6, align 8
  %35 = getelementptr inbounds %struct.ccb_smpio, %struct.ccb_smpio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @smp_command_decode(i32* %33, i32 %36, %struct.sbuf* %37, i8* %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @smp_command_desc(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @smp_command_decode(i32*, i32, %struct.sbuf*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
