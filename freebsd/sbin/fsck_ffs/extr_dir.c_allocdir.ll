; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_allocdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_allocdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirtemplate = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%union.dinode = type { i32 }
%struct.bufarea = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i8* }
%struct.inoinfo = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@IFDIR = common dso_local global i32 0, align 4
@dirhead = common dso_local global %struct.dirtemplate zeroinitializer, align 8
@di_db = common dso_local global i32* null, align 8
@sblock = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@DIRBLKSIZ = common dso_local global i64 0, align 8
@emptydir = common dso_local global %struct.dirtemplate zeroinitializer, align 8
@di_nlink = common dso_local global i32 0, align 4
@UFS_ROOTINO = common dso_local global i64 0, align 8
@DSTATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @allocdir(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %union.dinode*, align 8
  %11 = alloca %struct.bufarea*, align 8
  %12 = alloca %struct.inoinfo*, align 8
  %13 = alloca %struct.dirtemplate*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @IFDIR, align 4
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %15, %16
  %18 = call i64 @allocino(i64 %14, i32 %17)
  store i64 %18, i64* %8, align 8
  store %struct.dirtemplate* @dirhead, %struct.dirtemplate** %13, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.dirtemplate*, %struct.dirtemplate** %13, align 8
  %21 = getelementptr inbounds %struct.dirtemplate, %struct.dirtemplate* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.dirtemplate*, %struct.dirtemplate** %13, align 8
  %24 = getelementptr inbounds %struct.dirtemplate, %struct.dirtemplate* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call %union.dinode* @ginode(i64 %25)
  store %union.dinode* %26, %union.dinode** %10, align 8
  %27 = load %union.dinode*, %union.dinode** %10, align 8
  %28 = load i32*, i32** @di_db, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DIP(%union.dinode* %27, i32 %30)
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sblock, i32 0, i32 0), align 8
  %33 = call %struct.bufarea* @getdirblk(i32 %31, i64 %32)
  store %struct.bufarea* %33, %struct.bufarea** %11, align 8
  %34 = load %struct.bufarea*, %struct.bufarea** %11, align 8
  %35 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @freeino(i64 %39)
  store i64 0, i64* %4, align 8
  br label %149

41:                                               ; preds = %3
  %42 = load %struct.bufarea*, %struct.bufarea** %11, align 8
  %43 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.dirtemplate*, %struct.dirtemplate** %13, align 8
  %47 = call i32 @memmove(i8* %45, %struct.dirtemplate* %46, i32 16)
  %48 = load %struct.bufarea*, %struct.bufarea** %11, align 8
  %49 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* @DIRBLKSIZ, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %66, %41
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.bufarea*, %struct.bufarea** %11, align 8
  %57 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sblock, i32 0, i32 0), align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = icmp ult i8* %55, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @memmove(i8* %64, %struct.dirtemplate* @emptydir, i32 16)
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @DIRBLKSIZ, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %9, align 8
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.bufarea*, %struct.bufarea** %11, align 8
  %72 = call i32 @dirty(%struct.bufarea* %71)
  %73 = load %union.dinode*, %union.dinode** %10, align 8
  %74 = load i32, i32* @di_nlink, align 4
  %75 = call i32 @DIP_SET(%union.dinode* %73, i32 %74, i32 2)
  %76 = load %union.dinode*, %union.dinode** %10, align 8
  %77 = call i32 @inodirty(%union.dinode* %76)
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @UFS_ROOTINO, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %70
  %82 = load %union.dinode*, %union.dinode** %10, align 8
  %83 = load i32, i32* @di_nlink, align 4
  %84 = call i32 @DIP(%union.dinode* %82, i32 %83)
  %85 = load i64, i64* %8, align 8
  %86 = call %struct.TYPE_6__* @inoinfo(i64 %85)
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %union.dinode*, %union.dinode** %10, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @cacheino(%union.dinode* %88, i64 %89)
  %91 = load i64, i64* %8, align 8
  store i64 %91, i64* %4, align 8
  br label %149

92:                                               ; preds = %70
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @INO_IS_DVALID(i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @freeino(i64 %97)
  store i64 0, i64* %4, align 8
  br label %149

99:                                               ; preds = %92
  %100 = load %union.dinode*, %union.dinode** %10, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @cacheino(%union.dinode* %100, i64 %101)
  %103 = load i64, i64* %8, align 8
  %104 = call %struct.inoinfo* @getinoinfo(i64 %103)
  store %struct.inoinfo* %104, %struct.inoinfo** %12, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load %struct.inoinfo*, %struct.inoinfo** %12, align 8
  %107 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load %struct.inoinfo*, %struct.inoinfo** %12, align 8
  %110 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %5, align 8
  %112 = call %struct.TYPE_6__* @inoinfo(i64 %111)
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call %struct.TYPE_6__* @inoinfo(i64 %115)
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i64 %114, i64* %117, align 8
  %118 = load i64, i64* %8, align 8
  %119 = call %struct.TYPE_6__* @inoinfo(i64 %118)
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DSTATE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %99
  %125 = load %union.dinode*, %union.dinode** %10, align 8
  %126 = load i32, i32* @di_nlink, align 4
  %127 = call i32 @DIP(%union.dinode* %125, i32 %126)
  %128 = load i64, i64* %8, align 8
  %129 = call %struct.TYPE_6__* @inoinfo(i64 %128)
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load i64, i64* %5, align 8
  %132 = call %struct.TYPE_6__* @inoinfo(i64 %131)
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %124, %99
  %137 = load i64, i64* %5, align 8
  %138 = call %union.dinode* @ginode(i64 %137)
  store %union.dinode* %138, %union.dinode** %10, align 8
  %139 = load %union.dinode*, %union.dinode** %10, align 8
  %140 = load i32, i32* @di_nlink, align 4
  %141 = load %union.dinode*, %union.dinode** %10, align 8
  %142 = load i32, i32* @di_nlink, align 4
  %143 = call i32 @DIP(%union.dinode* %141, i32 %142)
  %144 = add nsw i32 %143, 1
  %145 = call i32 @DIP_SET(%union.dinode* %139, i32 %140, i32 %144)
  %146 = load %union.dinode*, %union.dinode** %10, align 8
  %147 = call i32 @inodirty(%union.dinode* %146)
  %148 = load i64, i64* %8, align 8
  store i64 %148, i64* %4, align 8
  br label %149

149:                                              ; preds = %136, %96, %81, %38
  %150 = load i64, i64* %4, align 8
  ret i64 %150
}

declare dso_local i64 @allocino(i64, i32) #1

declare dso_local %union.dinode* @ginode(i64) #1

declare dso_local %struct.bufarea* @getdirblk(i32, i64) #1

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @freeino(i64) #1

declare dso_local i32 @memmove(i8*, %struct.dirtemplate*, i32) #1

declare dso_local i32 @dirty(%struct.bufarea*) #1

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i32) #1

declare dso_local i32 @inodirty(%union.dinode*) #1

declare dso_local %struct.TYPE_6__* @inoinfo(i64) #1

declare dso_local i32 @cacheino(%union.dinode*, i64) #1

declare dso_local i32 @INO_IS_DVALID(i64) #1

declare dso_local %struct.inoinfo* @getinoinfo(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
