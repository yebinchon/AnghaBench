; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_error_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_error_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tok = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"\0A\09 type %s\00", align 1
@ofpet_str = common dso_local global %struct.tok* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid (0x%04x)\00", align 1
@OFPET_HELLO_FAILED = common dso_local global i64 0, align 8
@ofphfc_str = common dso_local global %struct.tok* null, align 8
@OFPET_BAD_REQUEST = common dso_local global i64 0, align 8
@ofpbrc_str = common dso_local global %struct.tok* null, align 8
@OFPET_BAD_ACTION = common dso_local global i64 0, align 8
@ofpbac_str = common dso_local global %struct.tok* null, align 8
@OFPET_FLOW_MOD_FAILED = common dso_local global i64 0, align 8
@ofpfmfc_str = common dso_local global %struct.tok* null, align 8
@OFPET_PORT_MOD_FAILED = common dso_local global i64 0, align 8
@ofppmfc_str = common dso_local global %struct.tok* null, align 8
@OFPET_QUEUE_OP_FAILED = common dso_local global i64 0, align 8
@ofpqofc_str = common dso_local global %struct.tok* null, align 8
@empty_str = common dso_local global %struct.tok* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c", code %s\00", align 1
@OF_ERROR_MSG_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i64)* @of10_error_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_error_print(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tok*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ND_TCHECK2(i32 %13, i32 2)
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @EXTRACT_16BITS(i32* %15)
  store i64 %16, i64* %10, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.tok*, %struct.tok** @ofpet_str, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @tok2str(%struct.tok* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @ND_PRINT(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ND_TCHECK2(i32 %27, i32 2)
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @OFPET_HELLO_FAILED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load %struct.tok*, %struct.tok** @ofphfc_str, align 8
  br label %76

34:                                               ; preds = %4
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @OFPET_BAD_REQUEST, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load %struct.tok*, %struct.tok** @ofpbrc_str, align 8
  br label %74

40:                                               ; preds = %34
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @OFPET_BAD_ACTION, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load %struct.tok*, %struct.tok** @ofpbac_str, align 8
  br label %72

46:                                               ; preds = %40
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @OFPET_FLOW_MOD_FAILED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load %struct.tok*, %struct.tok** @ofpfmfc_str, align 8
  br label %70

52:                                               ; preds = %46
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @OFPET_PORT_MOD_FAILED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load %struct.tok*, %struct.tok** @ofppmfc_str, align 8
  br label %68

58:                                               ; preds = %52
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @OFPET_QUEUE_OP_FAILED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load %struct.tok*, %struct.tok** @ofpqofc_str, align 8
  br label %66

64:                                               ; preds = %58
  %65 = load %struct.tok*, %struct.tok** @empty_str, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi %struct.tok* [ %63, %62 ], [ %65, %64 ]
  br label %68

68:                                               ; preds = %66, %56
  %69 = phi %struct.tok* [ %57, %56 ], [ %67, %66 ]
  br label %70

70:                                               ; preds = %68, %50
  %71 = phi %struct.tok* [ %51, %50 ], [ %69, %68 ]
  br label %72

72:                                               ; preds = %70, %44
  %73 = phi %struct.tok* [ %45, %44 ], [ %71, %70 ]
  br label %74

74:                                               ; preds = %72, %38
  %75 = phi %struct.tok* [ %39, %38 ], [ %73, %72 ]
  br label %76

76:                                               ; preds = %74, %32
  %77 = phi %struct.tok* [ %33, %32 ], [ %75, %74 ]
  store %struct.tok* %77, %struct.tok** %11, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.tok*, %struct.tok** %11, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i64 @EXTRACT_16BITS(i32* %80)
  %82 = call i32 @tok2str(%struct.tok* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i32*
  %85 = call i32 @ND_PRINT(i32* %84)
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32* %87, i32** %7, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @OF_ERROR_MSG_LEN, align 8
  %93 = sub nsw i64 %91, %92
  %94 = call i32* @of10_data_print(i32* %88, i32* %89, i32* %90, i64 %93)
  store i32* %94, i32** %5, align 8
  br label %102

95:                                               ; No predecessors!
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @tstr, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i32*
  %100 = call i32 @ND_PRINT(i32* %99)
  %101 = load i32*, i32** %8, align 8
  store i32* %101, i32** %5, align 8
  br label %102

102:                                              ; preds = %95, %76
  %103 = load i32*, i32** %5, align 8
  ret i32* %103
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(%struct.tok*, i8*, i64) #1

declare dso_local i32* @of10_data_print(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
