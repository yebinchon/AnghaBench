; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_print_fairq_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_print_fairq_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_altq = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.fairq_opts }
%struct.fairq_opts = type { i32, i64, i64, i32 }
%struct.node_queue_opt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.node_fairq_sc }
%struct.node_fairq_sc = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"fairq(\00", align 1
@FARF_RED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" red\00", align 1
@FARF_ECN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" ecn\00", align 1
@FARF_RIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" rio\00", align 1
@FARF_CODEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c" codel\00", align 1
@FARF_CLEARDSCP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c" cleardscp\00", align 1
@FARF_DEFAULTCLASS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c" default\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"linkshare\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" ) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_altq*, %struct.node_queue_opt*)* @print_fairq_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_fairq_opts(%struct.pf_altq* %0, %struct.node_queue_opt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_altq*, align 8
  %5 = alloca %struct.node_queue_opt*, align 8
  %6 = alloca %struct.fairq_opts*, align 8
  %7 = alloca %struct.node_fairq_sc*, align 8
  store %struct.pf_altq* %0, %struct.pf_altq** %4, align 8
  store %struct.node_queue_opt* %1, %struct.node_queue_opt** %5, align 8
  %8 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %9 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.fairq_opts* %10, %struct.fairq_opts** %6, align 8
  %11 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %12 = icmp eq %struct.node_queue_opt* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.node_fairq_sc* null, %struct.node_fairq_sc** %7, align 8
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.node_queue_opt*, %struct.node_queue_opt** %5, align 8
  %16 = getelementptr inbounds %struct.node_queue_opt, %struct.node_queue_opt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.node_fairq_sc* %18, %struct.node_fairq_sc** %7, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %21 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %19
  %25 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %26 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %129

29:                                               ; preds = %24
  %30 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %31 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %34 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %39 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %129

42:                                               ; preds = %37, %29, %19
  %43 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %45 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FARF_RED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %42
  %53 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %54 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FARF_ECN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %52
  %62 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %63 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FARF_RIO, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %61
  %71 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %72 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FARF_CODEL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %70
  %80 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %81 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @FARF_CLEARDSCP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %79
  %89 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %90 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @FARF_DEFAULTCLASS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %88
  %98 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %99 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %97
  %103 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %104 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.pf_altq*, %struct.pf_altq** %4, align 8
  %107 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %102
  %111 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %112 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %110, %102
  %116 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %117 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %120 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.fairq_opts*, %struct.fairq_opts** %6, align 8
  %123 = getelementptr inbounds %struct.fairq_opts, %struct.fairq_opts* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.node_fairq_sc*, %struct.node_fairq_sc** %7, align 8
  %126 = call i32 @print_fairq_sc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %118, i64 %121, i64 %124, %struct.node_fairq_sc* %125)
  br label %127

127:                                              ; preds = %115, %110, %97
  %128 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %130

129:                                              ; preds = %37, %24
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %127
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_fairq_sc(i8*, i32, i64, i64, %struct.node_fairq_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
