; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efinet.c_efinet_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efinet.c_efinet_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { %struct.netif* }
%struct.netif = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*, i32*, i32*, i8*, i32*, i32*, i32*)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@EFI_NOT_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iodesc*, i8**, i64)* @efinet_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efinet_get(%struct.iodesc* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iodesc*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.netif*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.iodesc* %0, %struct.iodesc** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.iodesc*, %struct.iodesc** %5, align 8
  %17 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %16, i32 0, i32 0
  %18 = load %struct.netif*, %struct.netif** %17, align 8
  store %struct.netif* %18, %struct.netif** %8, align 8
  store i32 -1, i32* %15, align 4
  %19 = load %struct.netif*, %struct.netif** %8, align 8
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %4, align 4
  br label %84

26:                                               ; preds = %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ETHER_HDR_LEN, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @ETHER_CRC_LEN, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @ETHER_ALIGN, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i8* @malloc(i32 %38)
  store i8* %39, i8** %13, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %4, align 4
  br label %84

44:                                               ; preds = %26
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* @ETHER_ALIGN, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8* %48, i8** %14, align 8
  %49 = call i64 (...) @getsecs()
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %75, %44
  %51 = call i64 (...) @getsecs()
  %52 = load i64, i64* %12, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64 (%struct.TYPE_5__*, i32*, i32*, i8*, i32*, i32*, i32*)*, i64 (%struct.TYPE_5__*, i32*, i32*, i8*, i32*, i32*, i32*)** %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = call i64 %59(%struct.TYPE_5__* %60, i32* null, i32* %11, i8* %61, i32* null, i32* null, i32* null)
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @EFI_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i8*, i8** %13, align 8
  %68 = load i8**, i8*** %6, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %15, align 4
  br label %76

70:                                               ; preds = %56
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @EFI_NOT_READY, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %76

75:                                               ; preds = %70
  br label %50

76:                                               ; preds = %74, %66, %50
  %77 = load i32, i32* %15, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @free(i8* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %42, %24
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @getsecs(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
