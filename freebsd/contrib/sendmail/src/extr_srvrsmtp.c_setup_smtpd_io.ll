; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_srvrsmtp.c_setup_smtpd_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_srvrsmtp.c_setup_smtpd_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InChannel = common dso_local global i32 0, align 4
@SM_IO_WHAT_FD = common dso_local global i32 0, align 4
@OutChannel = common dso_local global i32 0, align 4
@smioout = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@LogLevel = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@NOQID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"fcntl(inchfd, F_GETFL) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"fcntl(outchfd, F_GETFL) failed: %s\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"set automode for I (%d)/O (%d) in SMTP server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_smtpd_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_smtpd_io() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @InChannel, align 4
  %7 = load i32, i32* @SM_IO_WHAT_FD, align 4
  %8 = call i32 @sm_io_getinfo(i32 %6, i32 %7, i32* null)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @OutChannel, align 4
  %10 = load i32, i32* @SM_IO_WHAT_FD, align 4
  %11 = call i32 @sm_io_getinfo(i32 %9, i32 %10, i32* null)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @smioout, align 4
  %13 = load i32, i32* @SM_IO_WHAT_FD, align 4
  %14 = call i32 @sm_io_getinfo(i32 %12, i32 %13, i32* null)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @dup2(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %0
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @STDIN_FILENO, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %121

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @STDOUT_FILENO, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %121

30:                                               ; preds = %26
  %31 = load i32, i32* %1, align 4
  %32 = call i64 @isatty(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %121

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = call i64 @isatty(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %121

38:                                               ; preds = %34
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @F_GETFL, align 4
  %41 = call i32 @fcntl(i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load i32, i32* @LogLevel, align 4
  %46 = icmp sgt i32 %45, 11
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* @LOG_INFO, align 4
  %49 = load i32, i32* @NOQID, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @sm_errstring(i32 %50)
  %52 = call i32 (i32, i32, i8*, i32, ...) @sm_syslog(i32 %48, i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %44
  br label %121

54:                                               ; preds = %38
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @F_GETFL, align 4
  %57 = call i32 @fcntl(i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i32, i32* @LogLevel, align 4
  %62 = icmp sgt i32 %61, 11
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* @LOG_INFO, align 4
  %65 = load i32, i32* @NOQID, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @sm_errstring(i32 %66)
  %68 = call i32 (i32, i32, i8*, i32, ...) @sm_syslog(i32 %64, i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  br label %121

70:                                               ; preds = %54
  %71 = load i32, i32* @O_NONBLOCK, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @bitset(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @O_NONBLOCK, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @bitset(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %1, align 4
  %82 = load i32, i32* @F_SETFL, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @O_NONBLOCK, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @fcntl(i32 %81, i32 %82, i32 %85)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %80, %75, %70
  br label %121

89:                                               ; preds = %80
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @F_GETFL, align 4
  %92 = call i32 @fcntl(i32 %90, i32 %91, i32 0)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %116

95:                                               ; preds = %89
  %96 = load i32, i32* @O_NONBLOCK, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i64 @bitset(i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load i32, i32* @OutChannel, align 4
  %102 = load i32, i32* @InChannel, align 4
  %103 = call i32 @sm_io_automode(i32 %101, i32 %102)
  %104 = call i64 @tTd(i32 97, i32 4)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load i32, i32* @LogLevel, align 4
  %108 = icmp sgt i32 %107, 9
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* @LOG_INFO, align 4
  %111 = load i32, i32* @NOQID, align 4
  %112 = load i32, i32* %1, align 4
  %113 = load i32, i32* %2, align 4
  %114 = call i32 (i32, i32, i8*, i32, ...) @sm_syslog(i32 %110, i32 %111, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %109, %106, %100
  br label %116

116:                                              ; preds = %115, %95, %89
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* @F_SETFL, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @fcntl(i32 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %53, %69, %88, %116, %34, %30, %26, %22
  ret void
}

declare dso_local i32 @sm_io_getinfo(i32, i32, i32*) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @sm_syslog(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @sm_errstring(i32) #1

declare dso_local i64 @bitset(i32, i32) #1

declare dso_local i32 @sm_io_automode(i32, i32) #1

declare dso_local i64 @tTd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
