; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_allocino.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_allocino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%union.dinode = type { i32 }
%struct.bufarea = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.cg* }
%struct.cg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@UFS_ROOTINO = common dso_local global i64 0, align 8
@USTATE = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@sblock = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@IFMT = common dso_local global i32 0, align 4
@DSTATE = common dso_local global i64 0, align 8
@FSTATE = common dso_local global i64 0, align 8
@di_db = common dso_local global i32* null, align 8
@di_mode = common dso_local global i32 0, align 4
@di_flags = common dso_local global i32 0, align 4
@di_atime = common dso_local global i32 0, align 4
@di_ctime = common dso_local global i32 0, align 4
@di_mtime = common dso_local global i32 0, align 4
@di_mtimensec = common dso_local global i32 0, align 4
@di_ctimensec = common dso_local global i32 0, align 4
@di_atimensec = common dso_local global i32 0, align 4
@di_size = common dso_local global i32 0, align 4
@di_blocks = common dso_local global i32 0, align 4
@n_files = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @allocino(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %union.dinode*, align 8
  %8 = alloca %struct.bufarea*, align 8
  %9 = alloca %struct.cg*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @UFS_ROOTINO, align 8
  store i64 %14, i64* %4, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = call %struct.TYPE_9__* @inoinfo(i64 %16)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USTATE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i64 0, i64* %3, align 8
  br label %166

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %39, %24
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @maxino, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = call %struct.TYPE_9__* @inoinfo(i64 %31)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @USTATE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %42

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %26

42:                                               ; preds = %37, %26
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @maxino, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i64 0, i64* %3, align 8
  br label %166

47:                                               ; preds = %42
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @ino_to_cg(%struct.TYPE_8__* @sblock, i64 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call %struct.bufarea* @cglookup(i32 %50)
  store %struct.bufarea* %51, %struct.bufarea** %8, align 8
  %52 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %53 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.cg*, %struct.cg** %54, align 8
  store %struct.cg* %55, %struct.cg** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %58 = call i32 @check_cgmagic(i32 %56, %struct.bufarea* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %47
  store i64 0, i64* %3, align 8
  br label %166

61:                                               ; preds = %47
  %62 = load %struct.cg*, %struct.cg** %9, align 8
  %63 = call i32 @cg_inosused(%struct.cg* %62)
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %66 = srem i64 %64, %65
  %67 = call i32 @setbit(i32 %63, i64 %66)
  %68 = load %struct.cg*, %struct.cg** %9, align 8
  %69 = getelementptr inbounds %struct.cg, %struct.cg* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @IFMT, align 4
  %75 = and i32 %73, %74
  switch i32 %75, label %91 [
    i32 130, label %76
    i32 128, label %86
    i32 129, label %86
  ]

76:                                               ; preds = %61
  %77 = load i64, i64* @DSTATE, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call %struct.TYPE_9__* @inoinfo(i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = load %struct.cg*, %struct.cg** %9, align 8
  %82 = getelementptr inbounds %struct.cg, %struct.cg* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %92

86:                                               ; preds = %61, %61
  %87 = load i64, i64* @FSTATE, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call %struct.TYPE_9__* @inoinfo(i64 %88)
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  br label %92

91:                                               ; preds = %61
  store i64 0, i64* %3, align 8
  br label %166

92:                                               ; preds = %86, %76
  %93 = load %struct.bufarea*, %struct.bufarea** %8, align 8
  %94 = call i32 @cgdirty(%struct.bufarea* %93)
  %95 = load i64, i64* %6, align 8
  %96 = call %union.dinode* @ginode(i64 %95)
  store %union.dinode* %96, %union.dinode** %7, align 8
  %97 = load %union.dinode*, %union.dinode** %7, align 8
  %98 = load i32*, i32** @di_db, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @allocblk(i64 1)
  %102 = call i32 @DIP_SET(%union.dinode* %97, i32 %100, i32 %101)
  %103 = load %union.dinode*, %union.dinode** %7, align 8
  %104 = load i32*, i32** @di_db, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @DIP(%union.dinode* %103, i32 %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %92
  %110 = load i64, i64* @USTATE, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call %struct.TYPE_9__* @inoinfo(i64 %111)
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  store i64 0, i64* %3, align 8
  br label %166

114:                                              ; preds = %92
  %115 = load %union.dinode*, %union.dinode** %7, align 8
  %116 = load i32, i32* @di_mode, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @DIP_SET(%union.dinode* %115, i32 %116, i32 %117)
  %119 = load %union.dinode*, %union.dinode** %7, align 8
  %120 = load i32, i32* @di_flags, align 4
  %121 = call i32 @DIP_SET(%union.dinode* %119, i32 %120, i32 0)
  %122 = load %union.dinode*, %union.dinode** %7, align 8
  %123 = load i32, i32* @di_atime, align 4
  %124 = call i32 @time(i32* null)
  %125 = call i32 @DIP_SET(%union.dinode* %122, i32 %123, i32 %124)
  %126 = load %union.dinode*, %union.dinode** %7, align 8
  %127 = load i32, i32* @di_ctime, align 4
  %128 = load %union.dinode*, %union.dinode** %7, align 8
  %129 = load i32, i32* @di_atime, align 4
  %130 = call i32 @DIP(%union.dinode* %128, i32 %129)
  %131 = call i32 @DIP_SET(%union.dinode* %126, i32 %127, i32 %130)
  %132 = load %union.dinode*, %union.dinode** %7, align 8
  %133 = load i32, i32* @di_mtime, align 4
  %134 = load %union.dinode*, %union.dinode** %7, align 8
  %135 = load i32, i32* @di_ctime, align 4
  %136 = call i32 @DIP(%union.dinode* %134, i32 %135)
  %137 = call i32 @DIP_SET(%union.dinode* %132, i32 %133, i32 %136)
  %138 = load %union.dinode*, %union.dinode** %7, align 8
  %139 = load i32, i32* @di_mtimensec, align 4
  %140 = call i32 @DIP_SET(%union.dinode* %138, i32 %139, i32 0)
  %141 = load %union.dinode*, %union.dinode** %7, align 8
  %142 = load i32, i32* @di_ctimensec, align 4
  %143 = call i32 @DIP_SET(%union.dinode* %141, i32 %142, i32 0)
  %144 = load %union.dinode*, %union.dinode** %7, align 8
  %145 = load i32, i32* @di_atimensec, align 4
  %146 = call i32 @DIP_SET(%union.dinode* %144, i32 %145, i32 0)
  %147 = load %union.dinode*, %union.dinode** %7, align 8
  %148 = load i32, i32* @di_size, align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 1), align 8
  %150 = call i32 @DIP_SET(%union.dinode* %147, i32 %148, i32 %149)
  %151 = load %union.dinode*, %union.dinode** %7, align 8
  %152 = load i32, i32* @di_blocks, align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 1), align 8
  %154 = call i32 @btodb(i32 %153)
  %155 = call i32 @DIP_SET(%union.dinode* %151, i32 %152, i32 %154)
  %156 = load i32, i32* @n_files, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* @n_files, align 4
  %158 = load %union.dinode*, %union.dinode** %7, align 8
  %159 = call i32 @inodirty(%union.dinode* %158)
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @IFTODT(i32 %160)
  %162 = load i64, i64* %6, align 8
  %163 = call %struct.TYPE_9__* @inoinfo(i64 %162)
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 8
  %165 = load i64, i64* %6, align 8
  store i64 %165, i64* %3, align 8
  br label %166

166:                                              ; preds = %114, %109, %91, %60, %46, %22
  %167 = load i64, i64* %3, align 8
  ret i64 %167
}

declare dso_local %struct.TYPE_9__* @inoinfo(i64) #1

declare dso_local i32 @ino_to_cg(%struct.TYPE_8__*, i64) #1

declare dso_local %struct.bufarea* @cglookup(i32) #1

declare dso_local i32 @check_cgmagic(i32, %struct.bufarea*) #1

declare dso_local i32 @setbit(i32, i64) #1

declare dso_local i32 @cg_inosused(%struct.cg*) #1

declare dso_local i32 @cgdirty(%struct.bufarea*) #1

declare dso_local %union.dinode* @ginode(i64) #1

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i32) #1

declare dso_local i32 @allocblk(i64) #1

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @btodb(i32) #1

declare dso_local i32 @inodirty(%union.dinode*) #1

declare dso_local i32 @IFTODT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
