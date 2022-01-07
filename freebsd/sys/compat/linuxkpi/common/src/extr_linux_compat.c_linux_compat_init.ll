; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_compat_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_compat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8* }
%struct.sysctl_oid = type { i32 }

@cpu_feature = common dso_local global i32 0, align 4
@CPUID_CLFSH = common dso_local global i32 0, align 4
@linux_cpu_has_clflush = common dso_local global i32 0, align 4
@linux_vma_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"lkpi-vma-lock\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@linux_class_root = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@linux_class_ktype = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@linux_root_device = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@linux_dev_ktype = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@root_bus = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@linux_class_misc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@pci_drivers = common dso_local global i32 0, align 4
@pci_devices = common dso_local global i32 0, align 4
@pci_lock = common dso_local global i32 0, align 4
@vmmaplock = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"IO Map lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@VMMAP_HASH_SIZE = common dso_local global i32 0, align 4
@vmmaphead = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @linux_compat_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_compat_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sysctl_oid*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @cpu_feature, align 4
  %6 = load i32, i32* @CPUID_CLFSH, align 4
  %7 = and i32 %5, %6
  store i32 %7, i32* @linux_cpu_has_clflush, align 4
  %8 = call i32 @rw_init(i32* @linux_vma_lock, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @OID_AUTO, align 4
  %10 = load i32, i32* @CTLFLAG_RD, align 4
  %11 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.sysctl_oid* @SYSCTL_ADD_ROOT_NODE(i32* null, i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %13, %struct.sysctl_oid** %3, align 8
  %14 = call i32 @kobject_init(%struct.TYPE_8__* @linux_class_root, i32* @linux_class_ktype)
  %15 = call i32 @kobject_set_name(%struct.TYPE_8__* @linux_class_root, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %17 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %16)
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RD, align 4
  %20 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @SYSCTL_ADD_NODE(i32* null, i32 %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @linux_class_root, i32 0, i32 0), align 8
  %23 = call i32 @kobject_init(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @linux_root_device, i32 0, i32 1), i32* @linux_dev_ktype)
  %24 = call i32 @kobject_set_name(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @linux_root_device, i32 0, i32 1), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %25 = load %struct.sysctl_oid*, %struct.sysctl_oid** %3, align 8
  %26 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %25)
  %27 = load i32, i32* @OID_AUTO, align 4
  %28 = load i32, i32* @CTLFLAG_RD, align 4
  %29 = call i8* @SYSCTL_ADD_NODE(i32* null, i32 %26, i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %28, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @linux_root_device, i32 0, i32 1, i32 0), align 8
  %30 = load i32, i32* @root_bus, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @linux_root_device, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @linux_class_misc, i32 0, i32 0), align 8
  %31 = call i32 @class_register(%struct.TYPE_9__* @linux_class_misc)
  %32 = call i32 @INIT_LIST_HEAD(i32* @pci_drivers)
  %33 = call i32 @INIT_LIST_HEAD(i32* @pci_devices)
  %34 = call i32 @spin_lock_init(i32* @pci_lock)
  %35 = load i32, i32* @MTX_DEF, align 4
  %36 = call i32 @mtx_init(i32* @vmmaplock, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %47, %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @VMMAP_HASH_SIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32*, i32** @vmmaphead, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @LIST_INIT(i32* %45)
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %37

50:                                               ; preds = %37
  ret void
}

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_ROOT_NODE(i32*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @kobject_init(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @kobject_set_name(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @class_register(%struct.TYPE_9__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
