; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_drop_party.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_drop_party.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_drop_party = type { i32, i32*, i32, i32, i32, i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_drop_party*, %struct.unicx*)* @check_drop_party to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_drop_party(%struct.uni_drop_party* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_drop_party*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uni_drop_party* %0, %struct.uni_drop_party** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @UNI_IE_CAUSE, align 4
  %8 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %9 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %8, i32 0, i32 5
  %10 = bitcast i32* %9 to %union.uni_ieall*
  %11 = load %struct.unicx*, %struct.unicx** %4, align 8
  %12 = call i32 @uni_check_ie(i32 %7, %union.uni_ieall* %10, %struct.unicx* %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @UNI_IE_EPREF, align 4
  %16 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %17 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %16, i32 0, i32 4
  %18 = bitcast i32* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_check_ie(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %24 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %25 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %24, i32 0, i32 3
  %26 = bitcast i32* %25 to %union.uni_ieall*
  %27 = load %struct.unicx*, %struct.unicx** %4, align 8
  %28 = call i32 @uni_check_ie(i32 %23, %union.uni_ieall* %26, %struct.unicx* %27)
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.unicx*, %struct.unicx** %4, align 8
  %32 = getelementptr inbounds %struct.unicx, %struct.unicx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %37 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @IE_ISPRESENT(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %2
  %43 = load i32, i32* @UNI_IE_UU, align 4
  %44 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %45 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %44, i32 0, i32 2
  %46 = bitcast i32* %45 to %union.uni_ieall*
  %47 = load %struct.unicx*, %struct.unicx** %4, align 8
  %48 = call i32 @uni_check_ie(i32 %43, %union.uni_ieall* %46, %struct.unicx* %47)
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %35
  store i64 0, i64* %6, align 8
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i32, i32* @UNI_IE_GIT, align 4
  %58 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %59 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = bitcast i32* %62 to %union.uni_ieall*
  %64 = load %struct.unicx*, %struct.unicx** %4, align 8
  %65 = call i32 @uni_check_ie(i32 %57, %union.uni_ieall* %63, %struct.unicx* %64)
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %56
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %6, align 8
  br label %52

71:                                               ; preds = %52
  %72 = load i32, i32* @UNI_IE_UNREC, align 4
  %73 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %74 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %73, i32 0, i32 0
  %75 = bitcast i32* %74 to %union.uni_ieall*
  %76 = load %struct.unicx*, %struct.unicx** %4, align 8
  %77 = call i32 @uni_check_ie(i32 %72, %union.uni_ieall* %75, %struct.unicx* %76)
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

declare dso_local i32 @IE_ISPRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
