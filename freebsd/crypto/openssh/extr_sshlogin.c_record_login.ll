; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshlogin.c_record_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshlogin.c_record_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.logininfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_login(i32 %0, i8* %1, i8* %2, i32 %3, i8* %4, %struct.sockaddr* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.logininfo*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.sockaddr* %5, %struct.sockaddr** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @store_lastlog_message(i8* %16, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call %struct.logininfo* @login_alloc_entry(i32 %19, i8* %20, i8* %21, i8* %22)
  store %struct.logininfo* %23, %struct.logininfo** %15, align 8
  %24 = load %struct.logininfo*, %struct.logininfo** %15, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @login_set_addr(%struct.logininfo* %24, %struct.sockaddr* %25, i32 %26)
  %28 = load %struct.logininfo*, %struct.logininfo** %15, align 8
  %29 = call i32 @login_login(%struct.logininfo* %28)
  %30 = load %struct.logininfo*, %struct.logininfo** %15, align 8
  %31 = call i32 @login_free_entry(%struct.logininfo* %30)
  ret void
}

declare dso_local i32 @store_lastlog_message(i8*, i32) #1

declare dso_local %struct.logininfo* @login_alloc_entry(i32, i8*, i8*, i8*) #1

declare dso_local i32 @login_set_addr(%struct.logininfo*, %struct.sockaddr*, i32) #1

declare dso_local i32 @login_login(%struct.logininfo*) #1

declare dso_local i32 @login_free_entry(%struct.logininfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
