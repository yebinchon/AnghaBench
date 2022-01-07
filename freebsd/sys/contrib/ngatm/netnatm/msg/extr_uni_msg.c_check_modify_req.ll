; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_modify_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_modify_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_modify_req = type { i32, i32*, i32, i32, i32, i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_TRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_ATRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_MINTRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_modify_req*, %struct.unicx*)* @check_modify_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_modify_req(%struct.uni_modify_req* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_modify_req*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uni_modify_req* %0, %struct.uni_modify_req** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @UNI_IE_TRAFFIC, align 4
  %8 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %9 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %8, i32 0, i32 5
  %10 = bitcast i32* %9 to %union.uni_ieall*
  %11 = load %struct.unicx*, %struct.unicx** %4, align 8
  %12 = call i32 @uni_check_ie(i32 %7, %union.uni_ieall* %10, %struct.unicx* %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @UNI_IE_ATRAFFIC, align 4
  %16 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %17 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %16, i32 0, i32 4
  %18 = bitcast i32* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_check_ie(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @UNI_IE_MINTRAFFIC, align 4
  %24 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %25 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %24, i32 0, i32 3
  %26 = bitcast i32* %25 to %union.uni_ieall*
  %27 = load %struct.unicx*, %struct.unicx** %4, align 8
  %28 = call i32 @uni_check_ie(i32 %23, %union.uni_ieall* %26, %struct.unicx* %27)
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %32 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %33 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %32, i32 0, i32 2
  %34 = bitcast i32* %33 to %union.uni_ieall*
  %35 = load %struct.unicx*, %struct.unicx** %4, align 8
  %36 = call i32 @uni_check_ie(i32 %31, %union.uni_ieall* %34, %struct.unicx* %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %55, %2
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i32, i32* @UNI_IE_GIT, align 4
  %45 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %46 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = bitcast i32* %49 to %union.uni_ieall*
  %51 = load %struct.unicx*, %struct.unicx** %4, align 8
  %52 = call i32 @uni_check_ie(i32 %44, %union.uni_ieall* %50, %struct.unicx* %51)
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %43
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %39

58:                                               ; preds = %39
  %59 = load i32, i32* @UNI_IE_UNREC, align 4
  %60 = load %struct.uni_modify_req*, %struct.uni_modify_req** %3, align 8
  %61 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %60, i32 0, i32 0
  %62 = bitcast i32* %61 to %union.uni_ieall*
  %63 = load %struct.unicx*, %struct.unicx** %4, align 8
  %64 = call i32 @uni_check_ie(i32 %59, %union.uni_ieall* %62, %struct.unicx* %63)
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
