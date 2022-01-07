; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_add_party_rej.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_add_party_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_add_party_rej = type { i32, i32, i32*, i32, i32, i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_CRANKBACK = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_add_party_rej*, %struct.unicx*)* @check_add_party_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_add_party_rej(%struct.uni_add_party_rej* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_add_party_rej*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uni_add_party_rej* %0, %struct.uni_add_party_rej** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @UNI_IE_CAUSE, align 4
  %8 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %3, align 8
  %9 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %8, i32 0, i32 5
  %10 = bitcast i32* %9 to %union.uni_ieall*
  %11 = load %struct.unicx*, %struct.unicx** %4, align 8
  %12 = call i32 @uni_check_ie(i32 %7, %union.uni_ieall* %10, %struct.unicx* %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @UNI_IE_EPREF, align 4
  %16 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %3, align 8
  %17 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %16, i32 0, i32 4
  %18 = bitcast i32* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_check_ie(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.unicx*, %struct.unicx** %4, align 8
  %24 = getelementptr inbounds %struct.unicx, %struct.unicx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %3, align 8
  %29 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @IE_ISPRESENT(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %43

34:                                               ; preds = %2
  %35 = load i32, i32* @UNI_IE_UU, align 4
  %36 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %3, align 8
  %37 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %36, i32 0, i32 3
  %38 = bitcast i32* %37 to %union.uni_ieall*
  %39 = load %struct.unicx*, %struct.unicx** %4, align 8
  %40 = call i32 @uni_check_ie(i32 %35, %union.uni_ieall* %38, %struct.unicx* %39)
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %34, %27
  store i64 0, i64* %6, align 8
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32, i32* @UNI_IE_GIT, align 4
  %50 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %3, align 8
  %51 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %50, i32 0, i32 2
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
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %3, align 8
  %70 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @IE_ISPRESENT(i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %84

75:                                               ; preds = %63
  %76 = load i32, i32* @UNI_IE_CRANKBACK, align 4
  %77 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %3, align 8
  %78 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %77, i32 0, i32 1
  %79 = bitcast i32* %78 to %union.uni_ieall*
  %80 = load %struct.unicx*, %struct.unicx** %4, align 8
  %81 = call i32 @uni_check_ie(i32 %76, %union.uni_ieall* %79, %struct.unicx* %80)
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %75, %68
  %85 = load i32, i32* @UNI_IE_UNREC, align 4
  %86 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %3, align 8
  %87 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %86, i32 0, i32 0
  %88 = bitcast i32* %87 to %union.uni_ieall*
  %89 = load %struct.unicx*, %struct.unicx** %4, align 8
  %90 = call i32 @uni_check_ie(i32 %85, %union.uni_ieall* %88, %struct.unicx* %89)
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

declare dso_local i32 @IE_ISPRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
