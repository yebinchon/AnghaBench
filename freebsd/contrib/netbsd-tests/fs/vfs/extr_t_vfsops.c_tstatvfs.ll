; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vfsops.c_tstatvfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vfsops.c_tstatvfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statvfs = type { i64, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"X-fs.mntname\00", align 1
@ST_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"statvfs\00", align 1
@MAXNAMLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @tstatvfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tstatvfs(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.statvfs, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @atf_tc_get_md_var(i32* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @ST_WAIT, align 4
  %11 = call i32 @rump_sys_statvfs1(i8* %9, %struct.statvfs* %6, i32 %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAXNAMLEN, align 8
  %23 = icmp sle i64 %21, %22
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @ATF_REQUIRE(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @FSTYPE_PUFFS(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @FSTYPE_P2K_FFS(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %6, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @ATF_REQUIRE_STREQ(i32 %37, i8* %38)
  br label %40

40:                                               ; preds = %35, %31, %24
  %41 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @ATF_REQUIRE_STREQ(i32 %42, i8* %43)
  ret void
}

declare dso_local i8* @atf_tc_get_md_var(i32*, i8*) #1

declare dso_local i32 @rump_sys_statvfs1(i8*, %struct.statvfs*, i32) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @FSTYPE_PUFFS(i32*) #1

declare dso_local i64 @FSTYPE_P2K_FFS(i32*) #1

declare dso_local i32 @ATF_REQUIRE_STREQ(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
