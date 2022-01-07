; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_release_compl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_release_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_release_compl = type { i32, i32, i32, i32*, i32* }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_IE_CRANKBACK = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_release_compl*, %struct.unicx*)* @check_release_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_release_compl(%struct.uni_release_compl* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_release_compl*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uni_release_compl* %0, %struct.uni_release_compl** %3, align 8
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
  %12 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %13 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %12, i32 0, i32 4
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
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %61, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @UNI_NUM_IE_GIT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load %struct.unicx*, %struct.unicx** %4, align 8
  %33 = getelementptr inbounds %struct.unicx, %struct.unicx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %38 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IE_ISPRESENT(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %60

47:                                               ; preds = %31
  %48 = load i32, i32* @UNI_IE_GIT, align 4
  %49 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %50 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = bitcast i32* %54 to %union.uni_ieall*
  %56 = load %struct.unicx*, %struct.unicx** %4, align 8
  %57 = call i32 @uni_check_ie(i32 %48, %union.uni_ieall* %55, %struct.unicx* %56)
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %47, %36
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %27

64:                                               ; preds = %27
  %65 = load %struct.unicx*, %struct.unicx** %4, align 8
  %66 = getelementptr inbounds %struct.unicx, %struct.unicx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %71 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @IE_ISPRESENT(i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %85

76:                                               ; preds = %64
  %77 = load i32, i32* @UNI_IE_UU, align 4
  %78 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %79 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %78, i32 0, i32 2
  %80 = bitcast i32* %79 to %union.uni_ieall*
  %81 = load %struct.unicx*, %struct.unicx** %4, align 8
  %82 = call i32 @uni_check_ie(i32 %77, %union.uni_ieall* %80, %struct.unicx* %81)
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %76, %69
  %86 = load %struct.unicx*, %struct.unicx** %4, align 8
  %87 = getelementptr inbounds %struct.unicx, %struct.unicx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %92 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @IE_ISPRESENT(i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %106

97:                                               ; preds = %85
  %98 = load i32, i32* @UNI_IE_CRANKBACK, align 4
  %99 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %100 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %99, i32 0, i32 1
  %101 = bitcast i32* %100 to %union.uni_ieall*
  %102 = load %struct.unicx*, %struct.unicx** %4, align 8
  %103 = call i32 @uni_check_ie(i32 %98, %union.uni_ieall* %101, %struct.unicx* %102)
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %97, %90
  %107 = load i32, i32* @UNI_IE_UNREC, align 4
  %108 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %109 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %108, i32 0, i32 0
  %110 = bitcast i32* %109 to %union.uni_ieall*
  %111 = load %struct.unicx*, %struct.unicx** %4, align 8
  %112 = call i32 @uni_check_ie(i32 %107, %union.uni_ieall* %110, %struct.unicx* %111)
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

declare dso_local i32 @IE_ISPRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
