; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_droproot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_tcpdump.c_droproot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i64, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: Chroot without dropping root is insecure\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: Couldn't chroot/chdir to '%.64s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: Couldn't change to '%.32s' uid=%lu gid=%lu: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"dropped privs to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: Couldn't find user '%.32s'\0A\00", align 1
@CAPNG_DROP = common dso_local global i32 0, align 4
@CAPNG_EFFECTIVE = common dso_local global i32 0, align 4
@CAPNG_NO_FLAG = common dso_local global i32 0, align 4
@CAPNG_PERMITTED = common dso_local global i32 0, align 4
@CAPNG_SELECT_BOTH = common dso_local global i32 0, align 4
@CAP_SETGID = common dso_local global i32 0, align 4
@CAP_SETUID = common dso_local global i32 0, align 4
@CAP_SYS_CHROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @droproot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @droproot(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.passwd* null, %struct.passwd** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** @program_name, align 8
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call i32 @exit_tcpdump(i32 1)
  br label %16

16:                                               ; preds = %11, %8, %2
  %17 = load i8*, i8** %3, align 8
  %18 = call %struct.passwd* @getpwnam(i8* %17)
  store %struct.passwd* %18, %struct.passwd** %5, align 8
  %19 = load %struct.passwd*, %struct.passwd** %5, align 8
  %20 = icmp ne %struct.passwd* %19, null
  br i1 %20, label %21, label %80

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @chroot(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28, %24
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** @program_name, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i8* @pcap_strerror(i32 %35)
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %34, i8* %36)
  %38 = call i32 @exit_tcpdump(i32 1)
  br label %39

39:                                               ; preds = %31, %28
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.passwd*, %struct.passwd** %5, align 8
  %42 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.passwd*, %struct.passwd** %5, align 8
  %45 = getelementptr inbounds %struct.passwd, %struct.passwd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @initgroups(i32 %43, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %40
  %50 = load %struct.passwd*, %struct.passwd** %5, align 8
  %51 = getelementptr inbounds %struct.passwd, %struct.passwd* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @setgid(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.passwd*, %struct.passwd** %5, align 8
  %57 = getelementptr inbounds %struct.passwd, %struct.passwd* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @setuid(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %55, %49, %40
  %62 = load i32, i32* @stderr, align 4
  %63 = load i8*, i8** @program_name, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = load %struct.passwd*, %struct.passwd** %5, align 8
  %66 = getelementptr inbounds %struct.passwd, %struct.passwd* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.passwd*, %struct.passwd** %5, align 8
  %69 = getelementptr inbounds %struct.passwd, %struct.passwd* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @errno, align 4
  %72 = call i8* @pcap_strerror(i32 %71)
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %63, i8* %64, i64 %67, i64 %70, i8* %72)
  %74 = call i32 @exit_tcpdump(i32 1)
  br label %79

75:                                               ; preds = %55
  %76 = load i32, i32* @stderr, align 4
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %75, %61
  br label %86

80:                                               ; preds = %16
  %81 = load i32, i32* @stderr, align 4
  %82 = load i8*, i8** @program_name, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %82, i8* %83)
  %85 = call i32 @exit_tcpdump(i32 1)
  br label %86

86:                                               ; preds = %80, %79
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @exit_tcpdump(i32) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i64 @chroot(i8*) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i8* @pcap_strerror(i32) #1

declare dso_local i64 @initgroups(i32, i64) #1

declare dso_local i64 @setgid(i64) #1

declare dso_local i64 @setuid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
