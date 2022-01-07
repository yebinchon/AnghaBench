; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_process_list_end_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_process_list_end_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.module_env = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, %struct.module_env*)* @process_list_end_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_list_end_transfer(%struct.auth_xfer* %0, %struct.module_env* %1) #0 {
  %3 = alloca %struct.auth_xfer*, align 8
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.auth_xfer* %0, %struct.auth_xfer** %3, align 8
  store %struct.module_env* %1, %struct.module_env** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %9 = load %struct.module_env*, %struct.module_env** %4, align 8
  %10 = call i64 @xfr_process_chunk_list(%struct.auth_xfer* %8, %struct.module_env* %9, i32* %5)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %86

12:                                               ; preds = %2
  %13 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %14 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @auth_chunks_delete(%struct.TYPE_4__* %15)
  %17 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %18 = call i32 @xfr_transfer_disown(%struct.auth_xfer* %17)
  %19 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %20 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %12
  %24 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %25 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %30 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %28
  %34 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %35 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %36 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @xfr_serial_means_update(%struct.auth_xfer* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %33, %23
  %41 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %42 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %6, align 4
  %44 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %45 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  %47 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %48 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %50 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %52 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %51, i32 0, i32 5
  store i32 0, i32* %52, align 8
  %53 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %54 = load %struct.module_env*, %struct.module_env** %4, align 8
  %55 = call i32 @xfr_start_probe(%struct.auth_xfer* %53, %struct.module_env* %54, i32* null)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %40
  %58 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %59 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %62 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %65 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %67 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %66, i32 0, i32 3
  %68 = call i32 @lock_basic_unlock(i32* %67)
  br label %69

69:                                               ; preds = %57, %40
  br label %105

70:                                               ; preds = %33, %28, %12
  %71 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %72 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %71, i32 0, i32 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %79 = load %struct.module_env*, %struct.module_env** %4, align 8
  %80 = call i32 @xfr_set_timeout(%struct.auth_xfer* %78, %struct.module_env* %79, i32 0, i32 0)
  br label %81

81:                                               ; preds = %77, %70
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %84 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %83, i32 0, i32 3
  %85 = call i32 @lock_basic_unlock(i32* %84)
  br label %105

86:                                               ; preds = %2
  %87 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %88 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = call i32 @auth_chunks_delete(%struct.TYPE_4__* %89)
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %95 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  br label %101

98:                                               ; preds = %86
  %99 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %100 = call i32 @xfr_transfer_nextmaster(%struct.auth_xfer* %99)
  br label %101

101:                                              ; preds = %98, %93
  %102 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %103 = load %struct.module_env*, %struct.module_env** %4, align 8
  %104 = call i32 @xfr_transfer_nexttarget_or_end(%struct.auth_xfer* %102, %struct.module_env* %103)
  br label %105

105:                                              ; preds = %101, %82, %69
  ret void
}

declare dso_local i64 @xfr_process_chunk_list(%struct.auth_xfer*, %struct.module_env*, i32*) #1

declare dso_local i32 @auth_chunks_delete(%struct.TYPE_4__*) #1

declare dso_local i32 @xfr_transfer_disown(%struct.auth_xfer*) #1

declare dso_local i64 @xfr_serial_means_update(%struct.auth_xfer*, i32) #1

declare dso_local i32 @xfr_start_probe(%struct.auth_xfer*, %struct.module_env*, i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @xfr_set_timeout(%struct.auth_xfer*, %struct.module_env*, i32, i32) #1

declare dso_local i32 @xfr_transfer_nextmaster(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_transfer_nexttarget_or_end(%struct.auth_xfer*, %struct.module_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
