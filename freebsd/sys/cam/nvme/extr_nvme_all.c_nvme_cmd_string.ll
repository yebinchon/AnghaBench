; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_all.c_nvme_cmd_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_all.c_nvme_cmd_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_command = type { i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvme_cmd_string(%struct.nvme_command* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvme_command*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sbuf, align 4
  %9 = alloca i32, align 4
  store %struct.nvme_command* %0, %struct.nvme_command** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %30

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %17 = call i32 @sbuf_new(%struct.sbuf* %8, i8* %14, i64 %15, i32 %16)
  %18 = load %struct.nvme_command*, %struct.nvme_command** %5, align 8
  %19 = call i32 @nvme_cmd_sbuf(%struct.nvme_command* %18, %struct.sbuf* %8)
  %20 = call i32 @sbuf_finish(%struct.sbuf* %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %30

28:                                               ; preds = %23, %13
  %29 = call i8* @sbuf_data(%struct.sbuf* %8)
  store i8* %29, i8** %4, align 8
  br label %30

30:                                               ; preds = %28, %27, %12
  %31 = load i8*, i8** %4, align 8
  ret i8* %31
}

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i64, i32) #1

declare dso_local i32 @nvme_cmd_sbuf(%struct.nvme_command*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
