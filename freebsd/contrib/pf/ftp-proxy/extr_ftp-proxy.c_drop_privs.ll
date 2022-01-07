; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_drop_privs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_drop_privs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32 }

@NOPRIV_USER = common dso_local global i32 0, align 4
@CHROOT_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drop_privs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.passwd*, align 8
  %3 = load i32, i32* @NOPRIV_USER, align 4
  %4 = call %struct.passwd* @getpwnam(i32 %3)
  store %struct.passwd* %4, %struct.passwd** %2, align 8
  %5 = load %struct.passwd*, %struct.passwd** %2, align 8
  %6 = icmp eq %struct.passwd* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %47

8:                                                ; preds = %0
  %9 = call i32 (...) @tzset()
  %10 = load i32, i32* @CHROOT_DIR, align 4
  %11 = call i64 @chroot(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %8
  %14 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %13
  %17 = load %struct.passwd*, %struct.passwd** %2, align 8
  %18 = getelementptr inbounds %struct.passwd, %struct.passwd* %17, i32 0, i32 1
  %19 = call i64 @setgroups(i32 1, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %16
  %22 = load %struct.passwd*, %struct.passwd** %2, align 8
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.passwd*, %struct.passwd** %2, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.passwd*, %struct.passwd** %2, align 8
  %29 = getelementptr inbounds %struct.passwd, %struct.passwd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @setresgid(i32 %24, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %21
  %34 = load %struct.passwd*, %struct.passwd** %2, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.passwd*, %struct.passwd** %2, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.passwd*, %struct.passwd** %2, align 8
  %41 = getelementptr inbounds %struct.passwd, %struct.passwd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @setresuid(i32 %36, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33, %21, %16, %13, %8
  store i32 0, i32* %1, align 4
  br label %47

46:                                               ; preds = %33
  store i32 1, i32* %1, align 4
  br label %47

47:                                               ; preds = %46, %45, %7
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local i32 @tzset(...) #1

declare dso_local i64 @chroot(i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i64 @setgroups(i32, i32*) #1

declare dso_local i64 @setresgid(i32, i32, i32) #1

declare dso_local i64 @setresuid(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
