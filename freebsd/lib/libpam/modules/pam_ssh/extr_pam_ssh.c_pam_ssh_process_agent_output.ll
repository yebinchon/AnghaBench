; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_ssh/extr_pam_ssh.c_pam_ssh_process_agent_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_ssh/extr_pam_ssh.c_pam_ssh_process_agent_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"SSH_\00", align 1
@PAM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"got %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pam_ssh_process_agent_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pam_ssh_process_agent_output(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %10

10:                                               ; preds = %84, %83, %51, %21, %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @fgetln(i32* %11, i64* %9)
  store i8* %12, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %94

14:                                               ; preds = %10
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14
  br label %10

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %7, align 8
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %37, %22
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = icmp ult i8* %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 61
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %40

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  br label %24

40:                                               ; preds = %35, %24
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = icmp eq i8* %41, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 61
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %40
  br label %10

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  store i8* %55, i8** %8, align 8
  br label %56

56:                                               ; preds = %69, %52
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = icmp ult i8* %57, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 59
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %72

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  br label %56

72:                                               ; preds = %67, %56
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = icmp eq i8* %73, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 59
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %72
  br label %10

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  store i8 0, i8* %85, align 1
  %86 = load i32, i32* @PAM_LOG_DEBUG, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @openpam_log(i32 %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %87, i8* %88)
  %90 = load i32*, i32** %3, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @pam_setenv(i32* %90, i8* %91, i8* %92, i32 1)
  br label %10

94:                                               ; preds = %10
  ret void
}

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @openpam_log(i32, i8*, i8*, i8*) #1

declare dso_local i32 @pam_setenv(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
