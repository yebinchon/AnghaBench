; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_ipfsyncd.c_do_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_ipfsyncd.c_do_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFFERLEN = common dso_local global i32 0, align 4
@lfd = common dso_local global i32 0, align 4
@nfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"nfd %d lfd %d maxfd %d\0A\00", align 1
@terminate = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"select error: %m\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"select error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"read(K):%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"read error (k-header): %m\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"read error (k-header): %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"read(N):%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"read error (n-header): %m\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"read error (n-header): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_io() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* @BUFFERLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %1, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %2, align 8
  %16 = load i32, i32* @BUFFERLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %3, align 8
  %19 = call i32 @FD_ZERO(i32* %4)
  %20 = load i32, i32* @lfd, align 4
  %21 = call i32 @FD_SET(i32 %20, i32* %4)
  %22 = load i32, i32* @nfd, align 4
  %23 = call i32 @FD_SET(i32 %22, i32* %4)
  %24 = load i32, i32* @nfd, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @lfd, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %0
  %29 = load i32, i32* @lfd, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %0
  %31 = load i32, i32* @nfd, align 4
  %32 = load i32, i32* @lfd, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i8*, i32, ...) @debug(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %112, %48, %30
  %36 = load i32, i32* @terminate, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %113

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @select(i32 %42, i32* %5, i32* null, i32* null, i32* null)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load i32, i32* @errno, align 4
  switch i32 %47, label %49 [
    i32 130, label %48
  ]

48:                                               ; preds = %46
  br label %35

49:                                               ; preds = %46
  %50 = load i32, i32* @LOG_ERR, align 4
  %51 = call i32 @syslog(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @STRERROR(i32 %52)
  %54 = call i32 (i32, i8*, i32, ...) @debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32 1, i32* %11, align 4
  br label %114

55:                                               ; preds = %39
  %56 = load i32, i32* @lfd, align 4
  %57 = call i64 @FD_ISSET(i32 %56, i32* %5)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %55
  %60 = load i32, i32* @lfd, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %18, i64 %62
  %64 = load i32, i32* @BUFFERLEN, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %64, %65
  %67 = call i32 @read(i32 %60, i8* %63, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (i32, i8*, i32, ...) @debug(i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load i32, i32* @LOG_ERR, align 4
  %74 = call i32 @syslog(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @STRERROR(i32 %75)
  %77 = call i32 (i32, i8*, i32, ...) @debug(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  store i32 1, i32* %11, align 4
  br label %114

78:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @do_kbuff(i32 %79, i8* %18, i32* %9)
  switch i32 %80, label %86 [
    i32 129, label %81
    i32 128, label %82
  ]

81:                                               ; preds = %78
  store i32 1, i32* %11, align 4
  br label %114

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %87

86:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %82
  br label %88

88:                                               ; preds = %87, %55
  %89 = load i32, i32* @nfd, align 4
  %90 = call i64 @FD_ISSET(i32 %89, i32* %5)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load i32, i32* @nfd, align 4
  %94 = trunc i64 %13 to i32
  %95 = call i32 @recv(i32 %93, i8* %15, i32 %94, i32 0)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (i32, i8*, i32, ...) @debug(i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load i32, i32* @LOG_ERR, align 4
  %102 = call i32 @syslog(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %103 = load i32, i32* @errno, align 4
  %104 = call i32 @STRERROR(i32 %103)
  %105 = call i32 (i32, i8*, i32, ...) @debug(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %104)
  store i32 1, i32* %11, align 4
  br label %114

106:                                              ; preds = %92
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @do_packet(i32 %107, i8* %15)
  switch i32 %108, label %110 [
    i32 129, label %109
  ]

109:                                              ; preds = %106
  store i32 1, i32* %11, align 4
  br label %114

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111, %88
  br label %35

113:                                              ; preds = %35
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %113, %109, %100, %81, %72, %49
  %115 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %11, align 4
  switch i32 %116, label %118 [
    i32 0, label %117
    i32 1, label %117
  ]

117:                                              ; preds = %114, %114
  ret void

118:                                              ; preds = %114
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @debug(i32, i8*, i32, ...) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @syslog(i32, i8*) #2

declare dso_local i32 @STRERROR(i32) #2

declare dso_local i64 @FD_ISSET(i32, i32*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @do_kbuff(i32, i8*, i32*) #2

declare dso_local i32 @recv(i32, i8*, i32, i32) #2

declare dso_local i32 @do_packet(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
