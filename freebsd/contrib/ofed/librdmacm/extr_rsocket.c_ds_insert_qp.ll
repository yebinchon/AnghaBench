; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_insert_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_insert_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { %struct.ds_qp* }
%struct.ds_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsocket*, %struct.ds_qp*)* @ds_insert_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_insert_qp(%struct.rsocket* %0, %struct.ds_qp* %1) #0 {
  %3 = alloca %struct.rsocket*, align 8
  %4 = alloca %struct.ds_qp*, align 8
  store %struct.rsocket* %0, %struct.rsocket** %3, align 8
  store %struct.ds_qp* %1, %struct.ds_qp** %4, align 8
  %5 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %6 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %5, i32 0, i32 0
  %7 = load %struct.ds_qp*, %struct.ds_qp** %6, align 8
  %8 = icmp ne %struct.ds_qp* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.ds_qp*, %struct.ds_qp** %4, align 8
  %11 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %10, i32 0, i32 0
  %12 = call i32 @dlist_init(i32* %11)
  br label %21

13:                                               ; preds = %2
  %14 = load %struct.ds_qp*, %struct.ds_qp** %4, align 8
  %15 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %14, i32 0, i32 0
  %16 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %17 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %16, i32 0, i32 0
  %18 = load %struct.ds_qp*, %struct.ds_qp** %17, align 8
  %19 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %18, i32 0, i32 0
  %20 = call i32 @dlist_insert_head(i32* %15, i32* %19)
  br label %21

21:                                               ; preds = %13, %9
  %22 = load %struct.ds_qp*, %struct.ds_qp** %4, align 8
  %23 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %24 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %23, i32 0, i32 0
  store %struct.ds_qp* %22, %struct.ds_qp** %24, align 8
  ret void
}

declare dso_local i32 @dlist_init(i32*) #1

declare dso_local i32 @dlist_insert_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
