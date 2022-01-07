; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_jail.c_bectl_jail_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_jail.c_bectl_jail_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i8*, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unable to remove jail\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@MNT_NOWAIT = common dso_local global i32 0, align 4
@MNTTYPE_ZFS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"bectl jail: unable to unmount filesystem %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @bectl_jail_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bectl_jail_cleanup(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.statfs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @jail_remove(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %69

19:                                               ; preds = %12, %2
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = call i64 @strnlen(i8* %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* @MNT_NOWAIT, align 4
  %24 = call i64 @getmntinfo(%struct.statfs** %6, i32 %23)
  store i64 %24, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %65, %19
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.statfs*, %struct.statfs** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.statfs, %struct.statfs* %31, i64 %32
  %34 = getelementptr inbounds %struct.statfs, %struct.statfs* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @strncmp(i8* %30, i8* %35, i64 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %29
  %40 = load %struct.statfs*, %struct.statfs** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.statfs, %struct.statfs* %40, i64 %41
  %43 = getelementptr inbounds %struct.statfs, %struct.statfs* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MNTTYPE_ZFS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load %struct.statfs*, %struct.statfs** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.statfs, %struct.statfs* %48, i64 %49
  %51 = getelementptr inbounds %struct.statfs, %struct.statfs* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @unmount(i8* %52, i32 0)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load i32, i32* @stderr, align 4
  %57 = load %struct.statfs*, %struct.statfs** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.statfs, %struct.statfs* %57, i64 %58
  %60 = getelementptr inbounds %struct.statfs, %struct.statfs* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i32 1, i32* %3, align 4
  br label %69

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %39, %29
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %25

68:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %55, %16
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @jail_remove(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @strnlen(i8*, i32) #1

declare dso_local i64 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @unmount(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
