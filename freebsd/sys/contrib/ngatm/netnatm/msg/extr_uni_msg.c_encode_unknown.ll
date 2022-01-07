; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_unknown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i32*, i32, i32 }
%struct.uni_unknown = type { %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_UNKNOWN = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_unknown*, %struct.unicx*)* @encode_unknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_unknown(%struct.uni_msg* %0, %struct.uni_unknown* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_unknown*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i32, align 4
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_unknown* %1, %struct.uni_unknown** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %9 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %10 = load %struct.uni_unknown*, %struct.uni_unknown** %6, align 8
  %11 = getelementptr inbounds %struct.uni_unknown, %struct.uni_unknown* %10, i32 0, i32 2
  %12 = load i32, i32* @UNI_UNKNOWN, align 4
  %13 = load %struct.unicx*, %struct.unicx** %7, align 8
  %14 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %9, i32* %11, i32 %12, %struct.unicx* %13, i32* %8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %94

17:                                               ; preds = %3
  %18 = load %struct.uni_unknown*, %struct.uni_unknown** %6, align 8
  %19 = getelementptr inbounds %struct.uni_unknown, %struct.uni_unknown* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UNI_IE_PRESENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load i32, i32* @UNI_IE_EPREF, align 4
  %28 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %29 = load %struct.uni_unknown*, %struct.uni_unknown** %6, align 8
  %30 = getelementptr inbounds %struct.uni_unknown, %struct.uni_unknown* %29, i32 0, i32 1
  %31 = bitcast %struct.TYPE_6__* %30 to %union.uni_ieall*
  %32 = load %struct.unicx*, %struct.unicx** %7, align 8
  %33 = call i64 @uni_encode_ie(i32 %27, %struct.uni_msg* %28, %union.uni_ieall* %31, %struct.unicx* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @UNI_IE_EPREF, align 4
  store i32 %36, i32* %4, align 4
  br label %94

37:                                               ; preds = %26, %17
  %38 = load %struct.uni_unknown*, %struct.uni_unknown** %6, align 8
  %39 = getelementptr inbounds %struct.uni_unknown, %struct.uni_unknown* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UNI_IE_PRESENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load i32, i32* @UNI_IE_UNREC, align 4
  %48 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %49 = load %struct.uni_unknown*, %struct.uni_unknown** %6, align 8
  %50 = getelementptr inbounds %struct.uni_unknown, %struct.uni_unknown* %49, i32 0, i32 0
  %51 = bitcast %struct.TYPE_8__* %50 to %union.uni_ieall*
  %52 = load %struct.unicx*, %struct.unicx** %7, align 8
  %53 = call i64 @uni_encode_ie(i32 %47, %struct.uni_msg* %48, %union.uni_ieall* %51, %struct.unicx* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %56, i32* %4, align 4
  br label %94

57:                                               ; preds = %46, %37
  %58 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %59 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %62 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sub nsw i32 %66, 2
  %68 = ashr i32 %67, 8
  %69 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %70 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 0
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %68, i32* %75, align 4
  %76 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %77 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %80 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sub nsw i32 %84, 2
  %86 = ashr i32 %85, 0
  %87 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %88 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %86, i32* %93, align 4
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %57, %55, %35, %16
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i32*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
