; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_process_config_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_process_config_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@config = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@host = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@SSHCONF_USERCONF = common dso_local global i32 0, align 4
@SSHCONF_POSTCANON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Can't open user config file %.100s: %.100s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@_PATH_SSH_USER_CONFFILE = common dso_local global i8* null, align 8
@SSHCONF_CHECKPERM = common dso_local global i32 0, align 4
@_PATH_HOST_CONFIG_FILE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.passwd*, i32)* @process_config_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_config_files(i8* %0, %struct.passwd* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** @config, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %3
  %17 = load i8*, i8** @config, align 8
  %18 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i8*, i8** @config, align 8
  %22 = load %struct.passwd*, %struct.passwd** %5, align 8
  %23 = load i32, i32* @host, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* @SSHCONF_USERCONF, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @SSHCONF_POSTCANON, align 4
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = or i32 %25, %32
  %34 = call i32 @read_config_file(i8* %21, %struct.passwd* %22, i32 %23, i8* %24, i32* @options, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** @config, align 8
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 @fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %31, %16
  br label %84

42:                                               ; preds = %3
  %43 = trunc i64 %11 to i32
  %44 = load %struct.passwd*, %struct.passwd** %5, align 8
  %45 = getelementptr inbounds %struct.passwd, %struct.passwd* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** @_PATH_SSH_USER_CONFFILE, align 8
  %48 = call i32 @snprintf(i8* %13, i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %42
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, %11
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load %struct.passwd*, %struct.passwd** %5, align 8
  %57 = load i32, i32* @host, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* @SSHCONF_CHECKPERM, align 4
  %60 = load i32, i32* @SSHCONF_USERCONF, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @SSHCONF_POSTCANON, align 4
  br label %67

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  %69 = or i32 %61, %68
  %70 = call i32 @read_config_file(i8* %13, %struct.passwd* %56, i32 %57, i8* %58, i32* @options, i32 %69)
  br label %71

71:                                               ; preds = %67, %51, %42
  %72 = load i8*, i8** @_PATH_HOST_CONFIG_FILE, align 8
  %73 = load %struct.passwd*, %struct.passwd** %5, align 8
  %74 = load i32, i32* @host, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @SSHCONF_POSTCANON, align 4
  br label %81

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = call i32 @read_config_file(i8* %72, %struct.passwd* %73, i32 %74, i8* %75, i32* @options, i32 %82)
  br label %84

84:                                               ; preds = %81, %41
  %85 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @read_config_file(i8*, %struct.passwd*, i32, i8*, i32*, i32) #2

declare dso_local i32 @fatal(i8*, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
