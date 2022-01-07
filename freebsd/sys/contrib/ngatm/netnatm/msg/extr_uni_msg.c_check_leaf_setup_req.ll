; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_leaf_setup_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_leaf_setup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_leaf_setup_req = type { i32, i32, i32, i32*, i32, i32*, i32, i32* }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_NUM_IE_TNS = common dso_local global i64 0, align 8
@UNI_IE_TNS = common dso_local global i32 0, align 4
@UNI_IE_CALLING = common dso_local global i32 0, align 4
@UNI_NUM_IE_CALLINGSUB = common dso_local global i64 0, align 8
@UNI_IE_CALLINGSUB = common dso_local global i32 0, align 4
@UNI_IE_CALLED = common dso_local global i32 0, align 4
@UNI_NUM_IE_CALLEDSUB = common dso_local global i64 0, align 8
@UNI_IE_CALLEDSUB = common dso_local global i32 0, align 4
@UNI_IE_LIJ_CALLID = common dso_local global i32 0, align 4
@UNI_IE_LIJ_SEQNO = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_leaf_setup_req*, %struct.unicx*)* @check_leaf_setup_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_leaf_setup_req(%struct.uni_leaf_setup_req* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_leaf_setup_req*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uni_leaf_setup_req* %0, %struct.uni_leaf_setup_req** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @UNI_NUM_IE_TNS, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load i32, i32* @UNI_IE_TNS, align 4
  %13 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %14 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = bitcast i32* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_check_ie(i32 %12, %union.uni_ieall* %18, %struct.unicx* %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %11
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %6, align 8
  br label %7

26:                                               ; preds = %7
  %27 = load i32, i32* @UNI_IE_CALLING, align 4
  %28 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %29 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %28, i32 0, i32 6
  %30 = bitcast i32* %29 to %union.uni_ieall*
  %31 = load %struct.unicx*, %struct.unicx** %4, align 8
  %32 = call i32 @uni_check_ie(i32 %27, %union.uni_ieall* %30, %struct.unicx* %31)
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %51, %26
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @UNI_NUM_IE_CALLINGSUB, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i32, i32* @UNI_IE_CALLINGSUB, align 4
  %41 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %42 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = bitcast i32* %45 to %union.uni_ieall*
  %47 = load %struct.unicx*, %struct.unicx** %4, align 8
  %48 = call i32 @uni_check_ie(i32 %40, %union.uni_ieall* %46, %struct.unicx* %47)
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %39
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %35

54:                                               ; preds = %35
  %55 = load i32, i32* @UNI_IE_CALLED, align 4
  %56 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %57 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %56, i32 0, i32 4
  %58 = bitcast i32* %57 to %union.uni_ieall*
  %59 = load %struct.unicx*, %struct.unicx** %4, align 8
  %60 = call i32 @uni_check_ie(i32 %55, %union.uni_ieall* %58, %struct.unicx* %59)
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %63

63:                                               ; preds = %79, %54
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @UNI_NUM_IE_CALLEDSUB, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %69 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %70 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = bitcast i32* %73 to %union.uni_ieall*
  %75 = load %struct.unicx*, %struct.unicx** %4, align 8
  %76 = call i32 @uni_check_ie(i32 %68, %union.uni_ieall* %74, %struct.unicx* %75)
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %67
  %80 = load i64, i64* %6, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %6, align 8
  br label %63

82:                                               ; preds = %63
  %83 = load i32, i32* @UNI_IE_LIJ_CALLID, align 4
  %84 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %85 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %84, i32 0, i32 2
  %86 = bitcast i32* %85 to %union.uni_ieall*
  %87 = load %struct.unicx*, %struct.unicx** %4, align 8
  %88 = call i32 @uni_check_ie(i32 %83, %union.uni_ieall* %86, %struct.unicx* %87)
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @UNI_IE_LIJ_SEQNO, align 4
  %92 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %93 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %92, i32 0, i32 1
  %94 = bitcast i32* %93 to %union.uni_ieall*
  %95 = load %struct.unicx*, %struct.unicx** %4, align 8
  %96 = call i32 @uni_check_ie(i32 %91, %union.uni_ieall* %94, %struct.unicx* %95)
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* @UNI_IE_UNREC, align 4
  %100 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %101 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %100, i32 0, i32 0
  %102 = bitcast i32* %101 to %union.uni_ieall*
  %103 = load %struct.unicx*, %struct.unicx** %4, align 8
  %104 = call i32 @uni_check_ie(i32 %99, %union.uni_ieall* %102, %struct.unicx* %103)
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
