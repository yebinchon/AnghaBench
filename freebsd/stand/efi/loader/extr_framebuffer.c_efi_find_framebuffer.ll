; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efi_find_framebuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efi_find_framebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (i32*, i32*, i32**)* }
%struct.efi_fb = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@BS = common dso_local global %struct.TYPE_6__* null, align 8
@gop_guid = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@uga_guid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_find_framebuffer(%struct.efi_fb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efi_fb*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.efi_fb* %0, %struct.efi_fb** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @BS, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64 (i32*, i32*, i32**)*, i64 (i32*, i32*, i32**)** %8, align 8
  %10 = bitcast %struct.TYPE_4__** %4 to i32**
  %11 = call i64 %9(i32* @gop_guid, i32* null, i32** %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @EFI_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.efi_fb*, %struct.efi_fb** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @efifb_from_gop(%struct.efi_fb* %16, %struct.TYPE_5__* %19, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @BS, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64 (i32*, i32*, i32**)*, i64 (i32*, i32*, i32**)** %28, align 8
  %30 = call i64 %29(i32* @uga_guid, i32* null, i32** %5)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @EFI_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.efi_fb*, %struct.efi_fb** %3, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @efifb_from_uga(%struct.efi_fb* %35, i32* %36)
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %34, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @efifb_from_gop(%struct.efi_fb*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @efifb_from_uga(%struct.efi_fb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
