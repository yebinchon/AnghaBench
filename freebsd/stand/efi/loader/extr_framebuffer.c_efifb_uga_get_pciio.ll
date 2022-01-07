; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efifb_uga_get_pciio.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_framebuffer.c_efifb_uga_get_pciio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i32*, i32*, i32*, i32*)* }

@BS = common dso_local global %struct.TYPE_2__* null, align 8
@ByProtocol = common dso_local global i32 0, align 4
@uga_guid = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@pciio_guid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @efifb_uga_get_pciio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @efifb_uga_get_pciio() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @BS, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64 (i32, i32*, i32*, i32*, i32*)*, i64 (i32, i32*, i32*, i32*, i32*)** %8, align 8
  %10 = load i32, i32* @ByProtocol, align 4
  %11 = call i64 %9(i32 %10, i32* @uga_guid, i32* null, i32* %6, i32* null)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  br label %63

16:                                               ; preds = %0
  %17 = load i32, i32* %6, align 4
  %18 = call i32* @malloc(i32 %17)
  store i32* %18, i32** %3, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @BS, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (i32, i32*, i32*, i32*, i32*)*, i64 (i32, i32*, i32*, i32*, i32*)** %20, align 8
  %22 = load i32, i32* @ByProtocol, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 %21(i32 %22, i32* @uga_guid, i32* null, i32* %6, i32* %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @EFI_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @free(i32* %29)
  store i32* null, i32** %1, align 8
  br label %63

31:                                               ; preds = %16
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  store i32* null, i32** %2, align 8
  %36 = load i32*, i32** %3, align 8
  store i32* %36, i32** %4, align 8
  br label %37

37:                                               ; preds = %57, %31
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = icmp ult i32* %38, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = bitcast i32** %2 to i8**
  %48 = call i64 @OpenProtocolByHandle(i32 %46, i32* @pciio_guid, i8** %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @EFI_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @free(i32* %53)
  %55 = load i32*, i32** %2, align 8
  store i32* %55, i32** %1, align 8
  br label %63

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %4, align 8
  br label %37

60:                                               ; preds = %37
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @free(i32* %61)
  store i32* null, i32** %1, align 8
  br label %63

63:                                               ; preds = %60, %52, %28, %15
  %64 = load i32*, i32** %1, align 8
  ret i32* %64
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @OpenProtocolByHandle(i32, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
