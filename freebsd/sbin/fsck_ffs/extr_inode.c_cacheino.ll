; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_cacheino.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_cacheino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inoinfo = type { i64, i64, i64, i32, i8**, i8*, %struct.inoinfo* }
%union.dinode = type { i32 }

@di_size = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@UFS_NDADDR = common dso_local global i32 0, align 4
@UFS_NIADDR = common dso_local global i32 0, align 4
@EEXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot increase directory list\00", align 1
@inphead = common dso_local global %struct.inoinfo** null, align 8
@dirhash = common dso_local global i64 0, align 8
@UFS_ROOTINO = common dso_local global i64 0, align 8
@di_db = common dso_local global i32* null, align 8
@di_ib = common dso_local global i32* null, align 8
@inplast = common dso_local global i64 0, align 8
@listmax = common dso_local global i64 0, align 8
@inpsort = common dso_local global %struct.inoinfo** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cacheino(%union.dinode* %0, i64 %1) #0 {
  %3 = alloca %union.dinode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inoinfo*, align 8
  %6 = alloca %struct.inoinfo**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %union.dinode* %0, %union.dinode** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %union.dinode*, %union.dinode** %3, align 8
  %10 = load i32, i32* @di_size, align 4
  %11 = call i8* @DIP(%union.dinode* %9, i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 4
  %13 = call i32 @howmany(i8* %11, i32 %12)
  %14 = load i32, i32* @UFS_NDADDR, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @UFS_NDADDR, align 4
  %18 = load i32, i32* @UFS_NIADDR, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %8, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load %union.dinode*, %union.dinode** %3, align 8
  %22 = load i32, i32* @di_size, align 4
  %23 = call i8* @DIP(%union.dinode* %21, i32 %22)
  %24 = icmp ugt i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %union.dinode*, %union.dinode** %3, align 8
  %27 = load i32, i32* @di_size, align 4
  %28 = call i8* @DIP(%union.dinode* %26, i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 4
  %30 = call i32 @howmany(i8* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  br label %32

31:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %25
  br label %33

33:                                               ; preds = %32, %16
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = add i64 56, %37
  %39 = trunc i64 %38 to i32
  %40 = call i64 @Malloc(i32 %39)
  %41 = inttoptr i64 %40 to %struct.inoinfo*
  store %struct.inoinfo* %41, %struct.inoinfo** %5, align 8
  %42 = load %struct.inoinfo*, %struct.inoinfo** %5, align 8
  %43 = icmp eq %struct.inoinfo* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @EEXIT, align 4
  %46 = call i32 @errx(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %33
  %48 = load %struct.inoinfo**, %struct.inoinfo*** @inphead, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @dirhash, align 8
  %51 = urem i64 %49, %50
  %52 = getelementptr inbounds %struct.inoinfo*, %struct.inoinfo** %48, i64 %51
  store %struct.inoinfo** %52, %struct.inoinfo*** %6, align 8
  %53 = load %struct.inoinfo**, %struct.inoinfo*** %6, align 8
  %54 = load %struct.inoinfo*, %struct.inoinfo** %53, align 8
  %55 = load %struct.inoinfo*, %struct.inoinfo** %5, align 8
  %56 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %55, i32 0, i32 6
  store %struct.inoinfo* %54, %struct.inoinfo** %56, align 8
  %57 = load %struct.inoinfo*, %struct.inoinfo** %5, align 8
  %58 = load %struct.inoinfo**, %struct.inoinfo*** %6, align 8
  store %struct.inoinfo* %57, %struct.inoinfo** %58, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @UFS_ROOTINO, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i64, i64* @UFS_ROOTINO, align 8
  br label %65

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i64 [ %63, %62 ], [ 0, %64 ]
  %67 = load %struct.inoinfo*, %struct.inoinfo** %5, align 8
  %68 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.inoinfo*, %struct.inoinfo** %5, align 8
  %70 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load i64, i64* %4, align 8
  %72 = load %struct.inoinfo*, %struct.inoinfo** %5, align 8
  %73 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %union.dinode*, %union.dinode** %3, align 8
  %75 = load i32, i32* @di_size, align 4
  %76 = call i8* @DIP(%union.dinode* %74, i32 %75)
  %77 = load %struct.inoinfo*, %struct.inoinfo** %5, align 8
  %78 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.inoinfo*, %struct.inoinfo** %5, align 8
  %81 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %102, %65
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @UFS_NDADDR, align 4
  %86 = call i32 @MIN(i32 %84, i32 %85)
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load %union.dinode*, %union.dinode** %3, align 8
  %90 = load i32*, i32** @di_db, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @DIP(%union.dinode* %89, i32 %94)
  %96 = load %struct.inoinfo*, %struct.inoinfo** %5, align 8
  %97 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %96, i32 0, i32 4
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8* %95, i8** %101, align 8
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %82

105:                                              ; preds = %82
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @UFS_NDADDR, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %130, %109
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @UFS_NIADDR, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %110
  %115 = load %union.dinode*, %union.dinode** %3, align 8
  %116 = load i32*, i32** @di_ib, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @DIP(%union.dinode* %115, i32 %120)
  %122 = load %struct.inoinfo*, %struct.inoinfo** %5, align 8
  %123 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %122, i32 0, i32 4
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* @UFS_NDADDR, align 4
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %124, i64 %128
  store i8* %121, i8** %129, align 8
  br label %130

130:                                              ; preds = %114
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %110

133:                                              ; preds = %110
  br label %134

134:                                              ; preds = %133, %105
  %135 = load i64, i64* @inplast, align 8
  %136 = load i64, i64* @listmax, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = load i64, i64* @listmax, align 8
  %140 = add nsw i64 %139, 100
  store i64 %140, i64* @listmax, align 8
  %141 = load %struct.inoinfo**, %struct.inoinfo*** @inpsort, align 8
  %142 = bitcast %struct.inoinfo** %141 to i8*
  %143 = load i64, i64* @listmax, align 8
  %144 = call i64 @reallocarray(i8* %142, i64 %143, i32 8)
  %145 = inttoptr i64 %144 to %struct.inoinfo**
  store %struct.inoinfo** %145, %struct.inoinfo*** @inpsort, align 8
  %146 = load %struct.inoinfo**, %struct.inoinfo*** @inpsort, align 8
  %147 = icmp eq %struct.inoinfo** %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %138
  %149 = load i32, i32* @EEXIT, align 4
  %150 = call i32 @errx(i32 %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %138
  br label %152

152:                                              ; preds = %151, %134
  %153 = load %struct.inoinfo*, %struct.inoinfo** %5, align 8
  %154 = load %struct.inoinfo**, %struct.inoinfo*** @inpsort, align 8
  %155 = load i64, i64* @inplast, align 8
  %156 = add nsw i64 %155, 1
  store i64 %156, i64* @inplast, align 8
  %157 = getelementptr inbounds %struct.inoinfo*, %struct.inoinfo** %154, i64 %155
  store %struct.inoinfo* %153, %struct.inoinfo** %157, align 8
  ret void
}

declare dso_local i32 @howmany(i8*, i32) #1

declare dso_local i8* @DIP(%union.dinode*, i32) #1

declare dso_local i64 @Malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @reallocarray(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
