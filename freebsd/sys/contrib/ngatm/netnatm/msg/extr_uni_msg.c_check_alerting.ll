; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_alerting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_alerting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_alerting = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_CONNID = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_IE_REPORT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_alerting*, %struct.unicx*)* @check_alerting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_alerting(%struct.uni_alerting* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_alerting*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uni_alerting* %0, %struct.uni_alerting** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.unicx*, %struct.unicx** %4, align 8
  %8 = getelementptr inbounds %struct.unicx, %struct.unicx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %13 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @IE_ISPRESENT(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* @UNI_IE_CONNID, align 4
  %20 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %21 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %20, i32 0, i32 6
  %22 = bitcast i32* %21 to %union.uni_ieall*
  %23 = load %struct.unicx*, %struct.unicx** %4, align 8
  %24 = call i32 @uni_check_ie(i32 %19, %union.uni_ieall* %22, %struct.unicx* %23)
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %18, %11
  %28 = load i32, i32* @UNI_IE_EPREF, align 4
  %29 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %30 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %29, i32 0, i32 5
  %31 = bitcast i32* %30 to %union.uni_ieall*
  %32 = load %struct.unicx*, %struct.unicx** %4, align 8
  %33 = call i32 @uni_check_ie(i32 %28, %union.uni_ieall* %31, %struct.unicx* %32)
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %37 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %38 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %37, i32 0, i32 4
  %39 = bitcast i32* %38 to %union.uni_ieall*
  %40 = load %struct.unicx*, %struct.unicx** %4, align 8
  %41 = call i32 @uni_check_ie(i32 %36, %union.uni_ieall* %39, %struct.unicx* %40)
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %44

44:                                               ; preds = %60, %27
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32, i32* @UNI_IE_GIT, align 4
  %50 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %51 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = bitcast i32* %54 to %union.uni_ieall*
  %56 = load %struct.unicx*, %struct.unicx** %4, align 8
  %57 = call i32 @uni_check_ie(i32 %49, %union.uni_ieall* %55, %struct.unicx* %56)
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %48
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %44

63:                                               ; preds = %44
  %64 = load %struct.unicx*, %struct.unicx** %4, align 8
  %65 = getelementptr inbounds %struct.unicx, %struct.unicx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %70 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @IE_ISPRESENT(i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %84

75:                                               ; preds = %63
  %76 = load i32, i32* @UNI_IE_UU, align 4
  %77 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %78 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %77, i32 0, i32 2
  %79 = bitcast i32* %78 to %union.uni_ieall*
  %80 = load %struct.unicx*, %struct.unicx** %4, align 8
  %81 = call i32 @uni_check_ie(i32 %76, %union.uni_ieall* %79, %struct.unicx* %80)
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %75, %68
  %85 = load %struct.unicx*, %struct.unicx** %4, align 8
  %86 = getelementptr inbounds %struct.unicx, %struct.unicx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %91 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @IE_ISPRESENT(i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %105

96:                                               ; preds = %84
  %97 = load i32, i32* @UNI_IE_REPORT, align 4
  %98 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %99 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %98, i32 0, i32 1
  %100 = bitcast i32* %99 to %union.uni_ieall*
  %101 = load %struct.unicx*, %struct.unicx** %4, align 8
  %102 = call i32 @uni_check_ie(i32 %97, %union.uni_ieall* %100, %struct.unicx* %101)
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %96, %89
  %106 = load i32, i32* @UNI_IE_UNREC, align 4
  %107 = load %struct.uni_alerting*, %struct.uni_alerting** %3, align 8
  %108 = getelementptr inbounds %struct.uni_alerting, %struct.uni_alerting* %107, i32 0, i32 0
  %109 = bitcast i32* %108 to %union.uni_ieall*
  %110 = load %struct.unicx*, %struct.unicx** %4, align 8
  %111 = call i32 @uni_check_ie(i32 %106, %union.uni_ieall* %109, %struct.unicx* %110)
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @IE_ISPRESENT(i32) #1

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
