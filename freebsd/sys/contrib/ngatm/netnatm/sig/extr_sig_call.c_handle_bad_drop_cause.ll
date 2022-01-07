; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_handle_bad_drop_cause.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_handle_bad_drop_cause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i32 }
%struct.uni_ie_cause = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UNI_IEACT_DEFAULT = common dso_local global i64 0, align 8
@UNI_CAUSE_LOC_USER = common dso_local global i32 0, align 4
@UNI_CAUSE_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, %struct.uni_ie_cause*, i32)* @handle_bad_drop_cause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_bad_drop_cause(%struct.call* %0, %struct.uni_ie_cause* %1, i32 %2) #0 {
  %4 = alloca %struct.call*, align 8
  %5 = alloca %struct.uni_ie_cause*, align 8
  %6 = alloca i32, align 4
  store %struct.call* %0, %struct.call** %4, align 8
  store %struct.uni_ie_cause* %1, %struct.uni_ie_cause** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %8 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @IE_ISGOOD(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %49

14:                                               ; preds = %3
  %15 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %16 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @IE_ISPRESENT(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.call*, %struct.call** %4, align 8
  %23 = getelementptr inbounds %struct.call, %struct.call* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @uni_vfy_remove_cause(i32 %24)
  br label %49

26:                                               ; preds = %14
  %27 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %28 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UNI_IEACT_DEFAULT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %49

34:                                               ; preds = %26
  %35 = load %struct.call*, %struct.call** %4, align 8
  %36 = getelementptr inbounds %struct.call, %struct.call* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @uni_vfy_remove_cause(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.uni_ie_cause*, %struct.uni_ie_cause** %5, align 8
  %43 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %44 = load i32, i32* @UNI_CAUSE_UNSPEC, align 4
  %45 = getelementptr inbounds %struct.uni_ie_cause, %struct.uni_ie_cause* %42, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @MK_IE_CAUSE(i64 %47, i32 %43, i32 %44)
  br label %49

49:                                               ; preds = %13, %21, %33, %41, %34
  ret void
}

declare dso_local i64 @IE_ISGOOD(i64) #1

declare dso_local i32 @IE_ISPRESENT(i64) #1

declare dso_local i32 @uni_vfy_remove_cause(i32) #1

declare dso_local i32 @MK_IE_CAUSE(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
