; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_load_dtb_overlay.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_load_dtb_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i32 }
%struct.fdt_header = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"fdt_load_dtb_overlay(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dtbo\00", align 1
@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fdt_load_dtb_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_load_dtb_overlay(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.preloaded_file*, align 8
  %5 = alloca %struct.fdt_header, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @debugf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.preloaded_file* @file_loadraw(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store %struct.preloaded_file* %10, %struct.preloaded_file** %4, align 8
  %11 = icmp eq %struct.preloaded_file* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.preloaded_file*, %struct.preloaded_file** %4, align 8
  %16 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @COPYOUT(i32 %17, %struct.fdt_header* %5, i32 4)
  %19 = call i32 @fdt_check_header(%struct.fdt_header* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.preloaded_file*, %struct.preloaded_file** %4, align 8
  %24 = call i32 @file_discard(%struct.preloaded_file* %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %22, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @debugf(i8*, i8*) #1

declare dso_local %struct.preloaded_file* @file_loadraw(i8*, i8*, i32) #1

declare dso_local i32 @COPYOUT(i32, %struct.fdt_header*, i32) #1

declare dso_local i32 @fdt_check_header(%struct.fdt_header*) #1

declare dso_local i32 @file_discard(%struct.preloaded_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
