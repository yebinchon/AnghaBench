; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_coord_saal_data_indication.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_coord_saal_data_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.call = type { i64 }

@UNI_FAC_COORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"bogus message - ignored\00", align 1
@CREF_DUMMY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"dummy cref - ignored\00", align 1
@CREF_GLOBAL = common dso_local global i64 0, align 8
@CALL_COBI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni*, %struct.uni_msg*)* @coord_saal_data_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coord_saal_data_indication(%struct.uni* %0, %struct.uni_msg* %1) #0 {
  %3 = alloca %struct.uni*, align 8
  %4 = alloca %struct.uni_msg*, align 8
  %5 = alloca %struct.uni_all*, align 8
  %6 = alloca %struct.call*, align 8
  store %struct.uni* %0, %struct.uni** %3, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %4, align 8
  %7 = load %struct.uni*, %struct.uni** %3, align 8
  %8 = getelementptr inbounds %struct.uni, %struct.uni* %7, i32 0, i32 1
  %9 = call i32 @memset(i32* %8, i32 0, i32 4)
  %10 = call %struct.uni_all* (...) @UNI_ALLOC()
  store %struct.uni_all* %10, %struct.uni_all** %5, align 8
  %11 = icmp eq %struct.uni_all* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %14 = call i32 @uni_msg_destroy(%struct.uni_msg* %13)
  br label %104

15:                                               ; preds = %2
  %16 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %17 = load %struct.uni_all*, %struct.uni_all** %5, align 8
  %18 = load %struct.uni*, %struct.uni** %3, align 8
  %19 = getelementptr inbounds %struct.uni, %struct.uni* %18, i32 0, i32 0
  %20 = call i64 @uni_decode_head(%struct.uni_msg* %16, %struct.uni_all* %17, %struct.TYPE_8__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.uni*, %struct.uni** %3, align 8
  %24 = load i32, i32* @UNI_FAC_COORD, align 4
  %25 = call i32 @VERBOSE(%struct.uni* %23, i32 %24, i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %27 = call i32 @uni_msg_destroy(%struct.uni_msg* %26)
  %28 = load %struct.uni_all*, %struct.uni_all** %5, align 8
  %29 = call i32 @UNI_FREE(%struct.uni_all* %28)
  br label %104

30:                                               ; preds = %15
  %31 = load %struct.uni_all*, %struct.uni_all** %5, align 8
  %32 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CREF_DUMMY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %30
  %40 = load %struct.uni*, %struct.uni** %3, align 8
  %41 = getelementptr inbounds %struct.uni, %struct.uni* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.uni*, %struct.uni** %3, align 8
  %47 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %48 = load %struct.uni_all*, %struct.uni_all** %5, align 8
  %49 = call i32 @input_dummy(%struct.uni* %46, %struct.uni_msg* %47, %struct.uni_all* %48)
  br label %58

50:                                               ; preds = %39
  %51 = load %struct.uni*, %struct.uni** %3, align 8
  %52 = load i32, i32* @UNI_FAC_COORD, align 4
  %53 = call i32 @VERBOSE(%struct.uni* %51, i32 %52, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.uni_all*, %struct.uni_all** %5, align 8
  %55 = call i32 @UNI_FREE(%struct.uni_all* %54)
  %56 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %57 = call i32 @uni_msg_destroy(%struct.uni_msg* %56)
  br label %58

58:                                               ; preds = %50, %45
  br label %104

59:                                               ; preds = %30
  %60 = load %struct.uni_all*, %struct.uni_all** %5, align 8
  %61 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CREF_GLOBAL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load %struct.uni*, %struct.uni** %3, align 8
  %70 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %71 = load %struct.uni_all*, %struct.uni_all** %5, align 8
  %72 = call i32 @input_global(%struct.uni* %69, %struct.uni_msg* %70, %struct.uni_all* %71)
  br label %104

73:                                               ; preds = %59
  %74 = load %struct.uni*, %struct.uni** %3, align 8
  %75 = load %struct.uni_all*, %struct.uni_all** %5, align 8
  %76 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call %struct.call* @uni_find_call(%struct.uni* %74, %struct.TYPE_7__* %78)
  store %struct.call* %79, %struct.call** %6, align 8
  %80 = icmp eq %struct.call* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.uni*, %struct.uni** %3, align 8
  %83 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %84 = load %struct.uni_all*, %struct.uni_all** %5, align 8
  %85 = call i32 @input_unknown(%struct.uni* %82, %struct.uni_msg* %83, %struct.uni_all* %84)
  br label %103

86:                                               ; preds = %73
  %87 = load %struct.call*, %struct.call** %6, align 8
  %88 = getelementptr inbounds %struct.call, %struct.call* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CALL_COBI, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.call*, %struct.call** %6, align 8
  %94 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %95 = load %struct.uni_all*, %struct.uni_all** %5, align 8
  %96 = call i32 @input_cobi(%struct.call* %93, %struct.uni_msg* %94, %struct.uni_all* %95)
  br label %102

97:                                               ; preds = %86
  %98 = load %struct.call*, %struct.call** %6, align 8
  %99 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %100 = load %struct.uni_all*, %struct.uni_all** %5, align 8
  %101 = call i32 @input_call(%struct.call* %98, %struct.uni_msg* %99, %struct.uni_all* %100)
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %81
  br label %104

104:                                              ; preds = %12, %22, %58, %103, %68
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.uni_all* @UNI_ALLOC(...) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i64 @uni_decode_head(%struct.uni_msg*, %struct.uni_all*, %struct.TYPE_8__*) #1

declare dso_local i32 @VERBOSE(%struct.uni*, i32, i32, i8*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

declare dso_local i32 @input_dummy(%struct.uni*, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @input_global(%struct.uni*, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local %struct.call* @uni_find_call(%struct.uni*, %struct.TYPE_7__*) #1

declare dso_local i32 @input_unknown(%struct.uni*, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @input_cobi(%struct.call*, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @input_call(%struct.call*, %struct.uni_msg*, %struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
