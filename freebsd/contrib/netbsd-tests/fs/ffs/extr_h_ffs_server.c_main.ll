; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_h_ffs_server.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_h_ffs_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_args = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"bl\00", align 1
@background = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"rump daemonize: %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"rump init failed\00", align 1
@FSTEST_MNTNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"mount point create\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"/diskdev\00", align 1
@RUMP_ETFS_BLK = common dso_local global i32 0, align 4
@MOUNT_FFS = common dso_local global i32 0, align 4
@MNT_LOG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"mount ffs\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"rump server init failed\00", align 1
@RUMP_DAEMONIZE_SUCCESS = common dso_local global i32 0, align 4
@sigsem = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigreboot = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ufs_args, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %23, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %11, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %21 [
    i32 98, label %19
    i32 108, label %20
  ]

19:                                               ; preds = %17
  store i32 1, i32* @background, align 4
  br label %23

20:                                               ; preds = %17
  store i32 1, i32* %10, align 4
  br label %23

21:                                               ; preds = %17
  %22 = call i32 (...) @usage()
  br label %23

23:                                               ; preds = %21, %20, %19
  br label %12

24:                                               ; preds = %12
  %25 = load i64, i64* @optind, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i64, i64* @optind, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 %30
  store i8** %32, i8*** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %24
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %8, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %9, align 8
  %44 = load i32, i32* @background, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = call i32 (...) @rump_daemonize_begin()
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %37
  %56 = call i32 (...) @rump_init()
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* @FSTEST_MNTNAME, align 4
  %64 = call i32 @rump_sys_mkdir(i32 %63, i32 511)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* @RUMP_ETFS_BLK, align 4
  %72 = call i32 @rump_pub_etfs_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %70, i32 %71)
  %73 = call i32 @__UNCONST(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %74 = getelementptr inbounds %struct.ufs_args, %struct.ufs_args* %7, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @MOUNT_FFS, align 4
  %76 = load i32, i32* @FSTEST_MNTNAME, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @MNT_LOG, align 4
  br label %82

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = call i32 @rump_sys_mount(i32 %75, i32 %76, i32 %83, %struct.ufs_args* %7, i32 4)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @errno, align 4
  %88 = call i32 @die(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @rump_init_server(i8* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i32, i32* @background, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @RUMP_DAEMONIZE_SUCCESS, align 4
  %102 = call i32 @rump_daemonize_done(i32 %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = call i32 @sem_init(i32* @sigsem, i32 0, i32 0)
  %105 = load i32, i32* @SIGTERM, align 4
  %106 = load i32, i32* @sigreboot, align 4
  %107 = call i32 @signal(i32 %105, i32 %106)
  %108 = load i32, i32* @SIGINT, align 4
  %109 = load i32, i32* @sigreboot, align 4
  %110 = call i32 @signal(i32 %108, i32 %109)
  %111 = call i32 @sem_wait(i32* @sigsem)
  %112 = call i32 @rump_sys_reboot(i32 0, i32* null)
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @rump_daemonize_begin(...) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @rump_init(...) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @rump_sys_mkdir(i32, i32) #1

declare dso_local i32 @rump_pub_etfs_register(i8*, i8*, i32) #1

declare dso_local i32 @__UNCONST(i8*) #1

declare dso_local i32 @rump_sys_mount(i32, i32, i32, %struct.ufs_args*, i32) #1

declare dso_local i32 @rump_init_server(i8*) #1

declare dso_local i32 @rump_daemonize_done(i32) #1

declare dso_local i32 @sem_init(i32*, i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @rump_sys_reboot(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
