; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_logintest.c_dump_logininfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_logintest.c_dump_logininfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logininfo = type { i8*, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [237 x i8] c"struct logininfo %s = {\0A\09progname\09'%s'\0A\09type\09\09%d\0A\09pid\09\09%d\0A\09uid\09\09%d\0A\09line\09\09'%s'\0A\09username\09'%s'\0A\09hostname\09'%s'\0A\09exit\09\09%d\0A\09termination\09%d\0A\09tv_sec\09%d\0A\09tv_usec\09%d\0A\09struct login_netinfo hostaddr {\0A\09\09struct sockaddr sa {\0A\09\09\09family\09%d\0A\09\09}\0A\09}\0A}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_logininfo(%struct.logininfo* %0, i8* %1) #0 {
  %3 = alloca %struct.logininfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.logininfo* %0, %struct.logininfo** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %7 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %10 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %13 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %16 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %19 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %22 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %21, i32 0, i32 5
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %25 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %24, i32 0, i32 6
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %28 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %31 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %34 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %37 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.logininfo*, %struct.logininfo** %3, align 8
  %40 = getelementptr inbounds %struct.logininfo, %struct.logininfo* %39, i32 0, i32 11
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @printf(i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str, i64 0, i64 0), i8* %5, i8* %8, i32 %11, i32 %14, i32 %17, i8* %20, i8* %23, i8* %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %43)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
