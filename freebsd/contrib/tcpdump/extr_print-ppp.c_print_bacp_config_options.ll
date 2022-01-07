; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_print_bacp_config_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_print_bacp_config_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"\0A\09  %s Option (0x%02x), length %u (length bogus, should be >= 2)\00", align 1
@bacconfopts_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\0A\09  %s Option (0x%02x), length %u\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c" (length bogus, should be = 6)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c": Magic-Num 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\0A\09    \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"[|bacp]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @print_bacp_config_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_bacp_config_options(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %99

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ND_TCHECK2(i32 %15, i32 2)
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %99

27:                                               ; preds = %13
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = load i32, i32* @bacconfopts_values, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @tok2str(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %struct.TYPE_5__*
  %39 = call i32 @ND_PRINT(%struct.TYPE_5__* %38)
  store i32 0, i32* %4, align 4
  br label %99

40:                                               ; preds = %27
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = load i32, i32* @bacconfopts_values, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @tok2str(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to %struct.TYPE_5__*
  %49 = call i32 @ND_PRINT(%struct.TYPE_5__* %48)
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %69 [
    i32 128, label %51
  ]

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 6
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([31 x i8]* @.str.3 to %struct.TYPE_5__*))
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %99

58:                                               ; preds = %51
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = call i32 @ND_TCHECK_32BITS(i32* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = call i32 @EXTRACT_32BITS(i32* %64)
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to %struct.TYPE_5__*
  %68 = call i32 @ND_PRINT(%struct.TYPE_5__* %67)
  br label %82

69:                                               ; preds = %40
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 2
  %80 = call i32 @print_unknown_data(%struct.TYPE_5__* %75, i32* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %74, %69
  br label %82

82:                                               ; preds = %81, %58
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 %91, 2
  %93 = call i32 @print_unknown_data(%struct.TYPE_5__* %88, i32* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %87, %82
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %99

96:                                               ; No predecessors!
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([8 x i8]* @.str.6 to %struct.TYPE_5__*))
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %94, %54, %30, %26, %12
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_5__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
