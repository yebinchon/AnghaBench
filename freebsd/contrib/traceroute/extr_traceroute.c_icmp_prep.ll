; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_icmp_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_icmp_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outdata = type { i32 }
%struct.icmp = type { i32, i8*, i8*, i32 }

@outp = common dso_local global i64 0, align 8
@ICMP_ECHO = common dso_local global i32 0, align 4
@ident = common dso_local global i32 0, align 4
@protlen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @icmp_prep(%struct.outdata* %0) #0 {
  %2 = alloca %struct.outdata*, align 8
  %3 = alloca %struct.icmp*, align 8
  store %struct.outdata* %0, %struct.outdata** %2, align 8
  %4 = load i64, i64* @outp, align 8
  %5 = inttoptr i64 %4 to %struct.icmp*
  store %struct.icmp* %5, %struct.icmp** %3, align 8
  %6 = load i32, i32* @ICMP_ECHO, align 4
  %7 = load %struct.icmp*, %struct.icmp** %3, align 8
  %8 = getelementptr inbounds %struct.icmp, %struct.icmp* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @ident, align 4
  %10 = call i8* @htons(i32 %9)
  %11 = load %struct.icmp*, %struct.icmp** %3, align 8
  %12 = getelementptr inbounds %struct.icmp, %struct.icmp* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load %struct.outdata*, %struct.outdata** %2, align 8
  %14 = getelementptr inbounds %struct.outdata, %struct.outdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @htons(i32 %15)
  %17 = load %struct.icmp*, %struct.icmp** %3, align 8
  %18 = getelementptr inbounds %struct.icmp, %struct.icmp* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.icmp*, %struct.icmp** %3, align 8
  %20 = getelementptr inbounds %struct.icmp, %struct.icmp* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.icmp*, %struct.icmp** %3, align 8
  %22 = bitcast %struct.icmp* %21 to i32*
  %23 = load i32, i32* @protlen, align 4
  %24 = call i32 @in_cksum(i32* %22, i32 %23)
  %25 = load %struct.icmp*, %struct.icmp** %3, align 8
  %26 = getelementptr inbounds %struct.icmp, %struct.icmp* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.icmp*, %struct.icmp** %3, align 8
  %28 = getelementptr inbounds %struct.icmp, %struct.icmp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.icmp*, %struct.icmp** %3, align 8
  %33 = getelementptr inbounds %struct.icmp, %struct.icmp* %32, i32 0, i32 0
  store i32 65535, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %1
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @in_cksum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
