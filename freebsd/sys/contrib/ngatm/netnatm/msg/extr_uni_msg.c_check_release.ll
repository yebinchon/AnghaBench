; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_release = type { i32, i32, i32, i32, i32*, i32, i32* }
%struct.unicx = type { i32, i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_IE_FACILITY = common dso_local global i32 0, align 4
@UNI_IE_CRANKBACK = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_release*, %struct.unicx*)* @check_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_release(%struct.uni_release* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_release*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uni_release* %0, %struct.uni_release** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i32, i32* @UNI_IE_CAUSE, align 4
  %12 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %13 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = bitcast i32* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_check_ie(i32 %11, %union.uni_ieall* %18, %struct.unicx* %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %28 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %29 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %28, i32 0, i32 5
  %30 = bitcast i32* %29 to %union.uni_ieall*
  %31 = load %struct.unicx*, %struct.unicx** %4, align 8
  %32 = call i32 @uni_check_ie(i32 %27, %union.uni_ieall* %30, %struct.unicx* %31)
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %52, %26
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @UNI_NUM_IE_GIT, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load i32, i32* @UNI_IE_GIT, align 4
  %41 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %42 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = bitcast i32* %46 to %union.uni_ieall*
  %48 = load %struct.unicx*, %struct.unicx** %4, align 8
  %49 = call i32 @uni_check_ie(i32 %40, %union.uni_ieall* %47, %struct.unicx* %48)
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %35

55:                                               ; preds = %35
  %56 = load %struct.unicx*, %struct.unicx** %4, align 8
  %57 = getelementptr inbounds %struct.unicx, %struct.unicx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %62 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @IE_ISPRESENT(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %76

67:                                               ; preds = %55
  %68 = load i32, i32* @UNI_IE_UU, align 4
  %69 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %70 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %69, i32 0, i32 3
  %71 = bitcast i32* %70 to %union.uni_ieall*
  %72 = load %struct.unicx*, %struct.unicx** %4, align 8
  %73 = call i32 @uni_check_ie(i32 %68, %union.uni_ieall* %71, %struct.unicx* %72)
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %67, %60
  %77 = load %struct.unicx*, %struct.unicx** %4, align 8
  %78 = getelementptr inbounds %struct.unicx, %struct.unicx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %83 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @IE_ISPRESENT(i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %97

88:                                               ; preds = %76
  %89 = load i32, i32* @UNI_IE_FACILITY, align 4
  %90 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %91 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %90, i32 0, i32 2
  %92 = bitcast i32* %91 to %union.uni_ieall*
  %93 = load %struct.unicx*, %struct.unicx** %4, align 8
  %94 = call i32 @uni_check_ie(i32 %89, %union.uni_ieall* %92, %struct.unicx* %93)
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %88, %81
  %98 = load %struct.unicx*, %struct.unicx** %4, align 8
  %99 = getelementptr inbounds %struct.unicx, %struct.unicx* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %104 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @IE_ISPRESENT(i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %5, align 4
  br label %118

109:                                              ; preds = %97
  %110 = load i32, i32* @UNI_IE_CRANKBACK, align 4
  %111 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %112 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %111, i32 0, i32 1
  %113 = bitcast i32* %112 to %union.uni_ieall*
  %114 = load %struct.unicx*, %struct.unicx** %4, align 8
  %115 = call i32 @uni_check_ie(i32 %110, %union.uni_ieall* %113, %struct.unicx* %114)
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %109, %102
  %119 = load i32, i32* @UNI_IE_UNREC, align 4
  %120 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %121 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %120, i32 0, i32 0
  %122 = bitcast i32* %121 to %union.uni_ieall*
  %123 = load %struct.unicx*, %struct.unicx** %4, align 8
  %124 = call i32 @uni_check_ie(i32 %119, %union.uni_ieall* %122, %struct.unicx* %123)
  %125 = load i32, i32* %5, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

declare dso_local i32 @IE_ISPRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
