; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_make_drop_cause.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_make_drop_cause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.uni_ie_cause }
%struct.uni_ie_cause = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

@UNI_CAUSE_LOC_USER = common dso_local global i32 0, align 4
@UNI_CAUSE_IE_INV = common dso_local global i32 0, align 4
@UNI_CAUSE_MANDAT = common dso_local global i32 0, align 4
@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_CAUSE_IE_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, %struct.uni_ie_cause*)* @make_drop_cause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_drop_cause(%struct.call* %0, %struct.uni_ie_cause* %1) #0 {
  %3 = alloca %struct.call*, align 8
  %4 = alloca %struct.uni_ie_cause*, align 8
  store %struct.call* %0, %struct.call** %3, align 8
  store %struct.uni_ie_cause* %1, %struct.uni_ie_cause** %4, align 8
  %5 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %4, align 8
  %6 = call i32 @IE_ISGOOD(%struct.uni_ie_cause* byval(%struct.uni_ie_cause) align 8 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %2
  %9 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %4, align 8
  %10 = call i64 @IE_ISPRESENT(%struct.uni_ie_cause* byval(%struct.uni_ie_cause) align 8 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load %struct.call*, %struct.call** %3, align 8
  %14 = getelementptr inbounds %struct.call, %struct.call* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %18 = load i32, i32* @UNI_CAUSE_IE_INV, align 4
  %19 = call i32 @MK_IE_CAUSE(%struct.uni_ie_cause* byval(%struct.uni_ie_cause) align 8 %16, i32 %17, i32 %18)
  br label %28

20:                                               ; preds = %8
  %21 = load %struct.call*, %struct.call** %3, align 8
  %22 = getelementptr inbounds %struct.call, %struct.call* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %26 = load i32, i32* @UNI_CAUSE_MANDAT, align 4
  %27 = call i32 @MK_IE_CAUSE(%struct.uni_ie_cause* byval(%struct.uni_ie_cause) align 8 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %20, %12
  %29 = load %struct.call*, %struct.call** %3, align 8
  %30 = getelementptr inbounds %struct.call, %struct.call* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @UNI_IE_CAUSE, align 4
  %37 = load %struct.call*, %struct.call** %3, align 8
  %38 = getelementptr inbounds %struct.call, %struct.call* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %36, i32* %45, align 4
  %46 = load i32, i32* @UNI_CAUSE_IE_P, align 4
  %47 = load %struct.call*, %struct.call** %3, align 8
  %48 = getelementptr inbounds %struct.call, %struct.call* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %46
  store i32 %54, i32* %52, align 8
  br label %71

55:                                               ; preds = %2
  %56 = load %struct.call*, %struct.call** %3, align 8
  %57 = getelementptr inbounds %struct.call, %struct.call* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = call i32 @IE_ISGOOD(%struct.uni_ie_cause* byval(%struct.uni_ie_cause) align 8 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %55
  %63 = load %struct.call*, %struct.call** %3, align 8
  %64 = getelementptr inbounds %struct.call, %struct.call* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %4, align 8
  %68 = bitcast %struct.uni_ie_cause* %66 to i8*
  %69 = bitcast %struct.uni_ie_cause* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 24, i1 false)
  br label %70

70:                                               ; preds = %62, %55
  br label %71

71:                                               ; preds = %70, %28
  ret void
}

declare dso_local i32 @IE_ISGOOD(%struct.uni_ie_cause* byval(%struct.uni_ie_cause) align 8) #1

declare dso_local i64 @IE_ISPRESENT(%struct.uni_ie_cause* byval(%struct.uni_ie_cause) align 8) #1

declare dso_local i32 @MK_IE_CAUSE(%struct.uni_ie_cause* byval(%struct.uni_ie_cause) align 8, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
