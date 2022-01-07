; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_modify_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_modify_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_modify_ack = type { i32, i32*, i32, i32, i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_REPORT = common dso_local global i32 0, align 4
@UNI_IE_TRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_modify_ack*, %struct.unicx*)* @check_modify_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_modify_ack(%struct.uni_modify_ack* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_modify_ack*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uni_modify_ack* %0, %struct.uni_modify_ack** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @UNI_IE_REPORT, align 4
  %8 = load %struct.uni_modify_ack*, %struct.uni_modify_ack** %3, align 8
  %9 = getelementptr inbounds %struct.uni_modify_ack, %struct.uni_modify_ack* %8, i32 0, i32 4
  %10 = bitcast i32* %9 to %union.uni_ieall*
  %11 = load %struct.unicx*, %struct.unicx** %4, align 8
  %12 = call i32 @uni_check_ie(i32 %7, %union.uni_ieall* %10, %struct.unicx* %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @UNI_IE_TRAFFIC, align 4
  %16 = load %struct.uni_modify_ack*, %struct.uni_modify_ack** %3, align 8
  %17 = getelementptr inbounds %struct.uni_modify_ack, %struct.uni_modify_ack* %16, i32 0, i32 3
  %18 = bitcast i32* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_check_ie(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %24 = load %struct.uni_modify_ack*, %struct.uni_modify_ack** %3, align 8
  %25 = getelementptr inbounds %struct.uni_modify_ack, %struct.uni_modify_ack* %24, i32 0, i32 2
  %26 = bitcast i32* %25 to %union.uni_ieall*
  %27 = load %struct.unicx*, %struct.unicx** %4, align 8
  %28 = call i32 @uni_check_ie(i32 %23, %union.uni_ieall* %26, %struct.unicx* %27)
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %47, %2
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32, i32* @UNI_IE_GIT, align 4
  %37 = load %struct.uni_modify_ack*, %struct.uni_modify_ack** %3, align 8
  %38 = getelementptr inbounds %struct.uni_modify_ack, %struct.uni_modify_ack* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = bitcast i32* %41 to %union.uni_ieall*
  %43 = load %struct.unicx*, %struct.unicx** %4, align 8
  %44 = call i32 @uni_check_ie(i32 %36, %union.uni_ieall* %42, %struct.unicx* %43)
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %35
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %6, align 8
  br label %31

50:                                               ; preds = %31
  %51 = load i32, i32* @UNI_IE_UNREC, align 4
  %52 = load %struct.uni_modify_ack*, %struct.uni_modify_ack** %3, align 8
  %53 = getelementptr inbounds %struct.uni_modify_ack, %struct.uni_modify_ack* %52, i32 0, i32 0
  %54 = bitcast i32* %53 to %union.uni_ieall*
  %55 = load %struct.unicx*, %struct.unicx** %4, align 8
  %56 = call i32 @uni_check_ie(i32 %51, %union.uni_ieall* %54, %struct.unicx* %55)
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
