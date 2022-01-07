; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ap1394.c_ap1394_hdr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ap1394.c_ap1394_hdr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.firewire_header = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s > %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c", ethertype %s (0x%04x)\00", align 1
@ethertype_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Unknown Ethertype (0x%04x)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c", length %u: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32)* @ap1394_hdr_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap1394_hdr_print(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firewire_header*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.firewire_header*
  store %struct.firewire_header* %10, %struct.firewire_header** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.firewire_header*, %struct.firewire_header** %7, align 8
  %14 = getelementptr inbounds %struct.firewire_header, %struct.firewire_header* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fwaddr_string(%struct.TYPE_5__* %12, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = load %struct.firewire_header*, %struct.firewire_header** %7, align 8
  %19 = getelementptr inbounds %struct.firewire_header, %struct.firewire_header* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fwaddr_string(%struct.TYPE_5__* %17, i32 %20)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_5__*
  %24 = call i32 @ND_PRINT(%struct.TYPE_5__* %23)
  %25 = load %struct.firewire_header*, %struct.firewire_header** %7, align 8
  %26 = getelementptr inbounds %struct.firewire_header, %struct.firewire_header* %25, i32 0, i32 0
  %27 = call i32 @EXTRACT_16BITS(i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = load i32, i32* @ethertype_values, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @tok2str(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_5__*
  %40 = call i32 @ND_PRINT(%struct.TYPE_5__* %39)
  br label %49

41:                                               ; preds = %3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = load i32, i32* @ethertype_values, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @tok2str(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to %struct.TYPE_5__*
  %48 = call i32 @ND_PRINT(%struct.TYPE_5__* %47)
  br label %49

49:                                               ; preds = %41, %32
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to %struct.TYPE_5__*
  %54 = call i32 @ND_PRINT(%struct.TYPE_5__* %53)
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @fwaddr_string(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
