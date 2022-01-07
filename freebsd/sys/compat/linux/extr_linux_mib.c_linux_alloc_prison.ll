; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mib.c_linux_alloc_prison.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mib.c_linux_alloc_prison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32 }
%struct.linux_prison = type { i32 }

@M_PRISON = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@linux_osd_jail_slot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prison*, %struct.linux_prison**)* @linux_alloc_prison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_alloc_prison(%struct.prison* %0, %struct.linux_prison** %1) #0 {
  %3 = alloca %struct.prison*, align 8
  %4 = alloca %struct.linux_prison**, align 8
  %5 = alloca %struct.prison*, align 8
  %6 = alloca %struct.linux_prison*, align 8
  %7 = alloca %struct.linux_prison*, align 8
  %8 = alloca i8**, align 8
  store %struct.prison* %0, %struct.prison** %3, align 8
  store %struct.linux_prison** %1, %struct.linux_prison*** %4, align 8
  %9 = load %struct.prison*, %struct.prison** %3, align 8
  %10 = call %struct.linux_prison* @linux_find_prison(%struct.prison* %9, %struct.prison** %5)
  store %struct.linux_prison* %10, %struct.linux_prison** %6, align 8
  %11 = load %struct.prison*, %struct.prison** %5, align 8
  %12 = load %struct.prison*, %struct.prison** %3, align 8
  %13 = icmp eq %struct.prison* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.prison*, %struct.prison** %5, align 8
  %17 = getelementptr inbounds %struct.prison, %struct.prison* %16, i32 0, i32 0
  %18 = call i32 @mtx_unlock(i32* %17)
  %19 = load i32, i32* @M_PRISON, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = call %struct.linux_prison* @malloc(i32 4, i32 %19, i32 %20)
  store %struct.linux_prison* %21, %struct.linux_prison** %7, align 8
  %22 = load i32, i32* @linux_osd_jail_slot, align 4
  %23 = call i8** @osd_reserve(i32 %22)
  store i8** %23, i8*** %8, align 8
  %24 = load %struct.prison*, %struct.prison** %3, align 8
  %25 = call %struct.linux_prison* @linux_find_prison(%struct.prison* %24, %struct.prison** %5)
  store %struct.linux_prison* %25, %struct.linux_prison** %6, align 8
  %26 = load %struct.prison*, %struct.prison** %5, align 8
  %27 = load %struct.prison*, %struct.prison** %3, align 8
  %28 = icmp eq %struct.prison* %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %15
  %30 = load %struct.linux_prison*, %struct.linux_prison** %7, align 8
  %31 = load i32, i32* @M_PRISON, align 4
  %32 = call i32 @free(%struct.linux_prison* %30, i32 %31)
  %33 = load i8**, i8*** %8, align 8
  %34 = call i32 @osd_free_reserved(i8** %33)
  br label %51

35:                                               ; preds = %15
  %36 = load %struct.prison*, %struct.prison** %3, align 8
  %37 = getelementptr inbounds %struct.prison, %struct.prison* %36, i32 0, i32 0
  %38 = call i32 @mtx_lock(i32* %37)
  %39 = load %struct.prison*, %struct.prison** %3, align 8
  %40 = load i32, i32* @linux_osd_jail_slot, align 4
  %41 = load i8**, i8*** %8, align 8
  %42 = load %struct.linux_prison*, %struct.linux_prison** %7, align 8
  %43 = call i32 @osd_jail_set_reserved(%struct.prison* %39, i32 %40, i8** %41, %struct.linux_prison* %42)
  %44 = load %struct.linux_prison*, %struct.linux_prison** %6, align 8
  %45 = load %struct.linux_prison*, %struct.linux_prison** %7, align 8
  %46 = call i32 @bcopy(%struct.linux_prison* %44, %struct.linux_prison* %45, i32 4)
  %47 = load %struct.linux_prison*, %struct.linux_prison** %7, align 8
  store %struct.linux_prison* %47, %struct.linux_prison** %6, align 8
  %48 = load %struct.prison*, %struct.prison** %5, align 8
  %49 = getelementptr inbounds %struct.prison, %struct.prison* %48, i32 0, i32 0
  %50 = call i32 @mtx_unlock(i32* %49)
  br label %51

51:                                               ; preds = %35, %29, %14
  %52 = load %struct.linux_prison**, %struct.linux_prison*** %4, align 8
  %53 = icmp ne %struct.linux_prison** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.linux_prison*, %struct.linux_prison** %6, align 8
  %56 = load %struct.linux_prison**, %struct.linux_prison*** %4, align 8
  store %struct.linux_prison* %55, %struct.linux_prison** %56, align 8
  br label %61

57:                                               ; preds = %51
  %58 = load %struct.prison*, %struct.prison** %3, align 8
  %59 = getelementptr inbounds %struct.prison, %struct.prison* %58, i32 0, i32 0
  %60 = call i32 @mtx_unlock(i32* %59)
  br label %61

61:                                               ; preds = %57, %54
  ret void
}

declare dso_local %struct.linux_prison* @linux_find_prison(%struct.prison*, %struct.prison**) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.linux_prison* @malloc(i32, i32, i32) #1

declare dso_local i8** @osd_reserve(i32) #1

declare dso_local i32 @free(%struct.linux_prison*, i32) #1

declare dso_local i32 @osd_free_reserved(i8**) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @osd_jail_set_reserved(%struct.prison*, i32, i8**, %struct.linux_prison*) #1

declare dso_local i32 @bcopy(%struct.linux_prison*, %struct.linux_prison*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
