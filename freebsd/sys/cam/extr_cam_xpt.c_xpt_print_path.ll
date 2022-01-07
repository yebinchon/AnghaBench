; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_print_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_print_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.sbuf = type { i32 }

@XPT_PRINT_LEN = common dso_local global i32 0, align 4
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_print_path(%struct.cam_path* %0) #0 {
  %2 = alloca %struct.cam_path*, align 8
  %3 = alloca %struct.sbuf, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.cam_path* %0, %struct.cam_path** %2, align 8
  %6 = load i32, i32* @XPT_PRINT_LEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i32, i32* @XPT_PRINT_LEN, align 4
  %11 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %12 = call i32 @sbuf_new(%struct.sbuf* %3, i8* %9, i32 %10, i32 %11)
  %13 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %14 = call i32 @xpt_path_sbuf(%struct.cam_path* %13, %struct.sbuf* %3)
  %15 = call i32 @sbuf_finish(%struct.sbuf* %3)
  %16 = call i8* @sbuf_data(%struct.sbuf* %3)
  %17 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 @sbuf_delete(%struct.sbuf* %3)
  %19 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %19)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #2

declare dso_local i32 @xpt_path_sbuf(%struct.cam_path*, %struct.sbuf*) #2

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @sbuf_data(%struct.sbuf*) #2

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
