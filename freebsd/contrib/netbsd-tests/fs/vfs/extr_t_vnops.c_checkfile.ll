; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_checkfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_checkfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@checkfile.n = internal global i32 1, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot stat file %d (%s)\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"stat mismatch %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.stat*)* @checkfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkfile(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = trunc i64 %9 to i32
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @md(i8* %11, i32 %12, i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @rump_sys_stat(i8* %11, %struct.stat* %7)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @checkfile.n, align 4
  %19 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %18, i8* %11)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.stat*, %struct.stat** %4, align 8
  %22 = call i64 @memcmp(%struct.stat* %7, %struct.stat* %21, i32 4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @checkfile.n, align 4
  %26 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @checkfile.n, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @checkfile.n, align 4
  %30 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %30)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @md(i8*, i32, i8*, i8*) #2

declare dso_local i32 @rump_sys_stat(i8*, %struct.stat*) #2

declare dso_local i32 @atf_tc_fail_errno(i8*, i32, i8*) #2

declare dso_local i64 @memcmp(%struct.stat*, %struct.stat*, i32) #2

declare dso_local i32 @atf_tc_fail(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
