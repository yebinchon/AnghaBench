; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_ntpaths.c_isc_ntpaths_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_ntpaths.c_isc_ntpaths_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@namedBase = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@BIND_SUBKEY = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"InstallDir\00", align 1
@baseLen = common dso_local global i32 0, align 4
@systemDir = common dso_local global i64 0, align 8
@ns_confFile = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"\\etc\\named.conf\00", align 1
@lwresd_confFile = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"\\etc\\lwresd.conf\00", align 1
@lwresd_resolvconfFile = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"\\Drivers\\etc\\resolv.conf\00", align 1
@rndc_keyFile = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"\\etc\\rndc.key\00", align 1
@session_keyFile = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"\\etc\\session.key\00", align 1
@rndc_confFile = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"\\etc\\rndc.conf\00", align 1
@ns_defaultpidfile = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"\\etc\\named.pid\00", align 1
@lwresd_defaultpidfile = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"\\etc\\lwresd.pid\00", align 1
@local_state_dir = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"\\bin\00", align 1
@sys_conf_dir = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"\\etc\00", align 1
@Initialized = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_ntpaths_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* @TRUE, align 8
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* @namedBase, align 8
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = call i32 @memset(i64 %4, i32 0, i32 %5)
  %7 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %8 = load i32, i32* @BIND_SUBKEY, align 4
  %9 = load i32, i32* @KEY_READ, align 4
  %10 = call i64 @RegOpenKeyEx(i32 %7, i32 %8, i32 0, i32 %9, i32* %1)
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %2, align 8
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @TRUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = load i64, i64* @namedBase, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i64 @RegQueryValueEx(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32 %22, i32* @baseLen)
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %26, %19
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @RegCloseKey(i32 %29)
  br label %31

31:                                               ; preds = %28, %15
  %32 = load i64, i64* @systemDir, align 8
  %33 = load i32, i32* @MAX_PATH, align 4
  %34 = call i32 @GetSystemDirectory(i64 %32, i32 %33)
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @FALSE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i64, i64* @namedBase, align 8
  %40 = load i64, i64* @systemDir, align 8
  %41 = call i32 @strcpy(i64 %39, i64 %40)
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i64, i64* @ns_confFile, align 8
  %44 = load i64, i64* @namedBase, align 8
  %45 = call i32 @strcpy(i64 %43, i64 %44)
  %46 = load i64, i64* @ns_confFile, align 8
  %47 = call i32 @strcat(i64 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i64, i64* @lwresd_confFile, align 8
  %49 = load i64, i64* @namedBase, align 8
  %50 = call i32 @strcpy(i64 %48, i64 %49)
  %51 = load i64, i64* @lwresd_confFile, align 8
  %52 = call i32 @strcat(i64 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i64, i64* @lwresd_resolvconfFile, align 8
  %54 = load i64, i64* @systemDir, align 8
  %55 = call i32 @strcpy(i64 %53, i64 %54)
  %56 = load i64, i64* @lwresd_resolvconfFile, align 8
  %57 = call i32 @strcat(i64 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i64, i64* @rndc_keyFile, align 8
  %59 = load i64, i64* @namedBase, align 8
  %60 = call i32 @strcpy(i64 %58, i64 %59)
  %61 = load i64, i64* @rndc_keyFile, align 8
  %62 = call i32 @strcat(i64 %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i64, i64* @session_keyFile, align 8
  %64 = load i64, i64* @namedBase, align 8
  %65 = call i32 @strcpy(i64 %63, i64 %64)
  %66 = load i64, i64* @session_keyFile, align 8
  %67 = call i32 @strcat(i64 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i64, i64* @rndc_confFile, align 8
  %69 = load i64, i64* @namedBase, align 8
  %70 = call i32 @strcpy(i64 %68, i64 %69)
  %71 = load i64, i64* @rndc_confFile, align 8
  %72 = call i32 @strcat(i64 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i64, i64* @ns_defaultpidfile, align 8
  %74 = load i64, i64* @namedBase, align 8
  %75 = call i32 @strcpy(i64 %73, i64 %74)
  %76 = load i64, i64* @ns_defaultpidfile, align 8
  %77 = call i32 @strcat(i64 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %78 = load i64, i64* @lwresd_defaultpidfile, align 8
  %79 = load i64, i64* @namedBase, align 8
  %80 = call i32 @strcpy(i64 %78, i64 %79)
  %81 = load i64, i64* @lwresd_defaultpidfile, align 8
  %82 = call i32 @strcat(i64 %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %83 = load i64, i64* @local_state_dir, align 8
  %84 = load i64, i64* @namedBase, align 8
  %85 = call i32 @strcpy(i64 %83, i64 %84)
  %86 = load i64, i64* @local_state_dir, align 8
  %87 = call i32 @strcat(i64 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %88 = load i64, i64* @sys_conf_dir, align 8
  %89 = load i64, i64* @namedBase, align 8
  %90 = call i32 @strcpy(i64 %88, i64 %89)
  %91 = load i64, i64* @sys_conf_dir, align 8
  %92 = call i32 @strcat(i64 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %93 = load i64, i64* @TRUE, align 8
  store i64 %93, i64* @Initialized, align 8
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueEx(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @GetSystemDirectory(i64, i32) #1

declare dso_local i32 @strcpy(i64, i64) #1

declare dso_local i32 @strcat(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
