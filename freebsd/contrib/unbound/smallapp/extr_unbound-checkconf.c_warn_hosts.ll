; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_warn_hosts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_warn_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_stub = type { i8*, %struct.config_strlist*, %struct.config_stub* }
%struct.config_strlist = type { i8*, %struct.config_strlist* }
%struct.sockaddr_storage = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [123 x i8] c"unbound-checkconf: warning: %s %s: \22%s\22 is an IP%s address, and when looked up as a host name during use may not resolve.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.config_stub*)* @warn_hosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_hosts(i8* %0, %struct.config_stub* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.config_stub*, align 8
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_stub*, align 8
  %8 = alloca %struct.config_strlist*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.config_stub* %1, %struct.config_stub** %4, align 8
  %9 = load %struct.config_stub*, %struct.config_stub** %4, align 8
  store %struct.config_stub* %9, %struct.config_stub** %7, align 8
  br label %10

10:                                               ; preds = %47, %2
  %11 = load %struct.config_stub*, %struct.config_stub** %7, align 8
  %12 = icmp ne %struct.config_stub* %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = load %struct.config_stub*, %struct.config_stub** %7, align 8
  %15 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %14, i32 0, i32 1
  %16 = load %struct.config_strlist*, %struct.config_strlist** %15, align 8
  store %struct.config_strlist* %16, %struct.config_strlist** %8, align 8
  br label %17

17:                                               ; preds = %42, %13
  %18 = load %struct.config_strlist*, %struct.config_strlist** %8, align 8
  %19 = icmp ne %struct.config_strlist* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load %struct.config_strlist*, %struct.config_strlist** %8, align 8
  %22 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @extstrtoaddr(i8* %23, %struct.sockaddr_storage* %5, i32* %6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load i32, i32* @stderr, align 4
  %28 = load %struct.config_stub*, %struct.config_stub** %7, align 8
  %29 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.config_strlist*, %struct.config_strlist** %8, align 8
  %33 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %5, i32 %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %40 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31, i8* %34, i8* %39)
  br label %41

41:                                               ; preds = %26, %20
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.config_strlist*, %struct.config_strlist** %8, align 8
  %44 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %43, i32 0, i32 1
  %45 = load %struct.config_strlist*, %struct.config_strlist** %44, align 8
  store %struct.config_strlist* %45, %struct.config_strlist** %8, align 8
  br label %17

46:                                               ; preds = %17
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.config_stub*, %struct.config_stub** %7, align 8
  %49 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %48, i32 0, i32 2
  %50 = load %struct.config_stub*, %struct.config_stub** %49, align 8
  store %struct.config_stub* %50, %struct.config_stub** %7, align 8
  br label %10

51:                                               ; preds = %10
  ret void
}

declare dso_local i64 @extstrtoaddr(i8*, %struct.sockaddr_storage*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
