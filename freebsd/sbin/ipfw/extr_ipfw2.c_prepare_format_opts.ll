; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_prepare_format_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_prepare_format_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_opts = type { i32, i64 }
%struct.format_opts = type { i64, i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ip_fw_bcounter = type { i32, i32, i64 }
%struct.ip_fw_rule = type { i32 }

@prepare_format_dyn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdline_opts*, %struct.format_opts*, %struct.TYPE_3__*, i32, i64, i64)* @prepare_format_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_format_opts(%struct.cmdline_opts* %0, %struct.format_opts* %1, %struct.TYPE_3__* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.cmdline_opts*, align 8
  %8 = alloca %struct.format_opts*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ip_fw_bcounter*, align 8
  %18 = alloca %struct.ip_fw_rule*, align 8
  store %struct.cmdline_opts* %0, %struct.cmdline_opts** %7, align 8
  store %struct.format_opts* %1, %struct.format_opts** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.format_opts*, %struct.format_opts** %8, align 8
  %20 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %83

23:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %72, %23
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %24
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 1
  %31 = bitcast %struct.TYPE_3__* %30 to %struct.ip_fw_bcounter*
  store %struct.ip_fw_bcounter* %31, %struct.ip_fw_bcounter** %17, align 8
  %32 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %17, align 8
  %33 = ptrtoint %struct.ip_fw_bcounter* %32 to i64
  %34 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %17, align 8
  %35 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = inttoptr i64 %37 to %struct.ip_fw_rule*
  store %struct.ip_fw_rule* %38, %struct.ip_fw_rule** %18, align 8
  %39 = load %struct.cmdline_opts*, %struct.cmdline_opts** %7, align 8
  %40 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %28
  %44 = load %struct.ip_fw_rule*, %struct.ip_fw_rule** %18, align 8
  %45 = getelementptr inbounds %struct.ip_fw_rule, %struct.ip_fw_rule* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cmdline_opts*, %struct.cmdline_opts** %7, align 8
  %48 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = icmp ne i32 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %72

53:                                               ; preds = %43, %28
  %54 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %17, align 8
  %55 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %54, i32 0, i32 1
  %56 = call i32 @pr_u64(i32* null, i32* %55, i32 0)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %60, %53
  %63 = load %struct.ip_fw_bcounter*, %struct.ip_fw_bcounter** %17, align 8
  %64 = getelementptr inbounds %struct.ip_fw_bcounter, %struct.ip_fw_bcounter* %63, i32 0, i32 0
  %65 = call i32 @pr_u64(i32* null, i32* %64, i32 0)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %69, %62
  br label %72

72:                                               ; preds = %71, %52
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %76 = ptrtoint %struct.TYPE_3__* %75 to i64
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = inttoptr i64 %80 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %81, %struct.TYPE_3__** %9, align 8
  br label %24

82:                                               ; preds = %24
  br label %83

83:                                               ; preds = %82, %6
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.format_opts*, %struct.format_opts** %8, align 8
  %86 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.format_opts*, %struct.format_opts** %8, align 8
  %89 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.format_opts*, %struct.format_opts** %8, align 8
  %91 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.cmdline_opts*, %struct.cmdline_opts** %7, align 8
  %93 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %83
  %97 = load i64, i64* %12, align 8
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.cmdline_opts*, %struct.cmdline_opts** %7, align 8
  %101 = load %struct.format_opts*, %struct.format_opts** %8, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i32, i32* @prepare_format_dyn, align 4
  %105 = call i32 @foreach_state(%struct.cmdline_opts* %100, %struct.format_opts* %101, i64 %102, i64 %103, i32 %104, i32* null)
  br label %106

106:                                              ; preds = %99, %96, %83
  ret void
}

declare dso_local i32 @pr_u64(i32*, i32*, i32) #1

declare dso_local i32 @foreach_state(%struct.cmdline_opts*, %struct.format_opts*, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
