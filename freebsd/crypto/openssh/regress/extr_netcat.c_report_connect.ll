; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_netcat.c_report_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_netcat.c_report_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@nflag = common dso_local global i64 0, align 8
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@EAI_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"getnameinfo\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"getnameinfo: %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Connection from %s %s received!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_connect(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @NI_MAXHOST, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @NI_MAXSERV, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load i32, i32* @NI_NUMERICSERV, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* @nflag, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @NI_NUMERICHOST, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = trunc i64 %11 to i32
  %28 = trunc i64 %15 to i32
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @getnameinfo(%struct.sockaddr* %25, i32 %26, i8* %13, i32 %27, i8* %16, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @EAI_SYSTEM, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @gai_strerror(i32 %39)
  %41 = call i32 @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %36
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %13, i8* %16)
  %46 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @errx(i32, i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
