; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_dump.c_mad_dump_portinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_dump.c_mad_dump_portinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_PORT_FIRST_F = common dso_local global i32 0, align 4
@IB_PORT_LAST_F = common dso_local global i32 0, align 4
@IB_PORT_CAPMASK2_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_EXT_LAST_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mad_dump_portinfo(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @IB_PORT_FIRST_F, align 4
  %14 = load i32, i32* @IB_PORT_LAST_F, align 4
  %15 = call i32 @_dump_fields(i8* %10, i32 %11, i8* %12, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %31

19:                                               ; preds = %4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @IB_PORT_CAPMASK2_F, align 4
  %29 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_LAST_F, align 4
  %30 = call i32 @_dump_fields(i8* %23, i32 %26, i8* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @_dump_fields(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
