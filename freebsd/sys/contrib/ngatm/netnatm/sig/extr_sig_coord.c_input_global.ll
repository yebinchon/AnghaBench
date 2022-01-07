; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_input_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_input_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32, i32 }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@UNI_FAC_COORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"GLOB MTYPE = %x\00", align 1
@UNI_CAUSE_CREF_INV = common dso_local global i32 0, align 4
@SIGR_RESTART = common dso_local global i32 0, align 4
@SIGS_RESTART_ACK = common dso_local global i32 0, align 4
@SIGS_STATUS = common dso_local global i32 0, align 4
@SIGR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni*, %struct.uni_msg*, %struct.uni_all*)* @input_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_global(%struct.uni* %0, %struct.uni_msg* %1, %struct.uni_all* %2) #0 {
  %4 = alloca %struct.uni*, align 8
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_all*, align 8
  store %struct.uni* %0, %struct.uni** %4, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %5, align 8
  store %struct.uni_all* %2, %struct.uni_all** %6, align 8
  %7 = load %struct.uni*, %struct.uni** %4, align 8
  %8 = load i32, i32* @UNI_FAC_COORD, align 4
  %9 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %10 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @VERBOSE(%struct.uni* %7, i32 %8, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %14 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %16 [
    i32 130, label %41
    i32 129, label %66
    i32 128, label %91
  ]

16:                                               ; preds = %3
  %17 = load %struct.uni*, %struct.uni** %4, align 8
  %18 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %19 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %23 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load %struct.uni*, %struct.uni** %4, align 8
  %31 = getelementptr inbounds %struct.uni, %struct.uni* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  br label %37

33:                                               ; preds = %16
  %34 = load %struct.uni*, %struct.uni** %4, align 8
  %35 = getelementptr inbounds %struct.uni, %struct.uni* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %32, %29 ], [ %36, %33 ]
  %39 = load i32, i32* @UNI_CAUSE_CREF_INV, align 4
  %40 = call i32 @uni_respond_status(%struct.uni* %17, %struct.TYPE_6__* %21, i32 %38, i32 %39)
  br label %112

41:                                               ; preds = %3
  %42 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %43 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %41
  %50 = load %struct.uni*, %struct.uni** %4, align 8
  %51 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %52 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.uni*, %struct.uni** %4, align 8
  %56 = getelementptr inbounds %struct.uni, %struct.uni* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UNI_CAUSE_CREF_INV, align 4
  %59 = call i32 @uni_respond_status(%struct.uni* %50, %struct.TYPE_6__* %54, i32 %57, i32 %58)
  br label %112

60:                                               ; preds = %41
  %61 = load %struct.uni*, %struct.uni** %4, align 8
  %62 = load i32, i32* @SIGR_RESTART, align 4
  %63 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %64 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %65 = call i32 @uni_enq_resp(%struct.uni* %61, i32 %62, i32 0, %struct.uni_msg* %63, %struct.uni_all* %64)
  br label %117

66:                                               ; preds = %3
  %67 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %68 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %66
  %75 = load %struct.uni*, %struct.uni** %4, align 8
  %76 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %77 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.uni*, %struct.uni** %4, align 8
  %81 = getelementptr inbounds %struct.uni, %struct.uni* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @UNI_CAUSE_CREF_INV, align 4
  %84 = call i32 @uni_respond_status(%struct.uni* %75, %struct.TYPE_6__* %79, i32 %82, i32 %83)
  br label %112

85:                                               ; preds = %66
  %86 = load %struct.uni*, %struct.uni** %4, align 8
  %87 = load i32, i32* @SIGS_RESTART_ACK, align 4
  %88 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %89 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %90 = call i32 @uni_enq_start(%struct.uni* %86, i32 %87, i32 0, %struct.uni_msg* %88, %struct.uni_all* %89)
  br label %117

91:                                               ; preds = %3
  %92 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %93 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load %struct.uni*, %struct.uni** %4, align 8
  %101 = load i32, i32* @SIGS_STATUS, align 4
  %102 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %103 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %104 = call i32 @uni_enq_start(%struct.uni* %100, i32 %101, i32 0, %struct.uni_msg* %102, %struct.uni_all* %103)
  br label %111

105:                                              ; preds = %91
  %106 = load %struct.uni*, %struct.uni** %4, align 8
  %107 = load i32, i32* @SIGR_STATUS, align 4
  %108 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %109 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %110 = call i32 @uni_enq_resp(%struct.uni* %106, i32 %107, i32 0, %struct.uni_msg* %108, %struct.uni_all* %109)
  br label %111

111:                                              ; preds = %105, %99
  br label %117

112:                                              ; preds = %74, %49, %37
  %113 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %114 = call i32 @uni_msg_destroy(%struct.uni_msg* %113)
  %115 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %116 = call i32 @UNI_FREE(%struct.uni_all* %115)
  br label %117

117:                                              ; preds = %112, %111, %85, %60
  ret void
}

declare dso_local i32 @VERBOSE(%struct.uni*, i32, i32, i8*, i32) #1

declare dso_local i32 @uni_respond_status(%struct.uni*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @uni_enq_resp(%struct.uni*, i32, i32, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @uni_enq_start(%struct.uni*, i32, i32, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
