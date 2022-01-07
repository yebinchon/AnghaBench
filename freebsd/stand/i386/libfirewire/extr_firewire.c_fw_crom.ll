; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_crom.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_crom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.crom_src }
%struct.crom_src = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CROMSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_crom(%struct.fwohci_softc* %0) #0 {
  %2 = alloca %struct.fwohci_softc*, align 8
  %3 = alloca %struct.crom_src*, align 8
  %4 = alloca i8*, align 8
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %2, align 8
  %5 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %6 = call i32 @fw_reset_crom(%struct.fwohci_softc* %5)
  %7 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %8 = call i32 @dcons_crom(%struct.fwohci_softc* %7)
  %9 = load i32, i32* @CROMSIZE, align 4
  %10 = call i8* @malloc(i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %12 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.crom_src* %14, %struct.crom_src** %3, align 8
  %15 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* @CROMSIZE, align 4
  %19 = call i32 @crom_load(%struct.crom_src* %15, i32* %17, i32 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %22 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @CROMSIZE, align 4
  %25 = call i64 @bcmp(i8* %20, i64 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %1
  %28 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %29 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %34 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %40 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 2, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %27
  %43 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* @CROMSIZE, align 4
  %47 = call i32 @crom_load(%struct.crom_src* %43, i32* %45, i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %50 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i32, i32* @CROMSIZE, align 4
  %54 = call i32 @bcopy(i8* %48, i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %42, %1
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @free(i8* %56)
  ret void
}

declare dso_local i32 @fw_reset_crom(%struct.fwohci_softc*) #1

declare dso_local i32 @dcons_crom(%struct.fwohci_softc*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @crom_load(%struct.crom_src*, i32*, i32) #1

declare dso_local i64 @bcmp(i8*, i64, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
