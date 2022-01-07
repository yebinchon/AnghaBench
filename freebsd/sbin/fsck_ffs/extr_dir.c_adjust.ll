; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.inodesc = type { i64 }
%union.dinode = type { i32 }

@di_nlink = common dso_local global i32 0, align 4
@resolved = common dso_local global i32 0, align 4
@preen = common dso_local global i64 0, align 8
@bkgrdflag = common dso_local global i64 0, align 8
@usedsoftdep = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"UNREF\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LINK COUNT %s\00", align 1
@lfdir = common dso_local global i64 0, align 8
@lfname = common dso_local global i8* null, align 8
@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c" COUNT %d SHOULD BE %d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"LINK COUNT INCREASING\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c" (ADJUSTED)\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ADJUST\00", align 1
@cmd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@debug = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"adjrefcnt ino %ld amt %lld\0A\00", align 1
@adjrefcnt = common dso_local global i32 0, align 4
@MIBSIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"ADJUST INODE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adjust(%struct.inodesc* %0, i32 %1) #0 {
  %3 = alloca %struct.inodesc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.dinode*, align 8
  %6 = alloca i32, align 4
  store %struct.inodesc* %0, %struct.inodesc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %8 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call %union.dinode* @ginode(i64 %9)
  store %union.dinode* %10, %union.dinode** %5, align 8
  %11 = load %union.dinode*, %union.dinode** %5, align 8
  %12 = load i32, i32* @di_nlink, align 4
  %13 = call i32 @DIP(%union.dinode* %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = load i32, i32* @resolved, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i64, i64* @preen, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @bkgrdflag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22, %19
  %26 = load i64, i64* @usedsoftdep, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %30 = call i32 @clri(%struct.inodesc* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %149

31:                                               ; preds = %25, %22, %16
  %32 = load i32, i32* @resolved, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %34 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @linkup(i64 %35, i32 0, i32* null)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* @resolved, align 4
  %40 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %41 = call i32 @clri(%struct.inodesc* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %149

42:                                               ; preds = %31
  %43 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %44 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call %union.dinode* @ginode(i64 %45)
  store %union.dinode* %46, %union.dinode** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %149

53:                                               ; preds = %50
  %54 = load i64, i64* @lfdir, align 8
  %55 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %56 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i8*, i8** @lfname, align 8
  br label %71

61:                                               ; preds = %53
  %62 = load %union.dinode*, %union.dinode** %5, align 8
  %63 = load i32, i32* @di_mode, align 4
  %64 = call i32 @DIP(%union.dinode* %62, i32 %63)
  %65 = load i32, i32* @IFMT, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @IFDIR, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  br label %71

71:                                               ; preds = %61, %59
  %72 = phi i8* [ %60, %59 ], [ %70, %61 ]
  %73 = call i32 @pwarn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %75 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %union.dinode*, %union.dinode** %5, align 8
  %78 = call i32 @prtinode(i64 %76, %union.dinode* %77)
  %79 = load %union.dinode*, %union.dinode** %5, align 8
  %80 = load i32, i32* @di_nlink, align 4
  %81 = call i32 @DIP(%union.dinode* %79, i32 %80)
  %82 = load %union.dinode*, %union.dinode** %5, align 8
  %83 = load i32, i32* @di_nlink, align 4
  %84 = call i32 @DIP(%union.dinode* %82, i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %86)
  %88 = load i64, i64* @preen, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %71
  %91 = load i64, i64* @usedsoftdep, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90, %71
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %98 = call i32 @pfatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i64, i64* @preen, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %99
  br label %105

105:                                              ; preds = %104, %90
  %106 = load i64, i64* @preen, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = call i32 @reply(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %148

111:                                              ; preds = %108, %105
  %112 = load i64, i64* @bkgrdflag, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load %union.dinode*, %union.dinode** %5, align 8
  %116 = load i32, i32* @di_nlink, align 4
  %117 = load %union.dinode*, %union.dinode** %5, align 8
  %118 = load i32, i32* @di_nlink, align 4
  %119 = call i32 @DIP(%union.dinode* %117, i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = sub nsw i32 %119, %120
  %122 = call i32 @DIP_SET(%union.dinode* %115, i32 %116, i32 %121)
  %123 = load %union.dinode*, %union.dinode** %5, align 8
  %124 = call i32 @inodirty(%union.dinode* %123)
  br label %147

125:                                              ; preds = %111
  %126 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %127 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cmd, i32 0, i32 0), align 8
  %129 = load i32, i32* %4, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cmd, i32 0, i32 1), align 8
  %131 = load i64, i64* @debug, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cmd, i32 0, i32 0), align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cmd, i32 0, i32 1), align 8
  %136 = sext i32 %135 to i64
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64 %134, i64 %136)
  br label %138

138:                                              ; preds = %133, %125
  %139 = load i32, i32* @adjrefcnt, align 4
  %140 = load i32, i32* @MIBSIZE, align 4
  %141 = call i32 @sysctl(i32 %139, i32 %140, i32 0, i32 0, %struct.TYPE_3__* @cmd, i32 16)
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cmd, i32 0, i32 0), align 8
  %145 = call i32 @rwerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64 %144)
  br label %146

146:                                              ; preds = %143, %138
  br label %147

147:                                              ; preds = %146, %114
  br label %148

148:                                              ; preds = %147, %108
  br label %149

149:                                              ; preds = %28, %38, %148, %50
  ret void
}

declare dso_local %union.dinode* @ginode(i64) #1

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @clri(%struct.inodesc*, i8*, i32) #1

declare dso_local i64 @linkup(i64, i32, i32*) #1

declare dso_local i32 @pwarn(i8*, i8*) #1

declare dso_local i32 @prtinode(i64, %union.dinode*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pfatal(i8*) #1

declare dso_local i32 @reply(i8*) #1

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i32) #1

declare dso_local i32 @inodirty(%union.dinode*) #1

declare dso_local i32 @sysctl(i32, i32, i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @rwerror(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
