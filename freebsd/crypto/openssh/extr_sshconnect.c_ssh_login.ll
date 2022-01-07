; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_ssh_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshconnect.c_ssh_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.sockaddr = type { i32 }
%struct.passwd = type { i8* }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"Authenticating to %s:%d as '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssh_login(i32* %0, i8* %1, %struct.sockaddr* %2, i32 %3, %struct.passwd* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.passwd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.passwd* %4, %struct.passwd** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.passwd*, %struct.passwd** %11, align 8
  %17 = getelementptr inbounds %struct.passwd, %struct.passwd* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @xstrdup(i8* %18)
  store i8* %19, i8** %15, align 8
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  br label %26

24:                                               ; preds = %6
  %25 = load i8*, i8** %15, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i8* [ %23, %22 ], [ %25, %24 ]
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @xstrdup(i8* %28)
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @lowercase(i8* %30)
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @ssh_exchange_identification(i32 %32)
  %34 = call i32 (...) @packet_set_nonblocking()
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %14, align 8
  %38 = call i32 @debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36, i8* %37)
  %39 = load i8*, i8** %13, align 8
  %40 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @ssh_kex2(i8* %39, %struct.sockaddr* %40, i32 %41)
  %43 = load i8*, i8** %15, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @ssh_userauth2(i8* %43, i8* %44, i8* %45, i32* %46)
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 @free(i8* %48)
  ret void
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @lowercase(i8*) #1

declare dso_local i32 @ssh_exchange_identification(i32) #1

declare dso_local i32 @packet_set_nonblocking(...) #1

declare dso_local i32 @debug(i8*, i8*, i32, i8*) #1

declare dso_local i32 @ssh_kex2(i8*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ssh_userauth2(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
