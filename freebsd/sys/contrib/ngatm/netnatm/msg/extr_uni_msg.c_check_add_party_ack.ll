; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_add_party_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_add_party_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_add_party_ack = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_AAL = common dso_local global i32 0, align 4
@UNI_IE_BLLI = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_EETD = common dso_local global i32 0, align 4
@UNI_IE_CONNED = common dso_local global i32 0, align 4
@UNI_IE_CONNEDSUB = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_CALLED_SOFT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_add_party_ack*, %struct.unicx*)* @check_add_party_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_add_party_ack(%struct.uni_add_party_ack* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_add_party_ack*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uni_add_party_ack* %0, %struct.uni_add_party_ack** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @UNI_IE_EPREF, align 4
  %8 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %9 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %8, i32 0, i32 10
  %10 = bitcast i32* %9 to %union.uni_ieall*
  %11 = load %struct.unicx*, %struct.unicx** %4, align 8
  %12 = call i32 @uni_check_ie(i32 %7, %union.uni_ieall* %10, %struct.unicx* %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @UNI_IE_AAL, align 4
  %16 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %17 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %16, i32 0, i32 9
  %18 = bitcast i32* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_check_ie(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @UNI_IE_BLLI, align 4
  %24 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %25 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %24, i32 0, i32 8
  %26 = bitcast i32* %25 to %union.uni_ieall*
  %27 = load %struct.unicx*, %struct.unicx** %4, align 8
  %28 = call i32 @uni_check_ie(i32 %23, %union.uni_ieall* %26, %struct.unicx* %27)
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %32 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %33 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %32, i32 0, i32 7
  %34 = bitcast i32* %33 to %union.uni_ieall*
  %35 = load %struct.unicx*, %struct.unicx** %4, align 8
  %36 = call i32 @uni_check_ie(i32 %31, %union.uni_ieall* %34, %struct.unicx* %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @UNI_IE_EETD, align 4
  %40 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %41 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %40, i32 0, i32 6
  %42 = bitcast i32* %41 to %union.uni_ieall*
  %43 = load %struct.unicx*, %struct.unicx** %4, align 8
  %44 = call i32 @uni_check_ie(i32 %39, %union.uni_ieall* %42, %struct.unicx* %43)
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @UNI_IE_CONNED, align 4
  %48 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %49 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %48, i32 0, i32 5
  %50 = bitcast i32* %49 to %union.uni_ieall*
  %51 = load %struct.unicx*, %struct.unicx** %4, align 8
  %52 = call i32 @uni_check_ie(i32 %47, %union.uni_ieall* %50, %struct.unicx* %51)
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @UNI_IE_CONNEDSUB, align 4
  %56 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %57 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %56, i32 0, i32 4
  %58 = bitcast i32* %57 to %union.uni_ieall*
  %59 = load %struct.unicx*, %struct.unicx** %4, align 8
  %60 = call i32 @uni_check_ie(i32 %55, %union.uni_ieall* %58, %struct.unicx* %59)
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.unicx*, %struct.unicx** %4, align 8
  %64 = getelementptr inbounds %struct.unicx, %struct.unicx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %2
  %68 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %69 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @IE_ISPRESENT(i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %83

74:                                               ; preds = %2
  %75 = load i32, i32* @UNI_IE_UU, align 4
  %76 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %77 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %76, i32 0, i32 3
  %78 = bitcast i32* %77 to %union.uni_ieall*
  %79 = load %struct.unicx*, %struct.unicx** %4, align 8
  %80 = call i32 @uni_check_ie(i32 %75, %union.uni_ieall* %78, %struct.unicx* %79)
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %74, %67
  store i64 0, i64* %6, align 8
  br label %84

84:                                               ; preds = %100, %83
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load i32, i32* @UNI_IE_GIT, align 4
  %90 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %91 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = bitcast i32* %94 to %union.uni_ieall*
  %96 = load %struct.unicx*, %struct.unicx** %4, align 8
  %97 = call i32 @uni_check_ie(i32 %89, %union.uni_ieall* %95, %struct.unicx* %96)
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %88
  %101 = load i64, i64* %6, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %6, align 8
  br label %84

103:                                              ; preds = %84
  %104 = load %struct.unicx*, %struct.unicx** %4, align 8
  %105 = getelementptr inbounds %struct.unicx, %struct.unicx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %103
  %109 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %110 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @IE_ISPRESENT(i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %124

115:                                              ; preds = %103
  %116 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  %117 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %118 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %117, i32 0, i32 1
  %119 = bitcast i32* %118 to %union.uni_ieall*
  %120 = load %struct.unicx*, %struct.unicx** %4, align 8
  %121 = call i32 @uni_check_ie(i32 %116, %union.uni_ieall* %119, %struct.unicx* %120)
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %115, %108
  %125 = load i32, i32* @UNI_IE_UNREC, align 4
  %126 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %127 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %126, i32 0, i32 0
  %128 = bitcast i32* %127 to %union.uni_ieall*
  %129 = load %struct.unicx*, %struct.unicx** %4, align 8
  %130 = call i32 @uni_check_ie(i32 %125, %union.uni_ieall* %128, %struct.unicx* %129)
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

declare dso_local i32 @IE_ISPRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
