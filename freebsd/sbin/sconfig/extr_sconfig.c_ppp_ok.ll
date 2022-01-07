; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_ppp_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_ppp_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32 }
%struct.stat = type { i32 }

@N_PPP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error opening socket.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ppp0\00", align 1
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"/dev/ptyXX\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"pqrstuvwxyzabcde\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@TIOCSETD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"No PPP discipline in kernel.\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Cannot get pseudo-tty.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ppp_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_ok() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifreq, align 4
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 4
  %12 = load i32, i32* @N_PPP, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @AF_INET, align 4
  %14 = load i32, i32* @SOCK_DGRAM, align 4
  %15 = call i32 @socket(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %92

21:                                               ; preds = %0
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strncpy(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @SIOCGIFFLAGS, align 4
  %27 = bitcast %struct.ifreq* %4 to i32*
  %28 = call i64 @ioctl(i32 %25, i32 %26, i32* %27)
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @close(i32 %31)
  store i32 1, i32* %1, align 4
  br label %92

33:                                               ; preds = %21
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @close(i32 %34)
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %37 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 8
  store i8* %38, i8** %6, align 8
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 9
  store i8* %39, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %86, %33
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 16
  br i1 %42, label %43, label %89

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.3, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %6, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i8*, i8** %7, align 8
  store i8 48, i8* %49, align 1
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %51 = call i64 @stat(i8* %50, %struct.stat* %11)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %86

54:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %82, %54
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 16
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.4, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %7, align 8
  store i8 %62, i8* %63, align 1
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %65 = call i32 @open(i8* %64, i32 2)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %58
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @TIOCSETD, align 4
  %71 = call i64 @ioctl(i32 %69, i32 %70, i32* %10)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 @fprintf(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @close(i32 %76)
  store i32 0, i32* %1, align 4
  br label %92

78:                                               ; preds = %68
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @close(i32 %79)
  store i32 1, i32* %1, align 4
  br label %92

81:                                               ; preds = %58
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %55

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %85, %53
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %40

89:                                               ; preds = %40
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 @fprintf(i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %89, %78, %73, %30, %18
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @open(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
