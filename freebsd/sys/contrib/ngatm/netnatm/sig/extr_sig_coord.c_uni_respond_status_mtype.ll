; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_uni_respond_status_mtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_uni_respond_status_mtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32 }
%struct.uni_cref = type { i32 }
%struct.uni_all = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@UNI_STATUS = common dso_local global i32 0, align 4
@UNI_CAUSE_LOC_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_respond_status_mtype(%struct.uni* %0, %struct.uni_cref* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uni*, align 8
  %7 = alloca %struct.uni_cref*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uni_all*, align 8
  store %struct.uni* %0, %struct.uni** %6, align 8
  store %struct.uni_cref* %1, %struct.uni_cref** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call %struct.uni_all* (...) @UNI_ALLOC()
  store %struct.uni_all* %12, %struct.uni_all** %11, align 8
  %13 = icmp eq %struct.uni_all* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %47

15:                                               ; preds = %5
  %16 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %17 = load i32, i32* @UNI_STATUS, align 4
  %18 = load %struct.uni_cref*, %struct.uni_cref** %7, align 8
  %19 = call i32 @MK_MSG_RESP(%struct.uni_all* %16, i32 %17, %struct.uni_cref* %18)
  %20 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %21 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @MK_IE_CALLSTATE(i32 %24, i32 %25)
  %27 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %28 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @MK_IE_CAUSE(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %36 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ADD_CAUSE_MTYPE(i32 %39, i32 %40)
  %42 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %43 = load %struct.uni*, %struct.uni** %6, align 8
  %44 = call i32 @uni_send_output(%struct.uni_all* %42, %struct.uni* %43)
  %45 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %46 = call i32 @UNI_FREE(%struct.uni_all* %45)
  br label %47

47:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.uni_all* @UNI_ALLOC(...) #1

declare dso_local i32 @MK_MSG_RESP(%struct.uni_all*, i32, %struct.uni_cref*) #1

declare dso_local i32 @MK_IE_CALLSTATE(i32, i32) #1

declare dso_local i32 @MK_IE_CAUSE(i32, i32, i32) #1

declare dso_local i32 @ADD_CAUSE_MTYPE(i32, i32) #1

declare dso_local i32 @uni_send_output(%struct.uni_all*, %struct.uni*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
