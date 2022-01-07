; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fr.c_fr_hdr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fr.c_fr_hdr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Q.922, DLCI %u, length %u: \00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Q.922, hdr-len %u, DLCI %u, Flags [%s], NLPID %s (0x%02x), length %u: \00", align 1
@fr_header_flag_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@nlpid_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"Q.922, hdr-len %u, DLCI %u, Flags [%s], cisco-ethertype %s (0x%04x), length %u: \00", align 1
@ethertype_values = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32, i32*, i32)* @fr_hdr_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fr_hdr_print(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.TYPE_4__*
  %23 = call i32 @ND_PRINT(%struct.TYPE_4__* %22)
  br label %60

24:                                               ; preds = %6
  %25 = load i32, i32* %12, align 4
  %26 = icmp sle i32 %25, 255
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @fr_header_flag_values, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @EXTRACT_32BITS(i32* %32)
  %34 = call i32 @bittok2str(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @nlpid_values, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @tok2str(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.TYPE_4__*
  %42 = call i32 @ND_PRINT(%struct.TYPE_4__* %41)
  br label %59

43:                                               ; preds = %24
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @fr_header_flag_values, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @EXTRACT_32BITS(i32* %48)
  %50 = call i32 @bittok2str(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ethertype_values, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @tok2str(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.TYPE_4__*
  %58 = call i32 @ND_PRINT(%struct.TYPE_4__* %57)
  br label %59

59:                                               ; preds = %43, %27
  br label %60

60:                                               ; preds = %59, %17
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
