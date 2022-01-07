; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_name_to_devpath16.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_name_to_devpath16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* (i32*)* }
%struct.TYPE_4__ = type { i32 (i32*, i32*, i32**)* }

@fromTextProtocol = common dso_local global %struct.TYPE_3__* null, align 8
@BS = common dso_local global %struct.TYPE_4__* null, align 8
@DevicePathFromTextGUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @efi_name_to_devpath16(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fromTextProtocol, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @BS, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (i32*, i32*, i32**)*, i32 (i32*, i32*, i32**)** %13, align 8
  %15 = call i32 %14(i32* @DevicePathFromTextGUID, i32* null, i32** bitcast (%struct.TYPE_3__** @fromTextProtocol to i32**))
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @EFI_ERROR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @fromTextProtocol, align 8
  br label %20

20:                                               ; preds = %19, %11
  br label %21

21:                                               ; preds = %20, %8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fromTextProtocol, align 8
  %23 = icmp eq %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32* null, i32** %2, align 8
  br label %31

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fromTextProtocol, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32* (i32*)*, i32* (i32*)** %27, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32* %28(i32* %29)
  store i32* %30, i32** %2, align 8
  br label %31

31:                                               ; preds = %25, %24, %7
  %32 = load i32*, i32** %2, align 8
  ret i32* %32
}

declare dso_local i64 @EFI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
