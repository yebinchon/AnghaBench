; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass4.c_pass4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass4.c_pass4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%union.dinode = type { i32 }
%struct.inodesc = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ADDR = common dso_local global i32 0, align 4
@pass4check = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@got_siginfo = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"%s: phase 4: cyl group %d of %d (%d%%)\0A\00", align 1
@cdevname = common dso_local global i8* null, align 8
@got_sigalarm = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%s p4 %d%%\00", align 1
@inostathead = common dso_local global %struct.TYPE_5__* null, align 8
@UFS_ROOTINO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"UNREF\00", align 1
@cursnapshot = common dso_local global i32 0, align 4
@di_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ZERO LENGTH\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"BAD/DUP\00", align 1
@EEXIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"BAD STATE %d FOR INODE I=%ju\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pass4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.dinode*, align 8
  %3 = alloca %struct.inodesc, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @memset(%struct.inodesc* %3, i32 0, i32 12)
  %8 = load i32, i32* @ADDR, align 4
  %9 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %3, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @pass4check, align 4
  %11 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %118, %0
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sblock, i32 0, i32 0), align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %121

16:                                               ; preds = %12
  %17 = load i64, i64* @got_siginfo, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i8*, i8** @cdevname, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sblock, i32 0, i32 0), align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %23, 100
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sblock, i32 0, i32 0), align 4
  %26 = sdiv i32 %24, %25
  %27 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21, i32 %22, i32 %26)
  store i64 0, i64* @got_siginfo, align 8
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i64, i64* @got_sigalarm, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8*, i8** @cdevname, align 8
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %33, 100
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sblock, i32 0, i32 0), align 4
  %36 = sdiv i32 %34, %35
  %37 = call i32 @setproctitle(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %36)
  store i64 0, i64* @got_sigalarm, align 8
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sblock, i32 0, i32 1), align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %1, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %112, %38
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @inostathead, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %43, %49
  br i1 %50, label %51, label %117

51:                                               ; preds = %42
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @UFS_ROOTINO, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %112

56:                                               ; preds = %51
  %57 = load i32, i32* %1, align 4
  %58 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %3, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %1, align 4
  %60 = call %struct.TYPE_6__* @inoinfo(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %103 [
    i32 129, label %63
    i32 132, label %63
    i32 130, label %72
    i32 134, label %72
    i32 133, label %84
    i32 135, label %86
    i32 131, label %100
    i32 128, label %102
  ]

63:                                               ; preds = %56, %56
  %64 = load i32, i32* %1, align 4
  %65 = call %struct.TYPE_6__* @inoinfo(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @clri(%struct.inodesc* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %111

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %56, %56, %71
  %73 = load i32, i32* %1, align 4
  %74 = call %struct.TYPE_6__* @inoinfo(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* %5, align 4
  %81 = trunc i32 %80 to i16
  %82 = call i32 @adjust(%struct.inodesc* %3, i16 signext %81)
  br label %111

83:                                               ; preds = %72
  br label %111

84:                                               ; preds = %56
  %85 = call i32 @clri(%struct.inodesc* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %111

86:                                               ; preds = %56
  %87 = load i32, i32* @cursnapshot, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %111

90:                                               ; preds = %86
  %91 = load i32, i32* %1, align 4
  %92 = call %union.dinode* @ginode(i32 %91)
  store %union.dinode* %92, %union.dinode** %2, align 8
  %93 = load %union.dinode*, %union.dinode** %2, align 8
  %94 = load i32, i32* @di_size, align 4
  %95 = call i32 @DIP(%union.dinode* %93, i32 %94)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 @clri(%struct.inodesc* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %111

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %56, %99
  %101 = call i32 @clri(%struct.inodesc* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %111

102:                                              ; preds = %56
  br label %111

103:                                              ; preds = %56
  %104 = load i32, i32* @EEXIT, align 4
  %105 = load i32, i32* %1, align 4
  %106 = call %struct.TYPE_6__* @inoinfo(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %1, align 4
  %110 = call i32 @errx(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %102, %100, %97, %89, %84, %83, %79, %69
  br label %112

112:                                              ; preds = %111, %55
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %1, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %1, align 4
  br label %42

117:                                              ; preds = %42
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %12

121:                                              ; preds = %12
  ret void
}

declare dso_local i32 @memset(%struct.inodesc*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @setproctitle(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @inoinfo(i32) #1

declare dso_local i32 @clri(%struct.inodesc*, i8*, i32) #1

declare dso_local i32 @adjust(%struct.inodesc*, i16 signext) #1

declare dso_local %union.dinode* @ginode(i32) #1

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
