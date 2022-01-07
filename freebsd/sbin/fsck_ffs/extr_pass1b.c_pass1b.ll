; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass1b.c_pass1b.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass1b.c_pass1b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%union.dinode = type { i32 }
%struct.inodesc = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@ADDR = common dso_local global i32 0, align 4
@pass1bcheck = common dso_local global i32 0, align 4
@duplist = common dso_local global i32 0, align 4
@duphead = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@got_siginfo = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: phase 1b: cyl group %d of %d (%d%%)\0A\00", align 1
@cdevname = common dso_local global i8* null, align 8
@got_sigalarm = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s p1b %d%%\00", align 1
@UFS_ROOTINO = common dso_local global i64 0, align 8
@USTATE = common dso_local global i64 0, align 8
@STOP = common dso_local global i32 0, align 4
@rerun = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pass1b() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %union.dinode*, align 8
  %4 = alloca %struct.inodesc, align 8
  %5 = alloca i64, align 8
  %6 = call i32 @memset(%struct.inodesc* %4, i32 0, i32 16)
  %7 = load i32, i32* @ADDR, align 4
  %8 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %4, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @pass1bcheck, align 4
  %10 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %4, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @duplist, align 4
  store i32 %11, i32* @duphead, align 4
  store i64 0, i64* %5, align 8
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %77, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %80

16:                                               ; preds = %12
  %17 = load i64, i64* @got_siginfo, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i8*, i8** @cdevname, align 8
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 4
  %23 = load i32, i32* %1, align 4
  %24 = mul nsw i32 %23, 100
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 4
  %26 = sdiv i32 %24, %25
  %27 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21, i32 %22, i32 %26)
  store i64 0, i64* @got_siginfo, align 8
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i64, i64* @got_sigalarm, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8*, i8** @cdevname, align 8
  %33 = load i32, i32* %1, align 4
  %34 = mul nsw i32 %33, 100
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 4
  %36 = sdiv i32 %34, %35
  %37 = call i32 @setproctitle(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %36)
  store i64 0, i64* @got_sigalarm, align 8
  br label %38

38:                                               ; preds = %31, %28
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %71, %38
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 1), align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @UFS_ROOTINO, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %71

48:                                               ; preds = %43
  %49 = load i64, i64* %5, align 8
  %50 = call %union.dinode* @ginode(i64 %49)
  store %union.dinode* %50, %union.dinode** %3, align 8
  %51 = load %union.dinode*, %union.dinode** %3, align 8
  %52 = icmp eq %union.dinode* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %71

54:                                               ; preds = %48
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %4, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call %struct.TYPE_4__* @inoinfo(i64 %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @USTATE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %union.dinode*, %union.dinode** %3, align 8
  %65 = call i32 @ckinode(%union.dinode* %64, %struct.inodesc* %4)
  %66 = load i32, i32* @STOP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* @rerun, align 4
  br label %80

70:                                               ; preds = %63, %54
  br label %71

71:                                               ; preds = %70, %53, %47
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %2, align 4
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %5, align 8
  br label %39

76:                                               ; preds = %39
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %1, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %1, align 4
  br label %12

80:                                               ; preds = %69, %12
  ret void
}

declare dso_local i32 @memset(%struct.inodesc*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @setproctitle(i8*, i8*, i32) #1

declare dso_local %union.dinode* @ginode(i64) #1

declare dso_local %struct.TYPE_4__* @inoinfo(i64) #1

declare dso_local i32 @ckinode(%union.dinode*, %struct.inodesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
