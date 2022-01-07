; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@numctlerrors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"sending control error %u\0A\00", align 1
@CTL_RESPONSE = common dso_local global i64 0, align 8
@CTL_ERROR = common dso_local global i32 0, align 4
@res_opcode = common dso_local global i32 0, align 4
@CTL_OP_MASK = common dso_local global i32 0, align 4
@rpkt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@res_authenticate = common dso_local global i64 0, align 8
@sys_authenticate = common dso_local global i64 0, align 8
@res_keyid = common dso_local global i32 0, align 4
@CTL_HEADER_LEN = common dso_local global i64 0, align 8
@rmt_addr = common dso_local global i32 0, align 4
@lcl_inter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ctl_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @numctlerrors, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @numctlerrors, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @DPRINTF(i32 3, i8* %8)
  %10 = load i64, i64* @CTL_RESPONSE, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @CTL_ERROR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @res_opcode, align 4
  %15 = load i32, i32* @CTL_OP_MASK, align 4
  %16 = and i32 %14, %15
  %17 = or i32 %13, %16
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 0), align 8
  %18 = load i32, i32* %2, align 4
  %19 = shl i32 %18, 8
  %20 = and i32 %19, 65280
  %21 = call i32 @htons(i32 %20)
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 1), align 8
  %22 = load i64, i64* @res_authenticate, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load i64, i64* @sys_authenticate, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* @res_keyid, align 4
  %29 = load i64, i64* @CTL_HEADER_LEN, align 8
  %30 = call i64 @authencrypt(i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 0), i64 %29)
  store i64 %30, i64* %3, align 8
  %31 = load i32, i32* @rmt_addr, align 4
  %32 = load i32, i32* @lcl_inter, align 4
  %33 = load i64, i64* @CTL_HEADER_LEN, align 8
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %33, %34
  %36 = call i32 @sendpkt(i32 %31, i32 %32, i32 -2, i8* bitcast (%struct.TYPE_2__* @rpkt to i8*), i64 %35)
  br label %42

37:                                               ; preds = %24, %1
  %38 = load i32, i32* @rmt_addr, align 4
  %39 = load i32, i32* @lcl_inter, align 4
  %40 = load i64, i64* @CTL_HEADER_LEN, align 8
  %41 = call i32 @sendpkt(i32 %38, i32 %39, i32 -3, i8* bitcast (%struct.TYPE_2__* @rpkt to i8*), i64 %40)
  br label %42

42:                                               ; preds = %37, %27
  ret void
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @authencrypt(i32, i32*, i64) #1

declare dso_local i32 @sendpkt(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
