; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_mcid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isis_print_mcid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.isis_spb_mcid = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"ID: %d, Name: \00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\0A\09              Lvl: %d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c", Digest: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%.2x \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.isis_spb_mcid*)* @isis_print_mcid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isis_print_mcid(%struct.TYPE_5__* %0, %struct.isis_spb_mcid* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.isis_spb_mcid*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.isis_spb_mcid* %1, %struct.isis_spb_mcid** %4, align 8
  %6 = load %struct.isis_spb_mcid*, %struct.isis_spb_mcid** %4, align 8
  %7 = call i32 @ND_TCHECK(%struct.isis_spb_mcid* byval(%struct.isis_spb_mcid) align 8 %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.isis_spb_mcid*, %struct.isis_spb_mcid** %4, align 8
  %10 = getelementptr inbounds %struct.isis_spb_mcid, %struct.isis_spb_mcid* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_5__*
  %14 = call i32 @ND_PRINT(%struct.TYPE_5__* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = load %struct.isis_spb_mcid*, %struct.isis_spb_mcid** %4, align 8
  %17 = getelementptr inbounds %struct.isis_spb_mcid, %struct.isis_spb_mcid* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @fn_printzp(%struct.TYPE_5__* %15, i32 %18, i32 32, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %55

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = load %struct.isis_spb_mcid*, %struct.isis_spb_mcid** %4, align 8
  %28 = getelementptr inbounds %struct.isis_spb_mcid, %struct.isis_spb_mcid* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @EXTRACT_16BITS(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.TYPE_5__*
  %33 = call i32 @ND_PRINT(%struct.TYPE_5__* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([11 x i8]* @.str.2 to %struct.TYPE_5__*))
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %51, %25
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 16
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = load %struct.isis_spb_mcid*, %struct.isis_spb_mcid** %4, align 8
  %42 = getelementptr inbounds %struct.isis_spb_mcid, %struct.isis_spb_mcid* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.TYPE_5__*
  %50 = call i32 @ND_PRINT(%struct.TYPE_5__* %49)
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %36

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %24
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = load i32, i32* @tstr, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.TYPE_5__*
  %60 = call i32 @ND_PRINT(%struct.TYPE_5__* %59)
  ret void
}

declare dso_local i32 @ND_TCHECK(%struct.isis_spb_mcid* byval(%struct.isis_spb_mcid) align 8) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i64 @fn_printzp(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
