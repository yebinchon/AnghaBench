; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_command_reboot.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_main.c_command_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32*)* }

@devsw = common dso_local global %struct.TYPE_3__** null, align 8
@RS = common dso_local global %struct.TYPE_4__* null, align 8
@EfiResetCold = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i32 0, align 4
@CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_reboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_reboot(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %2
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @devsw, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %7, i64 %9
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %6
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @devsw, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (...)*, i32 (...)** %19, align 8
  %21 = icmp ne i32 (...)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @devsw, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %23, i64 %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = call i32 (...) %29()
  br label %31

31:                                               ; preds = %22, %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %6
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RS, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %37, align 8
  %39 = load i32, i32* @EfiResetCold, align 4
  %40 = load i32, i32* @EFI_SUCCESS, align 4
  %41 = call i32 %38(i32 %39, i32 %40, i32 0, i32* null)
  %42 = load i32, i32* @CMD_ERROR, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
