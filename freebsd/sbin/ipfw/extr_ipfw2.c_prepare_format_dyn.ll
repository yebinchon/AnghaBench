; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_prepare_format_dyn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_prepare_format_dyn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_opts = type { i32 }
%struct.format_opts = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdline_opts*, %struct.format_opts*, i8*, i8*)* @prepare_format_dyn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_format_dyn(%struct.cmdline_opts* %0, %struct.format_opts* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.cmdline_opts*, align 8
  %6 = alloca %struct.format_opts*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cmdline_opts* %0, %struct.cmdline_opts** %5, align 8
  store %struct.format_opts* %1, %struct.format_opts** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %9, align 8
  %14 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %15 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %19 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %68

23:                                               ; preds = %4
  %24 = load %struct.cmdline_opts*, %struct.cmdline_opts** %5, align 8
  %25 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = bitcast i32* %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = call i32 @bcopy(i8* %32, i32* %11, i32 4)
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.cmdline_opts*, %struct.cmdline_opts** %5, align 8
  %36 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp ne i32 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %68

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @pr_u64(i32* null, i32* %44, i32 0)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %48 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %54 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %42
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @pr_u64(i32* null, i32* %57, i32 0)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %61 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.format_opts*, %struct.format_opts** %6, align 8
  %67 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %22, %40, %64, %55
  ret void
}

declare dso_local i32 @bcopy(i8*, i32*, i32) #1

declare dso_local i32 @pr_u64(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
