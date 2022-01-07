; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_uni_respond_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_uni_respond_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32 }
%struct.uni_cref = type { i32 }
%struct.uni_all = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@UNI_STATUS = common dso_local global i32 0, align 4
@UNI_CAUSE_LOC_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_respond_status(%struct.uni* %0, %struct.uni_cref* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uni*, align 8
  %6 = alloca %struct.uni_cref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uni_all*, align 8
  store %struct.uni* %0, %struct.uni** %5, align 8
  store %struct.uni_cref* %1, %struct.uni_cref** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call %struct.uni_all* (...) @UNI_ALLOC()
  store %struct.uni_all* %10, %struct.uni_all** %9, align 8
  %11 = icmp eq %struct.uni_all* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %38

13:                                               ; preds = %4
  %14 = load %struct.uni_all*, %struct.uni_all** %9, align 8
  %15 = load i32, i32* @UNI_STATUS, align 4
  %16 = load %struct.uni_cref*, %struct.uni_cref** %6, align 8
  %17 = call i32 @MK_MSG_RESP(%struct.uni_all* %14, i32 %15, %struct.uni_cref* %16)
  %18 = load %struct.uni_all*, %struct.uni_all** %9, align 8
  %19 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @MK_IE_CALLSTATE(i32 %22, i32 %23)
  %25 = load %struct.uni_all*, %struct.uni_all** %9, align 8
  %26 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @MK_IE_CAUSE(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.uni_all*, %struct.uni_all** %9, align 8
  %34 = load %struct.uni*, %struct.uni** %5, align 8
  %35 = call i32 @uni_send_output(%struct.uni_all* %33, %struct.uni* %34)
  %36 = load %struct.uni_all*, %struct.uni_all** %9, align 8
  %37 = call i32 @UNI_FREE(%struct.uni_all* %36)
  br label %38

38:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.uni_all* @UNI_ALLOC(...) #1

declare dso_local i32 @MK_MSG_RESP(%struct.uni_all*, i32, %struct.uni_cref*) #1

declare dso_local i32 @MK_IE_CALLSTATE(i32, i32) #1

declare dso_local i32 @MK_IE_CAUSE(i32, i32, i32) #1

declare dso_local i32 @uni_send_output(%struct.uni_all*, %struct.uni*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
