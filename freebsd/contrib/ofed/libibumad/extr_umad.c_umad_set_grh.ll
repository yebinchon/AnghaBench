; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_umad_set_grh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad.c_umad_set_grh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_user_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.ib_mad_addr = type { i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umad_set_grh(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ib_user_mad*, align 8
  %6 = alloca %struct.ib_mad_addr*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ib_user_mad*
  store %struct.ib_user_mad* %8, %struct.ib_user_mad** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ib_mad_addr*
  store %struct.ib_mad_addr* %10, %struct.ib_mad_addr** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %2
  %14 = load %struct.ib_user_mad*, %struct.ib_user_mad** %5, align 8
  %15 = getelementptr inbounds %struct.ib_user_mad, %struct.ib_user_mad* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.ib_mad_addr*, %struct.ib_mad_addr** %6, align 8
  %18 = getelementptr inbounds %struct.ib_mad_addr, %struct.ib_mad_addr* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ib_user_mad*, %struct.ib_user_mad** %5, align 8
  %21 = getelementptr inbounds %struct.ib_user_mad, %struct.ib_user_mad* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 4
  %23 = load %struct.ib_mad_addr*, %struct.ib_mad_addr** %6, align 8
  %24 = getelementptr inbounds %struct.ib_mad_addr, %struct.ib_mad_addr* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @htobe32(i32 %26)
  %28 = load %struct.ib_user_mad*, %struct.ib_user_mad** %5, align 8
  %29 = getelementptr inbounds %struct.ib_user_mad, %struct.ib_user_mad* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load %struct.ib_mad_addr*, %struct.ib_mad_addr** %6, align 8
  %32 = getelementptr inbounds %struct.ib_mad_addr, %struct.ib_mad_addr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ib_user_mad*, %struct.ib_user_mad** %5, align 8
  %35 = getelementptr inbounds %struct.ib_user_mad, %struct.ib_user_mad* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load %struct.ib_mad_addr*, %struct.ib_mad_addr** %6, align 8
  %38 = getelementptr inbounds %struct.ib_mad_addr, %struct.ib_mad_addr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ib_user_mad*, %struct.ib_user_mad** %5, align 8
  %41 = getelementptr inbounds %struct.ib_user_mad, %struct.ib_user_mad* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  br label %47

43:                                               ; preds = %2
  %44 = load %struct.ib_user_mad*, %struct.ib_user_mad** %5, align 8
  %45 = getelementptr inbounds %struct.ib_user_mad, %struct.ib_user_mad* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %13
  ret i32 0
}

declare dso_local i32 @htobe32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
