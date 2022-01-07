; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vfsops.c_dtfs_domount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vfsops.c_dtfs_domount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.puffs_usermount*, i8*, i32)*, i32, i32 }
%struct.puffs_usermount = type { i32 }
%struct.dtfs_mount = type { i32, i32, i32, i64 }
%struct.dtfs_file = type { i32* }
%struct.puffs_node = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"puffs_newpnode\00", align 1
@VDIR = common dso_local global i32 0, align 4
@NTYPES = common dso_local global i32 0, align 4
@rtypes = common dso_local global %struct.TYPE_2__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to parse \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"no maching type for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_domount(%struct.puffs_usermount* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.puffs_usermount*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dtfs_mount*, align 8
  %7 = alloca %struct.dtfs_file*, align 8
  %8 = alloca %struct.puffs_node*, align 8
  %9 = alloca i32, align 4
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.puffs_usermount*, %struct.puffs_usermount** %4, align 8
  %11 = call %struct.dtfs_mount* @puffs_getspecific(%struct.puffs_usermount* %10)
  store %struct.dtfs_mount* %11, %struct.dtfs_mount** %6, align 8
  %12 = load %struct.dtfs_mount*, %struct.dtfs_mount** %6, align 8
  %13 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %12, i32 0, i32 0
  store i32 3, i32* %13, align 8
  %14 = load %struct.dtfs_mount*, %struct.dtfs_mount** %6, align 8
  %15 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.dtfs_mount*, %struct.dtfs_mount** %6, align 8
  %17 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.dtfs_mount*, %struct.dtfs_mount** %6, align 8
  %19 = getelementptr inbounds %struct.dtfs_mount, %struct.dtfs_mount* %18, i32 0, i32 2
  %20 = call i32 @LIST_INIT(i32* %19)
  %21 = call %struct.dtfs_file* (...) @dtfs_newdir()
  store %struct.dtfs_file* %21, %struct.dtfs_file** %7, align 8
  %22 = load %struct.dtfs_file*, %struct.dtfs_file** %7, align 8
  %23 = getelementptr inbounds %struct.dtfs_file, %struct.dtfs_file* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.puffs_usermount*, %struct.puffs_usermount** %4, align 8
  %25 = load %struct.dtfs_file*, %struct.dtfs_file** %7, align 8
  %26 = call %struct.puffs_node* @puffs_pn_new(%struct.puffs_usermount* %24, %struct.dtfs_file* %25)
  store %struct.puffs_node* %26, %struct.puffs_node** %8, align 8
  %27 = load %struct.puffs_node*, %struct.puffs_node** %8, align 8
  %28 = icmp ne %struct.puffs_node* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %2
  %32 = load %struct.puffs_usermount*, %struct.puffs_usermount** %4, align 8
  %33 = load %struct.puffs_node*, %struct.puffs_node** %8, align 8
  %34 = call i32 @puffs_setroot(%struct.puffs_usermount* %32, %struct.puffs_node* %33)
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load %struct.puffs_usermount*, %struct.puffs_usermount** %4, align 8
  %39 = load i32, i32* @VDIR, align 4
  %40 = call i32 @rtnorm(%struct.puffs_usermount* %38, i32* null, i32 %39)
  br label %98

41:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %86, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @NTYPES, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %42
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtypes, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtypes, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strlen(i32 %59)
  %61 = call i64 @strncmp(i32 %52, i8* %53, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %46
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtypes, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64 (%struct.puffs_usermount*, i8*, i32)*, i64 (%struct.puffs_usermount*, i8*, i32)** %68, align 8
  %70 = load %struct.puffs_usermount*, %struct.puffs_usermount** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtypes, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 %69(%struct.puffs_usermount* %70, i8* %71, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %63
  %81 = load i32, i32* @stderr, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  store i32 1, i32* %3, align 4
  br label %99

84:                                               ; preds = %63
  br label %89

85:                                               ; preds = %46
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %42

89:                                               ; preds = %84, %42
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @NTYPES, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* @stderr, align 4
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @fprintf(i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  store i32 1, i32* %3, align 4
  br label %99

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %37
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %93, %80
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.dtfs_mount* @puffs_getspecific(%struct.puffs_usermount*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local %struct.dtfs_file* @dtfs_newdir(...) #1

declare dso_local %struct.puffs_node* @puffs_pn_new(%struct.puffs_usermount*, %struct.dtfs_file*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @puffs_setroot(%struct.puffs_usermount*, %struct.puffs_node*) #1

declare dso_local i32 @rtnorm(%struct.puffs_usermount*, i32*, i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
