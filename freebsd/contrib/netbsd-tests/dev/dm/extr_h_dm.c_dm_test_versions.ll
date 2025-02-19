; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/dm/extr_h_dm.c_dm_test_versions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/dm/extr_h_dm.c_dm_test_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plistref = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Rump init failed\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"/dev/mapper/control\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Open dm device failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"dm_version_cmd.plist\00", align 1
@NETBSD_DM_IOCTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Dm control ioctl failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_test_versions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.plistref, align 4
  %6 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %7 = call i32 (...) @rump_init()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = call i32 @rump_sys_open(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 0)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = call i32 @prop_dictionary_internalize_from_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 %20, i32* %3, align 4
  %21 = call i32 (...) @prop_dictionary_create()
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @prop_dictionary_externalize_to_pref(i32 %22, %struct.plistref* %5)
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @NETBSD_DM_IOCTL, align 4
  %26 = call i32 @rump_sys_ioctl(i32 %24, i32 %25, %struct.plistref* %5)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %19
  %32 = getelementptr inbounds %struct.plistref, %struct.plistref* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @prop_dictionary_internalize(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i8* @prop_dictionary_externalize(i32 %35)
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @__USE(i8* %37)
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @rump_sys_close(i32 %39)
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @rump_init(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @prop_dictionary_internalize_from_file(i8*) #1

declare dso_local i32 @prop_dictionary_create(...) #1

declare dso_local i32 @prop_dictionary_externalize_to_pref(i32, %struct.plistref*) #1

declare dso_local i32 @rump_sys_ioctl(i32, i32, %struct.plistref*) #1

declare dso_local i32 @prop_dictionary_internalize(i32) #1

declare dso_local i8* @prop_dictionary_externalize(i32) #1

declare dso_local i32 @__USE(i8*) #1

declare dso_local i32 @rump_sys_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
