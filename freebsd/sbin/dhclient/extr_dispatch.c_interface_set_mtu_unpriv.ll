; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_interface_set_mtu_unpriv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_interface_set_mtu_unpriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imsg_hdr = type { i32, i32 }
%struct.buf = type { i32 }

@IMSG_SET_INTERFACE_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"buf_open: %m\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"buf_add: %m\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"buf_close: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interface_set_mtu_unpriv(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.imsg_hdr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.imsg_hdr, align 4
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.imsg_hdr* %3 to i64*
  store i64 %1, i64* %8, align 4
  store i32 %0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @IMSG_SET_INTERFACE_MTU, align 4
  %10 = getelementptr inbounds %struct.imsg_hdr, %struct.imsg_hdr* %5, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.imsg_hdr, %struct.imsg_hdr* %5, i32 0, i32 0
  store i32 16, i32* %11, align 4
  %12 = getelementptr inbounds %struct.imsg_hdr, %struct.imsg_hdr* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.buf* @buf_open(i32 %13)
  store %struct.buf* %14, %struct.buf** %6, align 8
  %15 = icmp eq %struct.buf* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load %struct.buf*, %struct.buf** %6, align 8
  %20 = call i64 @buf_add(%struct.buf* %19, %struct.imsg_hdr* %5, i32 8)
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.buf*, %struct.buf** %6, align 8
  %26 = call i64 @buf_add(%struct.buf* %25, %struct.imsg_hdr* %3, i32 8)
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = call i32 @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %18
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.buf*, %struct.buf** %6, align 8
  %38 = call i32 @buf_close(i32 %36, %struct.buf* %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  ret void
}

declare dso_local %struct.buf* @buf_open(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @buf_add(%struct.buf*, %struct.imsg_hdr*, i32) #1

declare dso_local i32 @buf_close(i32, %struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
