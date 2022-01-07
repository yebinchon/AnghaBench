; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_conn_avail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_conn_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_conn_avail = type { i32, i32, i32*, i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_REPORT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_conn_avail*, %struct.unicx*)* @check_conn_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_conn_avail(%struct.uni_conn_avail* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_conn_avail*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uni_conn_avail* %0, %struct.uni_conn_avail** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %8 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %9 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %8, i32 0, i32 3
  %10 = bitcast i32* %9 to %union.uni_ieall*
  %11 = load %struct.unicx*, %struct.unicx** %4, align 8
  %12 = call i32 @uni_check_ie(i32 %7, %union.uni_ieall* %10, %struct.unicx* %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i32, i32* @UNI_IE_GIT, align 4
  %21 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %22 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = bitcast i32* %25 to %union.uni_ieall*
  %27 = load %struct.unicx*, %struct.unicx** %4, align 8
  %28 = call i32 @uni_check_ie(i32 %20, %union.uni_ieall* %26, %struct.unicx* %27)
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %19
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %15

34:                                               ; preds = %15
  %35 = load i32, i32* @UNI_IE_REPORT, align 4
  %36 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %37 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %36, i32 0, i32 1
  %38 = bitcast i32* %37 to %union.uni_ieall*
  %39 = load %struct.unicx*, %struct.unicx** %4, align 8
  %40 = call i32 @uni_check_ie(i32 %35, %union.uni_ieall* %38, %struct.unicx* %39)
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @UNI_IE_UNREC, align 4
  %44 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %45 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %44, i32 0, i32 0
  %46 = bitcast i32* %45 to %union.uni_ieall*
  %47 = load %struct.unicx*, %struct.unicx** %4, align 8
  %48 = call i32 @uni_check_ie(i32 %43, %union.uni_ieall* %46, %struct.unicx* %47)
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
