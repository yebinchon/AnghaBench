; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_newuname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_newuname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_newuname_args = type { i32 }
%struct.l_new_utsname = type { i8*, i8*, i8*, i8*, i32, i32 }

@LINUX_MAX_UTSNAME = common dso_local global i32 0, align 4
@version = common dso_local global i8* null, align 8
@linux_kplatform = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_newuname(%struct.thread* %0, %struct.linux_newuname_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_newuname_args*, align 8
  %5 = alloca %struct.l_new_utsname, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_newuname_args* %1, %struct.linux_newuname_args** %4, align 8
  %10 = load i32, i32* @LINUX_MAX_UTSNAME, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @LINUX_MAX_UTSNAME, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = call i32 @linux_get_osname(%struct.thread* %17, i8* %13)
  %19 = load %struct.thread*, %struct.thread** %3, align 8
  %20 = call i32 @linux_get_osrelease(%struct.thread* %19, i8* %16)
  %21 = call i32 @bzero(%struct.l_new_utsname* %5, i32 40)
  %22 = getelementptr inbounds %struct.l_new_utsname, %struct.l_new_utsname* %5, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @LINUX_MAX_UTSNAME, align 4
  %25 = call i32 @strlcpy(i8* %23, i8* %13, i32 %24)
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.l_new_utsname, %struct.l_new_utsname* %5, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @LINUX_MAX_UTSNAME, align 4
  %32 = call i32 @getcredhostname(i32 %28, i32 %30, i32 %31)
  %33 = load %struct.thread*, %struct.thread** %3, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.l_new_utsname, %struct.l_new_utsname* %5, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @LINUX_MAX_UTSNAME, align 4
  %39 = call i32 @getcreddomainname(i32 %35, i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.l_new_utsname, %struct.l_new_utsname* %5, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @LINUX_MAX_UTSNAME, align 4
  %43 = call i32 @strlcpy(i8* %41, i8* %16, i32 %42)
  %44 = getelementptr inbounds %struct.l_new_utsname, %struct.l_new_utsname* %5, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** @version, align 8
  %47 = load i32, i32* @LINUX_MAX_UTSNAME, align 4
  %48 = call i32 @strlcpy(i8* %45, i8* %46, i32 %47)
  %49 = getelementptr inbounds %struct.l_new_utsname, %struct.l_new_utsname* %5, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %64, %2
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i8*, i8** %9, align 8
  store i8 0, i8* %62, align 1
  br label %67

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %9, align 8
  br label %51

67:                                               ; preds = %61, %51
  %68 = getelementptr inbounds %struct.l_new_utsname, %struct.l_new_utsname* %5, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** @linux_kplatform, align 8
  %71 = load i32, i32* @LINUX_MAX_UTSNAME, align 4
  %72 = call i32 @strlcpy(i8* %69, i8* %70, i32 %71)
  %73 = load %struct.linux_newuname_args*, %struct.linux_newuname_args** %4, align 8
  %74 = getelementptr inbounds %struct.linux_newuname_args, %struct.linux_newuname_args* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @copyout(%struct.l_new_utsname* %5, i32 %75, i32 40)
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @linux_get_osname(%struct.thread*, i8*) #2

declare dso_local i32 @linux_get_osrelease(%struct.thread*, i8*) #2

declare dso_local i32 @bzero(%struct.l_new_utsname*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @getcredhostname(i32, i32, i32) #2

declare dso_local i32 @getcreddomainname(i32, i32, i32) #2

declare dso_local i32 @copyout(%struct.l_new_utsname*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
