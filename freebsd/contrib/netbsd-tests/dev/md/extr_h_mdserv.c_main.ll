; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/md/extr_h_mdserv.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/dev/md/extr_h_mdserv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_conf = type { i32, i32, i32 }

@MDSIZE = common dso_local global i32 0, align 4
@MD_UMEM_SERVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"rump_daemonize_begin\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"rump_init\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"unix://commsock\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"init server\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@prober = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@MD_SETCONF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_conf, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %2
  %15 = load i32, i32* @MDSIZE, align 4
  %16 = call i32 @calloc(i32 1, i32 %15)
  %17 = getelementptr inbounds %struct.md_conf, %struct.md_conf* %7, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @MDSIZE, align 4
  %19 = getelementptr inbounds %struct.md_conf, %struct.md_conf* %7, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @MD_UMEM_SERVER, align 4
  %21 = getelementptr inbounds %struct.md_conf, %struct.md_conf* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = call i32 (...) @rump_daemonize_begin()
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @REQUIRE(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 (...) @rump_init()
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @REQUIRE(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @rump_init_server(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @REQUIRE(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @O_RDWR, align 4
  %35 = call i32 @rump_sys_open(i8* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %14
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %14
  %40 = load i32, i32* @prober, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @pthread_create(i32* %6, i32* null, i32 %40, i8* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @REQUIRE(i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @pthread_detach(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @MD_SETCONF, align 4
  %51 = call i32 @rump_sys_ioctl(i32 %49, i32 %50, %struct.md_conf* %7)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @rump_daemonize_done(i32 %54)
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %39
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i32 @calloc(i32, i32) #2

declare dso_local i32 @rump_daemonize_begin(...) #2

declare dso_local i32 @REQUIRE(i32, i8*) #2

declare dso_local i32 @rump_init(...) #2

declare dso_local i32 @rump_init_server(i8*) #2

declare dso_local i32 @rump_sys_open(i8*, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i32 @pthread_detach(i32) #2

declare dso_local i32 @rump_sys_ioctl(i32, i32, %struct.md_conf*) #2

declare dso_local i32 @rump_daemonize_done(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
