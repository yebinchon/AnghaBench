; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_persist.c_persist_print_transportid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_persist.c_persist_print_transportid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_transportid_header = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to allocate sbuf\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @persist_print_transportid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @persist_print_transportid(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbuf*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %6, %struct.sbuf** %5, align 8
  %7 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %8 = icmp eq %struct.sbuf* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to %struct.scsi_transportid_header*
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @scsi_transportid_sbuf(%struct.sbuf* %13, %struct.scsi_transportid_header* %15, i32 %16)
  %18 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %19 = call i32 @sbuf_finish(%struct.sbuf* %18)
  %20 = load i32, i32* @stdout, align 4
  %21 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %22 = call i8* @sbuf_data(%struct.sbuf* %21)
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %25 = call i32 @sbuf_delete(%struct.sbuf* %24)
  ret void
}

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @scsi_transportid_sbuf(%struct.sbuf*, %struct.scsi_transportid_header*, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
