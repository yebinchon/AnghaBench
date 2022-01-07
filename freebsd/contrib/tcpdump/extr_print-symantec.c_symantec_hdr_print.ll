; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-symantec.c_symantec_hdr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-symantec.c_symantec_hdr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.symantec_header = type { i32 }

@ETHERMTU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"invalid ethertype %u\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ethertype %s (0x%04x)\00", align 1
@ethertype_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Unknown Ethertype (0x%04x)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c", length %u: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32)* @symantec_hdr_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @symantec_hdr_print(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symantec_header*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.symantec_header*
  store %struct.symantec_header* %10, %struct.symantec_header** %7, align 8
  %11 = load %struct.symantec_header*, %struct.symantec_header** %7, align 8
  %12 = getelementptr inbounds %struct.symantec_header, %struct.symantec_header* %11, i32 0, i32 0
  %13 = call i64 @EXTRACT_16BITS(i32* %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @ETHERMTU, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = load i64, i64* %8, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_4__*
  %26 = call i32 @ND_PRINT(%struct.TYPE_4__* %25)
  br label %35

27:                                               ; preds = %18
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = load i32, i32* @ethertype_values, align 4
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @tok2str(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %8, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_4__*
  %34 = call i32 @ND_PRINT(%struct.TYPE_4__* %33)
  br label %35

35:                                               ; preds = %27, %22
  br label %54

36:                                               ; preds = %3
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @ETHERMTU, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = load i64, i64* %8, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_4__*
  %44 = call i32 @ND_PRINT(%struct.TYPE_4__* %43)
  br label %53

45:                                               ; preds = %36
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = load i32, i32* @ethertype_values, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @tok2str(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %48)
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.TYPE_4__*
  %52 = call i32 @ND_PRINT(%struct.TYPE_4__* %51)
  br label %53

53:                                               ; preds = %45, %40
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to %struct.TYPE_4__*
  %59 = call i32 @ND_PRINT(%struct.TYPE_4__* %58)
  ret void
}

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
