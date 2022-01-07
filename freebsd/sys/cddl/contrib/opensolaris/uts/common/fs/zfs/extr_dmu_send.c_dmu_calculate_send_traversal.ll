; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dmu_calculate_send_traversal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dmu_calculate_send_traversal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calculate_send_arg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i8*)* @dmu_calculate_send_traversal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_calculate_send_traversal(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.calculate_send_arg*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = bitcast i8* %14 to %struct.calculate_send_arg*
  store %struct.calculate_send_arg* %15, %struct.calculate_send_arg** %13, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %6
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @BP_IS_HOLE(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @BP_GET_UCSIZE(i32* %23)
  %25 = load %struct.calculate_send_arg*, %struct.calculate_send_arg** %13, align 8
  %26 = getelementptr inbounds %struct.calculate_send_arg, %struct.calculate_send_arg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @BP_GET_PSIZE(i32* %31)
  %33 = load %struct.calculate_send_arg*, %struct.calculate_send_arg** %13, align 8
  %34 = getelementptr inbounds %struct.calculate_send_arg, %struct.calculate_send_arg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  br label %39

39:                                               ; preds = %22, %18, %6
  ret i32 0
}

declare dso_local i32 @BP_IS_HOLE(i32*) #1

declare dso_local i64 @BP_GET_UCSIZE(i32*) #1

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
