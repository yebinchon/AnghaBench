; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sysinfo.c_linux_release_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sysinfo.c_linux_release_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%s [%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @linux_release_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @linux_release_name(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i8* @release_name_from_uname(i32* %6)
  store i8* %7, i8** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @lsb_release(i32* %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @systemd_release(i32* %13)
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @redhat_release(i32* %19)
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %3, align 8
  %26 = call i8* @suse_release(i32* %25)
  store i8* %26, i8** %5, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @debian_release(i32* %31)
  store i8* %32, i8** %5, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %4, align 8
  store i8* %37, i8** %2, align 8
  br label %48

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %2, align 8
  br label %48

43:                                               ; preds = %38
  %44 = load i32*, i32** %3, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i8* @apr_psprintf(i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %46)
  store i8* %47, i8** %2, align 8
  br label %48

48:                                               ; preds = %43, %41, %36
  %49 = load i8*, i8** %2, align 8
  ret i8* %49
}

declare dso_local i8* @release_name_from_uname(i32*) #1

declare dso_local i8* @lsb_release(i32*) #1

declare dso_local i8* @systemd_release(i32*) #1

declare dso_local i8* @redhat_release(i32*) #1

declare dso_local i8* @suse_release(i32*) #1

declare dso_local i8* @debian_release(i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
